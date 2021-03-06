# Evaluation of the Ontological Engineering Approach to Gamify Collaborative Learning Scenarios


## Empirical Studies

* [pilot empirical study](pilot-study/)
* [first empirical study](study01/)
* [second empirical study](study02/)
* [third empirical study](study03/)

## Scripts in this folder - path: [/](https://github.com/geiser/phd-thesis-evaluation/)

For the validation of the IMI and IMMS questionnaires, the R scripts should be executed as follows:

### R script to extract information from the Moodle platform ([00-processing-mysql.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/00-processing-mysql.R))

R script to extract information from the MySQL database of the Moodle platform. 

The results obtained by the execution of this R script are:

* List of all students as participants in the pilot empirical study (lines 15-70)<br/>
  _File_: [SignedUpParticipants.csv](pilot-study/data/SignedUpParticipants.csv) ([more info ...](pilot-study/data/))
* List of students with effective participation in the pilot empirical study (lines 72-80)<br/>
  _File_: [EffectiveParticipants.csv](pilot-study/data/EffectiveParticipants.csv) ([more info ...](pilot-study/data/))
* Experiment design for the pilot empirical study (lines 81-114)<br/>
  _File_: [pilot_design.csv](report/pilot_design.csv) ([more info ...](report/))
* Information from the IMI questionnaire - pilot empirical study (lines 120-205)<br/>
  _File_ (legend): [SourceIMILegend.csv](pilot-study/data/SourceIMILegend.csv) ([more info ...](pilot-study/data/))<br/>
  _File_ (responses): [SourceIMIWithCareless.csv](pilot-study/data/SourceIMIWithCareless.csv) ([more info ...](pilot-study/data/))
* List of all students as participants in the first empirical study (lines 210-272)<br/>
  _File_: [SignedUpParticipants.csv](study01/data/SignedUpParticipants.csv) ([more info ...](study01/data/))
* List of all students as participants in the second empirical study (lines 273-325)<br/>
  _File_: [SignedUpParticipants.csv](study02/data/SignedUpParticipants.csv) ([more info ...](study02/data/))
* List of all students as participants in the third empirical study (lines 326-395)<br/>
  _File_: [SignedUpParticipants.csv](study03/data/SignedUpParticipants.csv) ([more info ...](study03/data/))
* List of students with effective participation in the full-scale empirical studies (400-425)<br/>
  _File_ (first empirical study): [EffectiveParticipants.csv](study01/data/EffectiveParticipants.csv) ([more info ...](study01/data/))<br/>
  _File_ (second empirical sudy): [EffectiveParticipants.csv](study02/data/EffectiveParticipants.csv) ([more info ...](study02/data/))<br/>
  _File_ (third empirical study): [EffectiveParticipants.csv](study03/data/EffectiveParticipants.csv) ([more info ...](study03/data/))
* Experiment designs for the full-scale empirical studies (lines 427-508)<br/>
  _File_: [exp_design.csv](report/exp_design.csv) ([more info ...](report/))
* Information from the IMI and IMMS questionnaires - third empirical study (lines 510-620)<br/>
  _File_ (legend): [SourceMotLegend.csv](study03/data/SourceMotLegend.csv) ([more info...](study03/data/))<br/>
  _File_ (responses from the IMI questionnaire): [SourceIMIWithCareless.csv](study03/data/SourceIMIWithCareless.csv) ([more info ...](study03/data/))<br/>
  _File_ (responses from the IMMS questionnaire): [SourceIMMSWithCareless.csv](study03/data/SourceIMMSWithCareless.csv) ([more info ...](study03/data/))


### R script to extract information from AMC questionnaires ([00-processing-amc.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/00-processing-amc.R)).

R script to extract information from responses of AMC (Auto-Multiple-Choice) questionnaires. Such questionnaires were built to measure the skill/knowledge of students throughout the empirical studies, and they were built using the AMC software - [https://www.auto-multiple-choice.net](https://www.auto-multiple-choice.net).

The results obtained by the execution of this R script are:

* Data with responses from the AMC questionnaire of conditional structures *p1a*. Responses obtained throughout the *pretest* phase of the *first* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PreAMC.csv](study01/data/PreAMC.csv) ([more info ...](study01/data))
* Data with responses from the AMC questionnaire of conditional structures *p1b*. Responses obtained throughout the *posttest* phase of the *first* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PosAMC.csv](study01/data/PosAMC.csv) ([more info ...](study01/data))]
* Data with responses from the AMC questionnaire of conditional structures *p2a*. Responses obtained throughout the *pretest* phase of the *first* empirical study and scored using the *teacher's rule*.<br/>
  _File_: [PreAMCscr.csv](study01/data/PreAMCscr.csv) ([more info ...](study01/data))
