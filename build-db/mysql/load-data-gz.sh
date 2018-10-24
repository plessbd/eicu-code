#!/bin/bash
#-------------------------------------------------------------------------------
#Load data from compressed files into the schema
#-------------------------------------------------------------------------------
SCHEMA='eicu'
#------------------------------------------------------
# Load Data for Table admissionDrug
#------------------------------------------------------

zcat -f admissionDrug.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE admissionDrug FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table admissionDx
#------------------------------------------------------

zcat -f admissionDx.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE admissionDx FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table ALLERGY
#------------------------------------------------------

zcat -f allergy.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE allergy FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table APACHEAPSVAR
#------------------------------------------------------

zcat -f apacheApsVar.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE apacheApsVar FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table apachePatientResult
#------------------------------------------------------

zcat -f apachePatientResult.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE apachePatientResult FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table apachePredVar
#------------------------------------------------------

zcat -f apachePredVar.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE apachePredVar FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table carePlanCareProvider
#------------------------------------------------------

zcat -f carePlanCareProvider.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE carePlanCareProvider FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table carePlanEOL
#------------------------------------------------------

zcat -f carePlanEOL.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE carePlanEOL FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table carePlanGeneral
#------------------------------------------------------

zcat -f carePlanGeneral.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE carePlanGeneral FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table carePlanGoal
#------------------------------------------------------

zcat -f carePlanGoal.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE carePlanGoal FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table carePlanInfectiousDisease
#------------------------------------------------------

zcat -f carePlanInfectiousDisease.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE carePlanInfectiousDisease FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table customLab
#------------------------------------------------------

zcat -f customLab.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE customLab FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table DIAGNOSIS
#------------------------------------------------------

zcat -f diagnosis.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE diagnosis FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table hospital
#------------------------------------------------------

zcat -f hospital.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE hospital FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table infusionDrug
#------------------------------------------------------

zcat -f infusionDrug.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE infusionDrug FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table intakeOutput
#------------------------------------------------------

zcat -f intakeOutput.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE intakeOutput FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table lab
#------------------------------------------------------

zcat -f lab.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE lab FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table medication
#------------------------------------------------------

zcat -f medication.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE medication FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table microLab
#------------------------------------------------------

zcat -f microLab.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE microLab FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table note
#------------------------------------------------------

zcat -f note.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE note FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table nurseAssessment
#------------------------------------------------------

zcat -f nurseAssessment.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE nurseAssessment FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table nurseCare
#------------------------------------------------------

zcat -f nurseCare.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE nurseCare FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table nurseCharting
#------------------------------------------------------

zcat -f nurseCharting.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE nurseCharting FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"' ESCAPED BY '\b' LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table pastHistory
#------------------------------------------------------

zcat -f pastHistory.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE pastHistory FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table patient
#------------------------------------------------------

zcat -f patient.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE patient FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table physicalExam
#------------------------------------------------------

zcat -f physicalExam.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE physicalExam FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table respiratoryCare
#------------------------------------------------------

zcat -f respiratoryCare.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE respiratoryCare FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table respiratoryCharting
#------------------------------------------------------

zcat -f respiratoryCharting.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE respiratoryCharting FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table treatment
#------------------------------------------------------

zcat -f treatment.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE treatment FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table vitalAperiodic
#------------------------------------------------------

zcat -f vitalAperiodic.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE vitalAperiodic FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"

#------------------------------------------------------
# Load Data for Table vitalPeriodic
#------------------------------------------------------

zcat -f vitalPeriodic.csv.gz | mysql --local-infile=1 $SCHEMA -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE vitalPeriodic FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'  LINES TERMINATED BY '\n' IGNORE 1 LINES;"
