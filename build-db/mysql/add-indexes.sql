-- ------------------------------------------------------
--  ADMISSIONDX
-- ------------------------------------------------------

ALTER TABLE `admissionDx` ADD INDEX (`patientunitstayid`);
ALTER TABLE `admissionDx` ADD PRIMARY KEY (`admissiondxid`);

-- ------------------------------------------------------
--  apacheApsVar
-- ------------------------------------------------------

ALTER TABLE `apacheApsVar` ADD PRIMARY KEY (`apacheapsvarid`);
ALTER TABLE `apacheApsVar` ADD INDEX (`patientunitstayid`);

-- ------------------------------------------------------
--  apachePatientResult
-- ------------------------------------------------------

ALTER TABLE apachePatientResult ADD INDEX (`patientunitstayid`);
ALTER TABLE apachePatientResult ADD INDEX (`apacheversion`);
ALTER TABLE apachePatientResult ADD INDEX (`apachescore`);
ALTER TABLE apachePatientResult ADD PRIMARY KEY (`apachepatientresultsid`);

-- ------------------------------------------------------
--  apachePredVar
-- ------------------------------------------------------

ALTER TABLE apachePredVar ADD INDEX (`patientunitstayid`);
ALTER TABLE apachePredVar ADD INDEX (`sicuday`);
ALTER TABLE apachePredVar ADD PRIMARY KEY (`apachepredvarid`);

-- ------------------------------------------------------
--  carePlanCareProvider
-- ------------------------------------------------------

ALTER TABLE carePlanCareProvider ADD INDEX (`patientunitstayid`);
ALTER TABLE carePlanCareProvider ADD PRIMARY KEY (`cplcareprovderid`);

-- ------------------------------------------------------
--  carePlanEOL
-- ------------------------------------------------------

ALTER TABLE carePlanEOL ADD INDEX (`patientunitstayid`);
ALTER TABLE carePlanEOL ADD PRIMARY KEY (`cpleolid`);

-- ------------------------------------------------------
--  carePlanGeneral
-- ------------------------------------------------------

ALTER TABLE carePlanGeneral ADD INDEX (`patientunitstayid`);
ALTER TABLE carePlanGeneral ADD PRIMARY KEY (`cplgeneralid`);

-- ------------------------------------------------------
--  carePlanGoal
-- ------------------------------------------------------

ALTER TABLE carePlanGoal ADD INDEX (`patientunitstayid`);
ALTER TABLE carePlanGoal ADD PRIMARY KEY (`cplgoalid`);

-- ------------------------------------------------------
--  CAREPLANINFECTIOUSDISEASE
-- ------------------------------------------------------

ALTER TABLE carePlanInfectiousDisease ADD INDEX (`patientunitstayid`);
ALTER TABLE carePlanInfectiousDisease ADD PRIMARY KEY (`cplinfectid`);

-- ------------------------------------------------------
--  diagnosis
-- ------------------------------------------------------

ALTER TABLE diagnosis ADD INDEX (`patientunitstayid`);
ALTER TABLE diagnosis ADD PRIMARY KEY (`diagnosisid`);

-- ------------------------------------------------------
--  hospital
-- ------------------------------------------------------

ALTER TABLE hospital ADD PRIMARY KEY (`hospitalid`);

-- ------------------------------------------------------
--  lab
-- ------------------------------------------------------

ALTER TABLE lab ADD INDEX (`patientunitstayid`);
ALTER TABLE lab ADD PRIMARY KEY (`labid`);

-- ------------------------------------------------------
--  pastHistory
-- ------------------------------------------------------

ALTER TABLE pastHistory ADD INDEX (`patientunitstayid`);
ALTER TABLE pastHistory ADD PRIMARY KEY (`pasthistoryid`);

-- ------------------------------------------------------
--  patient
-- ------------------------------------------------------

ALTER TABLE patient ADD INDEX (`patientunitstayid`);
ALTER TABLE patient ADD INDEX (`patienthealthsystemstayid`);
ALTER TABLE patient ADD INDEX (`hospitaldischargeyear`);
ALTER TABLE patient ADD INDEX (`unittype`);
ALTER TABLE patient ADD PRIMARY KEY (`patientunitstayid`);

-- ------------------------------------------------------
--  treatment
-- ------------------------------------------------------

ALTER TABLE treatment ADD INDEX (`patientunitstayid`);
ALTER TABLE treatment ADD PRIMARY KEY (`treatmentid`);

-- ------------------------------------------------------
--  vitalAperiodic
-- ------------------------------------------------------

ALTER TABLE vitalAperiodic ADD INDEX (`patientunitstayid`);
ALTER TABLE vitalAperiodic ADD PRIMARY KEY (`vitalaperiodicid`);

-- ------------------------------------------------------
--  vitalPeriodic
-- ------------------------------------------------------

ALTER TABLE vitalPeriodic ADD INDEX (`patientunitstayid`);
ALTER TABLE vitalPeriodic ADD PRIMARY KEY (`vitalperiodicid`);
