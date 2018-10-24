-- ------------------------------------------------------
--  DDL for Table admissionDx
-- ------------------------------------------------------


ALTER TABLE `admissionDx` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table apacheApsVar
-- ------------------------------------------------------

ALTER TABLE `apacheApsVar` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table apachePatientResult
-- ------------------------------------------------------

ALTER TABLE `apachePatientResult` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table apachePredVar
-- ------------------------------------------------------

ALTER TABLE `apachePredVar` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table carePlanCareProvider
-- ------------------------------------------------------

ALTER TABLE `carePlanCareProvider` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table carePlanEOL
-- ------------------------------------------------------

ALTER TABLE `carePlanEOL` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table carePlanGeneral
-- ------------------------------------------------------

ALTER TABLE `carePlanGeneral` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table carePlanGoal
-- ------------------------------------------------------


ALTER TABLE `carePlanGoal` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table carePlanInfectiousDisease
-- ------------------------------------------------------
ALTER TABLE `carePlanInfectiousDisease` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table diagnosis
-- ------------------------------------------------------

ALTER TABLE `diagnosis` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table lab
-- ------------------------------------------------------

ALTER TABLE `lab` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table pastHistory
-- ------------------------------------------------------

ALTER TABLE `pastHistory` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table patient
-- ------------------------------------------------------

ALTER TABLE `patient` ADD FOREIGN KEY (`hospitalid`) REFERENCES `hospital` (`hospitalid`);

-- ------------------------------------------------------
--  DDL for Table treatment
-- ------------------------------------------------------

ALTER TABLE `treatment` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table vitalAperiodic
-- ------------------------------------------------------

ALTER TABLE `vitalAperiodic` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);

-- ------------------------------------------------------
--  DDL for Table vitalPeriodic
-- ------------------------------------------------------

ALTER TABLE `vitalPeriodic` ADD FOREIGN KEY (`patientunitstayid`) REFERENCES `patient` (`patientunitstayid`);
