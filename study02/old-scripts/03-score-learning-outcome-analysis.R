
library(readr)
library(dplyr)

participants <- read_csv('data/EffectiveParticipants.csv')
pre_dat <- as.data.frame(read_csv("data/SimplifiedPreTest.csv"))
pos_dat <- as.data.frame(read_csv("data/SimplifiedPosTest.csv"))

pre_dat <- merge(participants, pre_dat)
pos_dat <- merge(participants, pos_dat)

dat <- merge(pre_dat, pos_dat)
dat <- dplyr::mutate(
  dat
  , `PreScore`  = dat$Re1+dat$Un3+dat$Ap2a+dat$Ap2b+dat$An3a+dat$An3b+dat$Ev2
  , `PostScore` = dat$ReA+dat$UnC+dat$ApB1+dat$ApB2+dat$AnC1+dat$AnC2+dat$EvB
)
rownames(dat) <- dat$UserID
dat <- dplyr::mutate(dat, `Gain Score` = dat$PostScore-dat$PreScore)

info <- list(
  "Gain Score" = list(
    path = "report/learning-outcome/"
    , dv = "Gain Score", extra_rmids = c(10198,10187,10214)
  )
)

#############################################################################
## Non-Parametric Statistic Analysis                                       ##
#############################################################################
nonparametric_results <- lapply(info, FUN = function(x) {
  cat("\n .... processing: ", x$dv, " ....\n")
  path <- paste0(x$path, 'score-nonparametric-analysis-plots/')
  filename <- paste0(x$path, 'ScoreNonParametricAnalysis.xlsx')
  result <- do_nonparametric_test(dat, dv = x$dv, iv = 'Type', between = c('Type', 'CLRole'))
  
  write_plots_for_nonparametric_test(
    result, ylab = "Gain Score", title = "Improv of Prog Skill in Loops"
    , path = path, override = T
    , ylim = NULL, levels = c('non-gamified','ont-gamified')
  )
  write_nonparametric_test_report(
    result, ylab = "Gain Score", title = "Improv of Prog Skill in Loops"
    , filename = filename, override = F
    , ylim = NULL, levels = c('non-gamified','ont-gamified')
  )
  return(result)
})

#############################################################################
## Parametric Statistic Analysis                                           ##
#############################################################################

# remove outliers
dat_map <- lapply(info, FUN = function(x) {
  rmids <- get_ids_outliers(
    dat, 'UserID', x$dv, iv = 'Type', between = c('Type', 'CLRole'))
  if (!is.null(x$extra_rmids) && length(x$extra_rmids) > 0) {
    rmids <- unique(c(rmids, x$extra_rmids))
  }
  cat('\n...removing ids: ', rmids,' from: ', x$dv, ' ...\n')
  
  return(dat[!dat[['UserID']] %in% rmids,])
})

# tdat <- dat_map[[x$dv]]
# tdat <- tdat[tdat$Type == 'ont-gamified' & tdat$CLRole == 'Apprentice',]
# tdat$UserID[tdat[[x$dv]] %in% c(boxplot(tdat[[x$dv]])$out)]

# validate assumptions
lapply(info, FUN = function(x) {
  
  result <- do_parametric_test(
    dat = dat_map[[x$dv]], wid = 'UserID', dv = x$dv, iv = 'Type'
    , between = c('Type', 'CLRole'), observed = c('CLRole'))
  
  if (result$min.sample.size.fail) {
    cat('\n... minimun sample size is not satisfied for the group: ', x$dv, '\n')
  }
  if (result$assumptions.fail) {
    cat('\n... assumptions fail in normality or equality for the group: ', x$dv, '\n')
    print(result$test.min.size$error.warning.list)
    if (result$normality.fail) cat('\n... normality fail ...\n')
    if (result$homogeneity.fail) cat('\n... homogeneity fail ...\n')
    plot_assumptions_for_parametric_test(result, x$dv)
  }
})

# writing plots and reports
parametric_results <- lapply(info, FUN = function(x) {
  cat("\n .... processing: ", x$dv, " ....\n")
  path <- paste0(x$path, 'score-parametric-analysis-plots/')
  filename <- paste0(x$path, 'ScoreParametricAnalysis.xlsx')
  
  result <- do_parametric_test(
    dat = dat_map[[x$dv]], wid = 'UserID', dv = x$dv, iv = 'Type'
    , between = c('Type', 'CLRole'), observed = c('CLRole'))
  
  write_plots_for_parametric_test(
    result, ylab = "Gain Score", title = "Improv of Prog Skill in Loops"
    , path = path, override = T
    , ylim = NULL, levels = c('non-gamified','ont-gamified')
  )
  write_parametric_test_report(
    result, ylab = "Gain Score", title = "Improv of Prog Skill in Loops"
    , filename = filename, override = F
    , ylim = NULL, levels = c('non-gamified','ont-gamified')
  )
  return(result)
})

## translate to latex 
write_param_and_nonparam_statistics_analysis_in_latex(
  parametric_results, nonparametric_results, names(info)
  , filename = "report/latex/score-learning-outcome-analysis.tex"
  , in_title = paste0(" for the improvement (gain) scores from the pre-test"
                      ," to post-test obtained by the students in the empirical study 02")
)