* Data with responses from the AMC questionnaire of conditional structures *p2b*. Responses obtained throughout the *posttest* phase of the *first* empirical study and scored using the *teacher's rule*.<br/>
  _File_: [PosAMCscr.csv](study01/data/PosAMCscr.csv) ([more info ...](study01/data))
* Data with responses from the AMC questionnaire of loop structures *p2a*. Responses obtained throughout the *pretest* phase of thr *second* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PreAMC.csv](study02/data/PreAMC.csv) ([more info ...](study02/data))
* Data with responses from the AMC questionnaire of loop structures *p2b*. Responses obtained throughout the *posttest* phase of the *second* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PosAMC.csv](study02/data/PosAMC.csv) ([more info ...](study02/data))
* Data with responses from the AMC questionnaire of loop structures *p2a*. Responses obtained throughout the *pretest* phase of the *second* empirical study and and scored using the *teacher's rule*.<br/>
  _File_: [PreAMCscr.csv](study02/data/PreAMCscr.csv) ([more info ...](study02/data))
* Data with responses from the AMC questionnaire of loop structures *p2b*. Responses obtained throughout the *posttest* phase of the *second* empirical study and scored using the *teacher's rule*.<br/>
  _File_: [PosAMCscr.csv](study02/data/PosAMCscr.csv) ([more info ...](study02/data))
* Data with responses from the AMC questionnaire of recursion *p3a*. Responses obtained throughout the *pretest* phase of the *third* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PreAMC.csv](study03/data/PreAMC.csv) ([more info ...](study03/data))
* Data with responses from the AMC questionnaire of recursion *p3c*. Responses obtained throughout the *posttest* phase of the *third* empirical study and scored using the *GPCM-based rule*.<br/>
  _File_: [PosAMC.csv](study03/data/PosAMC.csv) ([more info ...](study03/data))
* Data with responses from the AMC questionnaire of recursion *p3a*. Responses obtained throughout the *pretest* phase of the *third* empirical study and scored using the *teacher's rule*.<br/>
  _File_: [PreAMCscr.csv](study03/data/PreAMCscr.csv) ([more info ...](study03/data))
* Data with responses from the AMC questionnaire of recursion *p3c*. Responses obtained throughout the *posttest* phase of the *third* empirical study and scored using the *teacher's rule*.<br/>
  _File_: [PosAMCscr.csv](study03/data/PosAMCscr.csv) ([more info ...](study03/data))


### R script to extract information related to the VPL Moodle plugin ([00-processing-vpl.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/00-processing-vpl.R))

R script to extract information related to the adapted version of VPL (Virtual-Programming-Lab) Moodle plugin. This adapted VPL Moodle plugin with code recording log can be download from: [https://github.com/geiser/moodle-mod_vpl](https://github.com/geiser/moodle-mod_vpl/).

The results obtained by the execution of this R script are: 

* Information of the programming problem tasks solved throughout the *pretest* phase of the *pilot* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PreGuttmanVPL.csv](pilot-study/data/PreGuttmanVPL.csv) ([more info ...](pilot-study/data))
* Information of the programming problem tasks solved throughout the *posttest* phase of the *pilot* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PosGuttmanVPL.csv](pilot-study/data/PosGuttmanVPL.csv) ([more info ...](pilot-study/data))
* Information of the programming problem tasks solved throughout the *pretest* phase of the *first* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PreGuttmanVPL.csv](study01/data/PreGuttmanVPL.csv) ([more info ...](study01/data))
* Information of the programming problem tasks solved throughout the *pretest* phase of the *first* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PosGuttmanVPL.csv](study01/data/PosGuttmanVPL.csv) ([more info ...](study01/data))
* Information of the programming problem tasks solved throughout the *pretest* phase of the *second* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PreGuttmanVPL.csv](study02/data/PreGuttmanVPL.csv) ([more info ...](study02/data))
* Information of the programming problem tasks solved throughout the *pretest* phase of the *second* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PosGuttmanVPL.csv](study02/data/PosGuttmanVPL.csv) ([more info ...](study02/data))
* Information of the programming problem tasks solved throughout the *pretest* phase of the *third* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PreGuttmanVPL.csv](study03/data/PreGuttmanVPL.csv) ([more info ...](study03/data))
* Information of the programming problem tasks obtained throughout the *pretest* phase of the *third* empirical study, and scored with *Guttman-based rules*.<br/>
  _File_: [PosGuttmanVPL.csv](study03/data/PosGuttmanVPL.csv) ([more info ...](study03/data))


