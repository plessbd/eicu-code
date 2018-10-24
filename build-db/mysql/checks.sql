SELECT
	expected.`tbl`,
	observed.`row_count` AS observed_count,
	expected.`row_count` AS expected_count,
	CASE
		WHEN expected.`row_count` = observed.`row_count`
			THEN 'PASSED'
			ELSE 'FAILED'
	END AS ROW_COUNT_CHECK
FROM (
	SELECT 'admissionDrug'                   AS tbl,    874920 AS row_count
	UNION	SELECT 'admissionDx'               AS tbl,    626858 AS row_count
	UNION	SELECT 'allergy'                   AS tbl,    251949 AS row_count
	UNION	SELECT 'apacheApsVar'              AS tbl,    171177 AS row_count
	UNION	SELECT 'apachePatientResult'       AS tbl,    297064 AS row_count
	UNION	SELECT 'apachePredVar'             AS tbl,    171177 AS row_count
	UNION	SELECT 'carePlanCareProvider'      AS tbl,    502765 AS row_count
	UNION	SELECT 'carePlanEOL'               AS tbl,      1433 AS row_count
	UNION	SELECT 'carePlanGeneral'           AS tbl,   3115018 AS row_count
	UNION	SELECT 'carePlanGoal'              AS tbl,    504139 AS row_count
	UNION	SELECT 'carePlanInfectiousDisease' AS tbl,      8056 AS row_count
	UNION	SELECT 'customLab'                 AS tbl,      1082 AS row_count
	UNION	SELECT 'diagnosis'                 AS tbl,   2710672 AS row_count
	UNION	SELECT 'hospital'                  AS tbl,       208 AS row_count
	UNION	SELECT 'infusionDrug'              AS tbl,   4803719 AS row_count
	UNION	SELECT 'intakeOutput'              AS tbl,  12030289 AS row_count
	UNION	SELECT 'lab'                       AS tbl,  39132531 AS row_count
	UNION	SELECT 'medication'                AS tbl,   7301853 AS row_count
	UNION	SELECT 'microLab'                  AS tbl,     16996 AS row_count
	UNION	SELECT 'note'                      AS tbl,   2254179 AS row_count
	UNION	SELECT 'nurseAssessment'           AS tbl,  15602498 AS row_count
	UNION	SELECT 'nurseCare'                 AS tbl,   8311132 AS row_count
	UNION	SELECT 'nurseCharting'             AS tbl, 151604232 AS row_count
	UNION	SELECT 'pAStHistory'               AS tbl,   1149180 AS row_count
	UNION	SELECT 'physicalExam'              AS tbl,   9212316 AS row_count
	UNION	SELECT 'respiratoryCare'           AS tbl,    865381 AS row_count
	UNION	SELECT 'respiratoryCharting'       AS tbl,  20168176 AS row_count
	UNION	SELECT 'patient'                   AS tbl,    200859 AS row_count
	UNION	SELECT 'treatment'                 AS tbl,   3688745 AS row_count
	UNION	SELECT 'vitalAperiodic'            AS tbl,  25075074 AS row_count
	UNION	SELECT 'vitalPeriodic'             AS tbl, 146671642 AS row_count
) AS expected
INNER JOIN (
	SELECT 'admissionDrug' AS `tbl`, COUNT(*) AS row_count FROM `admissionDrug`
	UNION	SELECT 'admissionDx' AS `tbl`, COUNT(*) AS row_count FROM `admissionDx`
	UNION	SELECT 'allergy' AS `tbl`, COUNT(*) AS row_count FROM `allergy`
	UNION	SELECT 'apacheApsVar' AS `tbl`, COUNT(*) AS row_count FROM `apacheApsVar`
	UNION	SELECT 'apachePatientResult' AS `tbl`, COUNT(*) AS row_count FROM `apachePatientResult`
	UNION	SELECT 'apachePredVar' AS `tbl`, COUNT(*) AS row_count FROM `apachePredVar`
	UNION	SELECT 'carePlanCareProvider' AS `tbl`, COUNT(*) AS row_count FROM `carePlanCareProvider`
	UNION	SELECT 'carePlanEOL' AS `tbl`, COUNT(*) AS row_count FROM `carePlanEOL`
	UNION	SELECT 'carePlanGeneral' AS `tbl`, COUNT(*) AS row_count FROM `carePlanGeneral`
	UNION	SELECT 'carePlanGoal' AS `tbl`, COUNT(*) AS row_count FROM `carePlanGoal`
	UNION	SELECT 'carePlanInfectiousDisease' AS `tbl`, COUNT(*) AS row_count FROM `carePlanInfectiousDisease`
	UNION	SELECT 'customLab' AS `tbl`, COUNT(*) AS row_count FROM `customLab`
	UNION	SELECT 'diagnosis' AS `tbl`, COUNT(*) AS row_count FROM `diagnosis`
	UNION	SELECT 'hospital' AS `tbl`, COUNT(*) AS row_count FROM `hospital`
	UNION	SELECT 'infusionDrug' AS `tbl`, COUNT(*) AS row_count FROM `infusionDrug`
	UNION	SELECT 'intakeOutput' AS `tbl`, COUNT(*) AS row_count FROM `intakeOutput`
	UNION	SELECT 'lab' AS `tbl`, COUNT(*) AS row_count FROM `lab`
	UNION	SELECT 'medication' AS `tbl`, COUNT(*) AS row_count FROM `medication`
	UNION	SELECT 'microLab' AS `tbl`, COUNT(*) AS row_count FROM `microLab`
	UNION	SELECT 'note' AS `tbl`, COUNT(*) AS row_count FROM `note`
	UNION	SELECT 'nurseAssessment' AS `tbl`, COUNT(*) AS row_count FROM `nurseAssessment`
	UNION	SELECT 'nurseCare' AS `tbl`, COUNT(*) AS row_count FROM `nurseCare`
	UNION	SELECT 'nurseCharting' AS `tbl`, COUNT(*) AS row_count FROM `nurseCharting`
	UNION	SELECT 'pastHistory' AS `tbl`, COUNT(*) AS row_count FROM `pastHistory`
	UNION	SELECT 'patient' AS `tbl`, COUNT(*) AS row_count FROM `patient`
	UNION	SELECT 'physicalExam' AS `tbl`, COUNT(*) AS row_count FROM `physicalExam`
	UNION	SELECT 'respiratoryCare' AS `tbl`, COUNT(*) AS row_count FROM `respiratoryCare`
	UNION	SELECT 'respiratoryCharting' AS `tbl`, COUNT(*) AS row_count FROM `respiratoryCharting`
	UNION	SELECT 'treatment' AS `tbl`, COUNT(*) AS row_count FROM `treatment`
	UNION	SELECT 'vitalAperiodic' AS `tbl`, COUNT(*) AS row_count FROM `vitalAperiodic`
	UNION	SELECT 'vitalPeriodic' AS `tbl`, COUNT(*) AS row_count FROM `vitalPeriodic`
) AS observed ON expected.tbl = observed.tbl