### R script to remove careless responses ([01-removing-careless-motivation.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/01-removing-careless-motivation.R))

R script to remove careless responses on the data gathered by the IMI and IMMS questionnaires. A careless response is defined as a response in which the length of uninterrupted identical values for the items is greater than half of the items in the questionnaire.

The results obtained by the execution of this R script are:

* Careless responses identified on the data gathered throughout the *pilot* empirical study and using the IMI questionnaire.<br/>
  _File_: [careless-IMI-pilot-study.pdf](report/latex/careless-IMI-pilot-study.pdf) ([more info ...](pilot-study/data))
* Responses of the IMI questionnaire with data gathered throughout the *pilot* empirical study and without careless responses.<br/>
  _File_: [SourceIMI.csv](pilot-study/data/SourceIMI.csv) ([more info ...](pilot-study/data))
* Careless responses identified on the data gathered throughout the *first* empirical study and using the IMI questionnaire.<br/>
  _File_: [careless-IMI-study01.pdf](report/latex/careless-IMI-study01.pdf) ([more info ...](pilot-study/data))
* Responses of the IMI questionnaire with data gathered throughout the *first* empirical study and without careless responses.<br/>
  _File_: [SourceIMI.csv](study01/data/SourceIMI.csv) ([more info ...](study01/data))
* Careless responses identified on the data gathered throughout the *second* empirical study and using the IMMS questionnaire.<br/>
  _File_: [careless-IMMS-study02.pdf](report/latex/careless-IMMS-study02.pdf) ([more info ...](study02/data))
* Responses of the IMMS questionnaire with data gathered throughout the *second* empirical study and without careless responses.<br/>
  _File_: [SourceIMMS.csv](study02/data/SourceIMMS.csv) ([more info ...](study02/data))
* Careless responses identified on the data gathered throughout the *third* empirical study and using the IMI questionnaire.<br/>
  _File_: [careless-IMI-study03.pdf](report/latex/careless-IMI-study03.pdf) ([more info ...](study03/data))
* Responses of the IMI questionnaire with data gathered throughout the *third* empirical study and without careless responses.<br/>
  _File_: [SourceIMI.csv](study03/data/SourceIMI.csv) ([more info ...](study03/data))
* Careless responses identified on the data gathered throughout the *third* empirical study and using the IMMS questionnaire.<br/>
  _File_: [careless-IMMS-study03.pdf](report/latex/careless-IMMS-study03.pdf) ([more info ...](study03/data))
* Responses of the IMMS questionnaire with data gathered throughout the *third* empirical study and without careless responses.<br/>
  _File_: [SourceIMMS.csv](study03/data/SourceIMMS.csv) ([more info ...](study03/data))


### R script to winsorize extreme responses ([02-winsorizing-extreme-motivation.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/02-winsorizing-extreme-motivation.R))

R script to winsorize extreme responses from the data gathered through the IMI and IMMS questionnaires. Extreme responses correspond to answers given by participants who have tendency to indicate extreme lower and upper values in questionnaires. Such responses are outliers that affect the assumptions for parametric tests, but that can't simply removed to satisfy these assumptions. To reduce the impact of extreme values, they should be shrunk to the border of the main part of the data through the winsorization method.

The results obtained by the execution of this R script are: 

* Extreme responses identified on the IMI questionnaire.<br/>
  _File_: [winsorized-IMI.pdf](report/latex/winsorized-IMI.pdf) ([more info ...](report/latex))
* Extreme responses identified on the IMMS questionnaire.<br/>
  _File_: [winsorized-IMMS.pdf](report/latex/winsorized-IMMS.pdf) ([more info ...](report/latex))
* Data with winsorized responses to validate the IMI questionnaire.<br/>
  _File_: [WinsorizedIMI.csv](data/WinsorizedIMI.csv) ([more info ...](data))
* Data with winsorized responses to validate the IMMS questionnaire.<br/>
  _File_: [WinsorizedIMMS.csv](data/WinsorizedIMMS.csv) ([more info ...](data))


### R script to validate the IMI questionnaire ([03-validating-IMI.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/03-validating-IMI.R))

R script to validate the adapted Portuguese IMI questionnaire through the exploratory/confirmatory factorial analysis and the reliability test.

The results obtained by the execution of this R script are:

* Validation of univariate distribution for each items.<br/>
  _File_: [univariate-histogram.png](report/validation-IMI/univariate-histogram.png) ([more info ...](report/validation-IMI))
* Goodness of fit statistics for the factorial analysis on the responses of IMI questionnaire.<br/>
  _File_: [cfa-model-fit.pdf](report/validation-IMI/cfa-model-fit.pdf)  ([more info ...](report/validation-IMI))
* Summary of the factorial analysis and reliability test.<br/>
  _File_: [reliability-analysis.pdf](report/validation-IMI/reliability-analysis.pdf) ([more info ...](report/validation-IMI))
* Report for the measure sampling adequacy, factorial analysis, and reliability test.<br/>
  _File_: [RelAnalysis.xlsx](report/validation-IMI/RelAnalysis.xlsx) ([more info ...](report/validation-IMI))
* Data with the responses of the validated IMI questionnaire.<br/>
  _File_: [IMI.csv](data/IMI.csv) ([more info ...](data))


### R script to validate the IMMS questionnaire ([03-validating-IMMS.R](https://github.com/geiser/phd-thesis-evaluation/blob/master/03-validating-IMMS.R))

R script to validate the adapted Portuguese IMMS questionnaire through the exploratory/confirmatory factorial analysis and the reliability test.

The results obtained by the execution of this R script are:

* Validation of univariate distribution for each items.<br/>
  _File_: [univariate-histogram.png](report/validation-IMMS/univariate-histogram.png) ([more info ...](report/validation-IMMS))
* Goodness of fit statistics for the factorial analysis on the responses of IMI questionnaire.<br/>
  _File_: [cfa-model-fit.pdf](report/validation-IMMS/cfa-model-fit.pdf)  ([more info ...](report/validation-IMMS))
* Summary of the factorial analysis and reliability test.<br/>
  _File_: [reliability-analysis.pdf](report/validation-IMMS/reliability-analysis.pdf) ([more info ...](report/validation-IMMS))
* Report for the measure sampling adequacy, factorial analysis, and reliability test.<br/>
  _File_: [RelAnalysis.xlsx](report/validation-IMMS/RelAnalysis.xlsx) ([more info ...](report/validation-IMMS))
* Data with the responses of the validated IMMS questionnaire.<br/>
  _File_: [IMMS.csv](data/IMMS.csv) ([more info ...](data))


## Install & Run the R Scripts

Requirements:
- Docker (>= 18.06.0)
- Docker Compose (>= 1.22.0)

Procedure to install requirements in Ubuntu 18.04:
```
sudo apt-get purge docker docker-engine docker.io docker-ce
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable" 
sudo apt-get update
sudo apt-get install docker-ce
```

Procedure to update docker compose in Ubuntu 18.04
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```
The output will look something like this: ```docker-compose version 1.23.1, build b02f1306```


Setup the docker as service and run it at startup
```
sudo systemctl start docker
sudo systemctl enable docker
```

1. Download source code:
```
git clone https://github.com/geiser/phd-thesis-evaluation.git
```

3. Configure and build imagens to run the project as container
```
cd phd-thesis-evaluation
./configure
make
```

  * Use `make shell` to run the `/bins/bash` on the container `geiser/r-studio:latest` 
  * Use `make run` to run the r-studio and execute the scripts through the http://127.0.0.1:8787/
  * Use `make help` to view more options

