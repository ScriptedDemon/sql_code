
START TRANSACTION;
DROP database if EXISTS new_db;
CREATE database new_db;
use new_db;
DROP TABLE IF EXISTS `Appendix C - P1`;
CREATE TABLE IF NOT EXISTS `Appendix C - P1` (
	`hs_id`	LONGTEXT,
	`hazardous_situation`	LONGTEXT,
	`selected_p1_rationale`	LONGTEXT,
	`p1_predicted_by_subject_matter_expertise` REAL,
	`p1`	INTEGER,
	`data_summary_derived_p1`	REAL,
	`ucl`	REAL,
	`ucl_value_for_each_plants`	REAL
);

DROP TABLE IF EXISTS `appendix_b_p2_conversion`;
CREATE TABLE IF NOT EXISTS `appendix_b_p2_conversion`(
	`hazardous_situation_id`	LONGTEXT,
	`critical_qualitative`	LONGTEXT,
	`moderate_qualitative`	LONGTEXT,
	`minor_qualitative`	LONGTEXT,
	`critical_semi_quantitative`	REAL,
	`moderate_semi_quantitative`	REAL,
	`minor_semi_quantitative`	REAL,
	`propability_of_hazardous_situation_(p1)`	REAL,
	`critical`	REAL,
	`moderate`	REAL,
	`minor`	REAL,
	`critical.1`	LONGTEXT,
	`moderate.1`	LONGTEXT,
	`minor.1`	LONGTEXT
);
DROP TABLE IF EXISTS `HSHA-PARENTERAL-INFUSION`;
CREATE TABLE IF NOT EXISTS `HSHA-PARENTERAL-INFUSION` (
	`new_hsnumber`	LONGTEXT,
	`hazard`	LONGTEXT,
	`hazardous_situation`	LONGTEXT,
	`harm`	LONGTEXT,
	`core_infusion_/_large_volume_pump`	LONGTEXT,
	`syringe_pump`	LONGTEXT,
	`pain_pumps`	LONGTEXT,
	`therapeutic_drug`	LONGTEXT,
	`compounding`	LONGTEXT,
	`parenteral_nutrition`	LONGTEXT,
	`critical`	LONGTEXT,
	`moderate`	LONGTEXT,
	`minor`	LONGTEXT,
	`criticality_ranking`	INTEGER
);
-- DROP TABLE IF EXISTS `Appendix A - Global Ract`;
/* CREATE TABLE IF NOT EXISTS `Appendix A - Global Ract` (
	`ract_number`	LONGTEXT,
	`hazardous_situation_id`	LONGTEXT,
	`hazard_(potential_source_of_harm)`	LONGTEXT,
	`hazardous_situation`	LONGTEXT,
	`harm`	LONGTEXT,
	`inherent_probability_of_critical_harm`	LONGTEXT,
	`inherent_probability_of_moderate_harm`	LONGTEXT,
	`inherent_probability_of_minor_harmn`	LONGTEXT,
	`foreseeable_sequence_of_events`	LONGTEXT,
	`risk_reduction`	LONGTEXT,
	`demonstration_of_effectiveness`	LONGTEXT,
	`residual_probability_of_hazardous_situation_(p1)`	INTEGER,
	`residual_probability_of_critical_harm_(pharm)`	LONGTEXT,
	`residual_probability_of_moderate_harm_(pharm)`	LONGTEXT,
	`residual_probability_of_minor_harm_(pharm)`	LONGTEXT,
	`unnamed:_15`	REAL,
	`unnamed:_16`	REAL,
	`unnamed:_17`	REAL,
	`unnamed:_18`	REAL,
	`unnamed:_19`	REAL,
	`unnamed:_20`	REAL,
	`unnamed:_21`	REAL,
	`unnamed:_22`	REAL,
	`unnamed:_23`	REAL,
	`unnamed:_24`	REAL,
	`unnamed:_25`	REAL,
	`unnamed:_26`	REAL,
	`unnamed:_27`	REAL,
	`unnamed:_28`	REAL,
	`unnamed:_29`	REAL,
	`unnamed:_30`	REAL,
	`column1`	REAL
);*/
INSERT INTO `Appendix C - P1` (`hs_id`,`hazardous_situation`,`selected_p1_rationale`,`p1_predicted_by_subject_matter_expertise`,`p1`,`data_summary_derived_p1`,`ucl`,`ucl_value_for_each_plants`) 
VALUES ('HS.PIT.1.4','Air or gas is administered to the patient (> 4nL to <= 1 mL)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.1.5','Air or gas is administered to the patient (> 1 mL to <= 10 mL)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.1.6','Air or gas is administered to the patient (> 10 mL to <= 50 mL)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.1.7','Air or gas is administered to the patient (> 50 mL)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.10.1','Patient receives more therapy than intended (variance of > 5% to <= 10%)',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.10.2','Patient receives more therapy than intended (variance of > 10% to <= 20%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.10.3','Patient receives more therapy than intended (variance of > 20% to <= 100%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.11.1','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (organic or degradants)',NULL,NULL,3,3.0,2.0,NULL),
 ('HS.PIT.11.10','Patient is exposed to residual solvents or process materials not defined by current guidances at levels exceeding toxicological qualification or clinical safety',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.3','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 1)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.4','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 2)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.5','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 3)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.6','Patient is exposed to impurities that are not defined or are defined as "other" by current guidances',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.7','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 1)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.8','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 2)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.11.9','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 3)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.13.1','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 5% to <= 10%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.13.2','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 10% to <= 20%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.13.3','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 20% to <= 100%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.13.4','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 100%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.13.5','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 5% to <= 10%)',NULL,NULL,2,1.0,2.0,NULL),
 ('HS.PIT.13.6','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 10% to <= 20%)',NULL,NULL,2,1.0,2.0,NULL),
 ('HS.PIT.13.7','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 20% to <= 100%)',NULL,NULL,2,1.0,2.0,NULL),
 ('HS.PIT.14.1','Patient is exposed to an incorrect or unintended product',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.15.1','Patient is exposed to a product via an incorrect route of administration',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.16.1','Patient receives less therapy than intended (variance of > 5% to <= 10%)',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.16.2','Patient receives less therapy than intended (variance of > 10% to <= 20%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.16.3','Patient receives less therapy than intended (variance of > 20% to <= 100%)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.18.1','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.18.2','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.18.3','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.18.4','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.18.5','Patient experiences an interruption of therapy (> 12 hours)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.19.1','Patient is exposed to leachables at levels exceeding toxicological qualification or clinical safety',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.2.1','End user is exposed to allergens',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.20.3','Patient''s tissue is exposed to excessive tension or compression during therapy',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.21.3','Patient is exposed to microbial contamination from a wet product contaminated at the point of or during administration or a dry product contaminated at any point',NULL,NULL,2,2.0,2.0,NULL),
 ('HS.PIT.21.4','Patient is exposed to microbial contamination from a product contaminated at the point of compounding or admixing, prior to the point of administration',NULL,NULL,2,2.0,NULL,NULL),
 ('HS.PIT.21.5','Patient is exposed to microbial contamination from a wet product contaminated prior to the point of use or from reuse of a previously dry product',NULL,NULL,2,2.0,NULL,NULL),
 ('HS.PIT.22.1','Patient is exposed to hyper-osmolar product',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.22.2','Patient is exposed to hypo-osmolar product',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.23.1','Patient is exposed to sub-visible particulate matter at levels exceeding specifications',NULL,NULL,2,2.0,NULL,NULL),
 ('HS.PIT.23.2','Patient is exposed to visible particulate matter',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.24.1','Patient is exposed to a product with a pH of < 6 or > 9',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.27.1','End User inserts or ingests removable product components',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.27.3','End User is exposed to a sharp surface on the product',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.27.4','End User is exposed to a spike, needle, or cannula stick',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.27.6','End User is exposed to improper ergonomics and anthropometrics while handling the product',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.27.7','End User is struck by a falling product',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.27.8','End User is unintentionally exposed to a chemical, drug, or material',NULL,NULL,2,2.0,1.0,NULL),
 ('HS.PIT.27.9','End User slips, trips or falls when exposed to the product',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.28.1','Patient is exposed to an unstable drug emulsion',NULL,NULL,2,2.0,NULL,NULL),
 ('HS.PIT.3.1','Patient experiences bodily fluid loss (<= 15% of their total blood volume)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.3.2','Patient experiences bodily fluid loss (> 15% to <= 30% of their total blood volume)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.3.3','Patient experiences bodily fluid loss (> 30% to <= 40%of their total blood volume)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.3.4','Patient experiences bodily fluid loss (> 40% of their total blood volume)',NULL,NULL,1,1.0,NULL,NULL),
 ('HS.PIT.4.1','Patient is exposed to a product contaminated with infectious prions (TSE/BSE)','The evaluation of incoming raw materials, manufacturing materials, primary packaging materials and disposable equipment from outside suppliers for Baxter manufactured products must to adhere to GQP-12-08, Evaluation of TSE and Virus Risks for Materials Used in Baxter Processes.  Therefore, the Hazardous Situation is expected to occur at a rate of no more than 1 qualitatively. ',1.0,1,NULL,NULL,NULL),
 ('HS.PIT.5.1','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)',NULL,NULL,3,3.0,2.0,NULL),
 ('HS.PIT.5.2','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)',NULL,NULL,3,3.0,2.0,NULL),
 ('HS.PIT.5.3','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)',NULL,NULL,3,3.0,2.0,NULL),
 ('HS.PIT.5.4','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.5.5','Patient experiences a delay in the initiation of therapy (> 12 hours)',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.6.2','End user is exposed to burning components or smoke',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.6.3','End user is exposed to fire',NULL,NULL,1,1.0,1.0,NULL),
 ('HS.PIT.7.1','Patient is exposed to a product containing endotoxins or pyrogens exceeding acceptable limits',NULL,NULL,2,2.0,NULL,NULL);


INSERT INTO `appendix_b_p2_conversion` (`hazardous_situation_id`,`critical_qualitative`,`moderate_qualitative`,`minor_qualitative`,`critical_semi_quantitative`,`moderate_semi_quantitative`,`minor_semi_quantitative`,`propability_of_hazardous_situation_(p1)`,`critical`,`moderate`,`minor`,`critical.1`,`moderate.1`,`minor.1`) 
VALUES ('HS.PIT.1.4','Exceptional','Rare','Expected',1.0,2.0,7.0,1.0,1.0,2.0,7.0,'Medium','Low','Low'),
 ('HS.PIT.1.5','Rare','Occasional','Expected',2.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.1.6','Occasional','Expected','Exceptional',3.0,7.0,1.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.1.7','Expected','Rare','Exceptional',7.0,2.0,1.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.10.1','Exceptional','Exceptional','Expected',1.0,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.10.2','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.10.3','Occasional','Likely','Expected',3.0,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.1','Exceptional','Exceptional','Expected',1.0,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.10',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.3','Rare','Occasional','Expected',2.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.4','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.5',NULL,'Rare','Expected',NULL,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.6',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.7','Occasional','Occasional','Expected',3.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.8','Rare','Rare','Expected',2.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.11.9','Exceptional','Exceptional','Expected',1.0,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.1',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.2','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.3','Occasional','Likely','Expected',3.0,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.4','Periodic','Expected','Occasional',4.0,7.0,3.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.5',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.6','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.13.7','Occasional','Expected','Periodic',3.0,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.14.1','Occasional','Expected','Periodic',3.0,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.15.1','Occasional','Expected','Occasional',3.0,7.0,3.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.16.1',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.16.2','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.16.3','Occasional','Expected','Periodic',3.0,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.18.1','Rare','Rare','Expected',2.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.18.2','Occasional','Often','Expected',3.0,5.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.18.3','Often','Expected','Rare',5.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.18.4','Likely','Expected',NULL,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.18.5','Expected','Periodic',NULL,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.19.1',NULL,'Exceptional','Expected',NULL,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.2.1','Occasional','Expected','Often',3.0,7.0,5.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.20.3','Rare','Occasional','Expected',2.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.21.3','Occasional','Periodic','Expected',3.0,4.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.21.4','Periodic','Expected','Occasional',4.0,7.0,3.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.21.5','Often','Expected','Rare',5.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.22.1','Occasional','Expected','Rare',3.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.22.2','Rare','Occasional','Expected',2.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.23.1','Exceptional','Exceptional','Expected',1.0,1.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.23.2','Occasional','Expected','Periodic',3.0,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.24.1','Exceptional','Periodic','Expected',1.0,4.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.1','Occasional','Expected','Often',3.0,7.0,5.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.3',NULL,'Rare','Expected',NULL,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.4','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.6',NULL,'Occasional','Expected',NULL,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.7','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.8','Rare','Periodic','Expected',2.0,4.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.27.9','Rare','Likely','Expected',2.0,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.28.1','Often','Expected','Rare',5.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.3.1','Exceptional','Rare','Expected',1.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.3.2','Occasional','Expected','Occasional',3.0,7.0,3.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.3.3','Likely','Expected',NULL,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.3.4','Expected','Rare',NULL,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.4.1','Expected',NULL,NULL,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.5.1','Rare','Rare','Expected',2.0,2.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.5.2','Occasional','Often','Expected',3.0,5.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.5.3','Often','Expected','Rare',5.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.5.4','Likely','Expected',NULL,6.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.5.5','Expected','Periodic',NULL,7.0,4.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.6.2','Rare','Occasional','Expected',2.0,3.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.6.3','Occasional','Periodic','Expected',3.0,4.0,7.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('HS.PIT.7.1','Periodic','Expected','Rare',4.0,7.0,2.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
 
 
INSERT INTO `HSHA-PARENTERAL-INFUSION` (`new_hsnumber`,`hazard`,`hazardous_situation`,`harm`,`core_infusion_/_large_volume_pump`,`syringe_pump`,`pain_pumps`,`therapeutic_drug`,`compounding`,`parenteral_nutrition`,`critical`,`moderate`,`minor`,`criticality_ranking`)
VALUES ('HS.PIT.1.1','Air or Gas in System','Air or gas is administered to the patient (>= 4 nL to 10 µL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, stroke, cardiac and/or respiratory arrest
','A','- IV Syringe Set ','- Ambulatory Pump 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.1.2','Air or Gas in System','Air or gas is administered to the patient (> 10 µL to <= 50 µL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, stroke,  cardiac and/or respiratory arrest','- LVP','- IV Syringe Set ','- Ambulatory Pump 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.1.3','Air or Gas in System','Air or gas is administered to the patient (> 50 µL to <= 1 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, stroke,  cardiac and/or respiratory arrest','- LVP',NULL,'- Ambulatory Pump 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.1.3','Air or Gas in System','Air or gas is administered to the patient (> 50 µL to <= 1 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death
',NULL,'- IV Syringe Set ',NULL,NULL,NULL,NULL,'Rare','Rare','Expected',50),
 ('HS.PIT.1.4','Air or Gas in System','Air or gas is administered to the patient (> 4nL to <= 1 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension,  stroke, cardiac  and/or respiratory arrest','- Filled Solution Containers 
- Sets and Set Components',NULL,NULL,'Premix, Prefilled Syringe 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition)',NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.1.5','Air or Gas in System','Air or gas is administered to the patient (> 1 mL to <= 10 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,'- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass
','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.1.5','Air or Gas in System','Air or gas is administered to the patient (> 1 mL to <= 10 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death
',NULL,'- IV Syringe Set ',NULL,NULL,NULL,NULL,'Occasional','Expected','Exceptional',60),
 ('HS.PIT.1.6','Air or Gas in System','Air or gas is administered to the patient (> 10 mL to <= 50 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,'- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Exceptional',60),
 ('HS.PIT.1.6','Air or Gas in System','Air or gas is administered to the patient (> 10 mL to <= 50 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death
',NULL,'- IV Syringe Set ',NULL,NULL,NULL,NULL,'Often','Expected','Rare',80),
 ('HS.PIT.1.7','Air or Gas in System','Air or gas is administered to the patient (> 50 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,'- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Expected','Rare','Exceptional',100),
 ('HS.PIT.2.1','Allergens','End user is exposed to allergens','Type 1, 2, 3, 4 allergic reactions 
Urticaria, pruritis, orofacial edema, angioedema, rhinoconjunctivitis, dysphagia, flushing, dyspnea, hypotension, cardiac arrhythmia, shock, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Sterile Compounding Accessories 
- Non-Sterile Compounding Accessories
- Sterile Compounding Disposables 
- Compounding Accessories 
- Compounder Tube Sets 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
-Sterile adapters','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Often',60),
 ('HS.PIT.3.1','Bodily Fluid Loss','Patient experiences bodily fluid loss (<= 15% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- IV Syringe Set','- Ambulatory Pump 
- Ambulatory Pump Sets','Premix, Prefilled Syringe 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.3.2','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 15% to <= 30% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- IV Syringe Set','- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Occasional',60),
 ('HS.PIT.3.3','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 30% to <= 40%of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- IV Syringe Set','- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Likely','Expected',NULL,90),
 ('HS.PIT.3.4','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 40% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- IV Syringe Set','- Ambulatory Pump 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Expected','Rare',NULL,100),
 ('HS.PIT.3.5','Bodily Fluid Loss','Patient experiences bodily fluid loss (CSF)','Neurologic syndrome that may include headache, nausea, and tinnitus, orthostatic headaches','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,'- Ambulatory Pump 
- Ambulatory Pump Sets','Premix, Prefilled Syringe 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Expected','Periodic','Exceptional',100),
 ('HS.PIT.4.1','Contaminants of Animal Origin','Patient is exposed to a product contaminated with infectious prions (TSE/BSE)','Psychiatric symptoms, neurodegeneration (e.g. ataxia, dysphagia, dysarthria, cognitive impairment; and impaired vision including blindness, myoclonus; dementia); coma and death','- Filled Solution Containers 
- Sets and Set Components','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Sterile Compounding Accessories 
- Sterile Compounding Disposables
- Sterile adapters
- Compounding Accessories 
- Compounder Tube Sets 
- MB+ 
- Recon Devices 
- MVI
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Expected',NULL,NULL,100),
 ('HS.PIT.5.1','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Rare','Rare','Expected',50),
 ('HS.PIT.5.1','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Occasional','Expected',20),
 ('HS.PIT.5.1','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia',NULL,NULL,NULL,NULL,'Expected',20),
 ('HS.PIT.5.1','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)','Delay of pharmacological effects, worsening of patient condition','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- MVI 
- Empty Containers (Non Nutrition) 
',NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.5.2','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition including death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- MVI 
- Empty Containers (Non Nutrition) 
',NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.5.2','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.5.2','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Often',60),
 ('HS.PIT.5.2','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Occasional','Often','Expected',60),
 ('HS.PIT.5.2','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.5.3','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition including death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) ',NULL,'Occasional','Often','Expected',60),
 ('HS.PIT.5.3','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Periodic','Expected','Occasional',70),
 ('HS.PIT.5.3','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition ',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Periodic',60),
 ('HS.PIT.5.3','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Often','Expected','Rare',80),
 ('HS.PIT.5.3','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.5.3','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,NULL,NULL,'- Automated Compounders 
- Compounding Accessories 
- Compounder Tube Sets 
- Sterile Compounding Disposables 
- Sterile Compounding Accessories
- Non-Sterile Compounding Accessories
- Sterile Adapters
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.5.4','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition including death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Compounding Accessories
- Non-Sterile Compounding Accessories
- Sterile Adapters
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ',NULL,'Periodic','Expected','Likely',70),
 ('HS.PIT.5.4','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Likely','Expected',NULL,90),
 ('HS.PIT.5.4','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, hematuria, hemorrhagic cystitis, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.5.4','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,NULL,NULL,'- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Expected','Occasional',60),
 ('HS.PIT.5.4','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Often','Expected','Occasional',80),
 ('HS.PIT.5.4','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Rare',60),
 ('HS.PIT.5.5','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Compounding Accessories
- Non-Sterile Compounding Accessories
- Sterile Adapters
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ',NULL,'Often','Expected','Often',80),
 ('HS.PIT.5.5','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Expected','Likely','Occasional',100),
 ('HS.PIT.5.5','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Exceptional',60),
 ('HS.PIT.5.5','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Expected','Periodic',NULL,100),
 ('HS.PIT.5.5','Delay In Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, hematuria, hemorrhagic cystitis, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Periodic','Expected','Often',70),
 ('HS.PIT.5.5','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,NULL,NULL,NULL,NULL,'- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Rare',60),
 ('HS.PIT.6.1','Electrical, Thermal, Electromechanical Energy','End user is exposed to a product’s hot surface or hot fluid leaking from a product','Pain, burns ranging from 1st to 3rd degree','- Filled Solution Containers 
- Sets and Set Components 
- LVP','- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord
- Ambulatory Pump Sets','Premix Frozen 
- Anti-Infectives 
- Cardiovascular ','- Automated Compounders 
- Sterile Compounding Accessories 
- Compounding Accessories 
- Compounder Tube Sets 
- Non-Sterile Compounding Accessories
- Repeater Pumps and Accessories 
- MB+ 
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.6.2','Electrical, Thermal, Electromechanical Energy','End user is exposed to burning components or smoke','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,'Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ','- DoseEdge 
- Automated Compounders 
- Repeater Pumps and Accessories 
- Compounding Accessories 
- Compounder Tube Sets 
- Non-Sterile Compounding Accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.6.2','Electrical, Thermal, Electromechanical Energy','End user is exposed to burning components or smoke','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ',NULL,'- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord
- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Likely','Expected',50),
 ('HS.PIT.6.3','Electrical, Thermal, Electromechanical Energy','End user is exposed to fire','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ','- Filled Solution Containers 
- Sets and Set Components 
- LVP',NULL,NULL,'Premix
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- DoseEdge 
- Automated Compounders 
- Repeater Pumps and Accessories 
- Compounding Accessories 
- Compounder Tube Sets 
- Non-Sterile Compounding Accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Periodic','Expected',60),
 ('HS.PIT.6.3','Electrical, Thermal, Electromechanical Energy','End user is exposed to fire','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ',NULL,'- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord
- Ambulatory Pump Sets',NULL,NULL,NULL,'Occasional','Expected','Often',60),
 ('HS.PIT.6.4','Electrical, Thermal, Electromechanical Energy','End user is exposed to electrical current or voltage','Pain, burns, nervous system damage, fibrillation of the heart,  electrocution  ','- LVP','- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord',NULL,'- DoseEdge 
- Automated Compounders 
- Repeater Pumps and Accessories ',NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.6.5','Electrical, Thermal, Electromechanical Energy','End user is exposed to electrostatic discharge (ESD)','Pain, shock, burn','- LVP',NULL,NULL,NULL,'- DoseEdge 
- Automated Compounders 
- Repeater Pumps and Accessories ',NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.6.5','Electrical, Thermal, Electromechanical Energy','End user is exposed to electrostatic discharge (ESD)','Pain, shock, burn',NULL,'- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord',NULL,NULL,NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.7.1','Endotoxins or Pyrogens','Patient is exposed to a product containing endotoxins or pyrogens exceeding acceptable limits','Fever, chills, flushing, dyspnea, hemorrhage, toxic shock, organ damage/failure, death','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Periodic','Expected','Rare',70),
 ('HS.PIT.7.1','Endotoxins or Pyrogens','Patient is exposed to a product containing endotoxins or pyrogens exceeding acceptable limits','Fever, chills, flushing, dyspnea, hemorrhage, toxic shock, organ damage/failure, death','- Sets and Set Components',NULL,NULL,NULL,'- Sterile Compounding Accessories 
- Compounding Accessories 
- Compounder Tube Sets 
- Non-Sterile Compounding Accessories 
- Recon Devices 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- Sterile Adapters',NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.8.1','Excessive Light','End user is exposed to emitted light from the product','Varies from no harm to health effect of annoyance or sleep  interruption
','- LVP',NULL,NULL,NULL,'- DoseEdge 
- Automated Compounders',NULL,NULL,'Exceptional','Expected',20),
 ('HS.PIT.8.1','Excessive Light','End user is exposed to emitted light from the product','Varies from no harm to health effect of annoyance or sleep  interruption
',NULL,'- Syringe Pump','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord',NULL,NULL,NULL,NULL,'Rare','Expected',20),
 ('HS.PIT.9.1','Excessive Noise','End user is exposed to acoustical noise from the product (> 35 dBA to <= 85 dBA)','Noise breakouts are based on standards and recommended noise levels','- LVP',NULL,NULL,NULL,'- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories',NULL,NULL,'Rare','Expected',20),
 ('HS.PIT.9.1','Excessive Noise','End user is exposed to acoustical noise from the product (> 35 dBA to <= 85 dBA)','Varies from no harm to non-auditory health effects including annoyance and sleep interruption',NULL,'- Syringe Pump','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord',NULL,NULL,NULL,NULL,'Periodic','Expected',30),
 ('HS.PIT.9.2','Excessive Noise','End user is exposed to acoustical noise from the product (> 85 dBa)','Varies from no harm to hearing loss or non-auditory health effects including annoyance, sleep interruption, daytime hypersomulence and changes in blood pressure 
','- LVP',NULL,NULL,NULL,'- DoseEdge 
- Automated Compounders',NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.9.2','Excessive Noise','End user is exposed to acoustical noise from the product (> 85 dBa)','Varies from no harm to hearing loss or non-auditory health effects including annoyance, sleep interruption, daytime hypersomulence and changes in blood pressure
',NULL,'- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord',NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.10.1','Excessive Therapy','Patient receives more therapy than intended (variance of > 5% to <= 10%)','Nausea/vomiting, electrolyte imbalance, hematuria, alopecia, peripheral edema, hemorrhagic cystitis, hypertension, impairment of wound healing, hematologic abnormalities, respiratory failure, cerebral edema, organ damage/failure
','- Filled Solution Containers
- Sets and Set components (excludes those that do not control flow rate)
- LVP','- Syringe Pump','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ',NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.10.1','Excessive Therapy','Patient receives more therapy than intended (variance of > 5% to <= 10%)','Nausea/vomiting, electrolyte imbalance, hematuria, alopecia, peripheral edema, hemorrhagic cystitis, hypertension, impairment of wound healing, hematologic abnormalities, respiratory failure, cerebral edema, organ damage/failure, death
',NULL,NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Exceptional','Expected',50),
 ('HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, Clostridium Difficile associated Diarrhea,  peripheral edema, hypertension, hypotension (Brevibloc), hemolysis, pulmonary toxicity (for Nexterone only), respiratory failure, cardiac arrhythmia, bradycardia, cerebral edema, organ damage/failure','- Filled Solution Containers
- Sets and Set components (excludes those that do not control flow rate)
- LVP',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ',NULL,NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, Clostridium Difficile associated Diarrhea,  peripheral edema, hypertension, hypotension (Brevibloc), hemolysis, pulmonary toxicity (for Nexterone only), respiratory failure, cardiac arrhythmia, bradycardia, cerebral edema, organ damage/failure, death',NULL,NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ',NULL,'Rare','Rare','Expected',50),
 ('HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure',NULL,'- Syringe Pump
',NULL,NULL,NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,NULL,NULL,NULL,NULL,'- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Exceptional','Expected',50),
 ('HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.10.3','Excessive Therapy','Patient receives more therapy than intended (variance of > 20% to <= 100%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death','- Filled Solution Containers 
- Sets and Set components (excludes those that do not control flow rate) 
- LVP','- Syringe Pump
',NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.10.3','Excessive Therapy','Patient receives more therapy than intended (variance of > 20% to <= 100%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.10.3','Excessive Therapy','Patient receives more therapy than intended (variance of > 20% to <= 100%)','Electrolyte imbalance, Clostridium Difficile associated Diarrhea,  peripheral edema, hypertension, hemolysis, pulmonary toxicity (for Nexterone only), respiratory failure, cardiac arrhythmia, cerebral edema, organ damage/failure, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular
- Supportive Care 
- Specialty Care ',NULL,NULL,'Occasional','Likely','Expected',60),
 ('HS.PIT.10.3','Excessive Therapy','Patient receives more therapy than intended (variance of > 20% to <= 100%)','Nausea/vomiting, electrolyte imbalance, hematuria, alopecia, peripheral edema, hemorrhagic cystitis, hypertension, hypotension, bradycardia,  impairment of wound healing, secondary malignancies, hematologic abnormalities, cerebral edema, organ damage/failure, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Oncology',NULL,NULL,'Rare','Expected','Occasional',60),
 ('HS.PIT.10.4','Excessive Therapy','Patient receives more therapy than intended (variance of > 100% to <= 1,000%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death','- Filled Solution Containers 
- Sets and Set components (excludes those that do not control flow rate) 
- LVP',NULL,NULL,NULL,'- Automated Syringe Filler 
- Automated Compounder 
- Repeater Pump and Accessories 
- Compounding Pumps 
- Order Entry Calculation Software 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- Empty Bags (Non-Nutrition)','- Intravenous Fat Emulsions    ','Occasional','Expected','Likely',60),
 ('HS.PIT.10.4','Excessive Therapy','Patient receives more therapy than intended (variance of > 100% to <= 1,000%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,'- Syringe Pump
',NULL,NULL,NULL,NULL,'Occasional','Likely','Expected',60),
 ('HS.PIT.10.4','Excessive Therapy','Patient receives more therapy than intended (variance of > 100% to <= 1,000%)','Electrolyte imbalance, peripheral edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Expected','Likely',NULL,100),
 ('HS.PIT.10.5','Excessive Therapy','Patient receives more therapy than intended (variance of > 1,000% or free flow of solution)','Electrolyte imbalance, peripheral  edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death','- Sets and Set Components (excludes those that do not control flow rate) 
- LVP','- Syringe Pump
',NULL,NULL,NULL,NULL,'Often','Expected','Periodic',80),
 ('HS.PIT.10.5','Excessive Therapy','Patient receives more therapy than intended (variance of > 1,000% or free flow of solution)','Electrolyte imbalance, peripheral  edema, hypertension, respiratory failure, cerebral edema, organ damage/failure, death',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Expected',NULL,NULL,100),
 ('HS.PIT.11.1','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (organic or degradants)','Adverse events related to individual organic impurity or degradant ','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Exceptional','Expected',40),
 ('HS.PIT.11.2','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (tryptophan organic or degradants)','Adverse events related to tryptophan organic impurities or degradants ','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets',NULL,'- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers (Amino Acids only)
- Pharmacy Bulk Pack Solutions in Glass (Amino Acids only)
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
','Exceptional','Rare','Expected',40),
 ('HS.PIT.11.3','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 1)','ADHD, poor impulse control, impaired cognitive ability , hypertension, damage reproductive organs, hemolytic anemia, nephropathy, cerebrovascular accident, encephalopathy, coma, convulsions, cancer, death','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.11.4','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 2)','Dermatitis, hypertension, diabetes, cancer','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.11.5','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 3)','Dermatitis, skin ulceration,  Decreased hemoglobin, oliguria, anemia, kidney damage, hepatocellular toxicity,  renal tubular damage,  hemolysis ','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Rare','Expected',20),
 ('HS.PIT.11.6','Impurities','Patient is exposed to impurities that are not defined or are defined as "other" by current guidances','Nausea and vomiting, impaired immune system, anemia','- Filled Solution Containers
',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.11.7','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 1)','Narcotic-like effect, bone marrow suppression, blood disorders including pancytopenia and aplastic anemia, cancer, death','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Occasional','Expected',60),
 ('HS.PIT.11.8','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 2)','Adverse effects due to acute toxic effect, tachycardia, metabolic acidosis,  renal failure, coma, death','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Rare','Expected',50),
 ('HS.PIT.11.9','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 3)','Adverse effects due to acute toxic effect, tachycardia, metabolic acidosis,  renal failure','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Exceptional','Expected',40),
 ('HS.PIT.11.10','Impurities','Patient is exposed to residual solvents or process materials not defined by current guidances at levels exceeding toxicological qualification or clinical safety','CNS depression, narcosis, depressed respirations, liver and kidney damage','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.12.1','Incorrect Application of Product','Patient is exposed to a product via an incorrect application (Blood Removal)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death
','- LVP',NULL,'- Ambulatory Pump ',NULL,NULL,NULL,'Rare','Rare','Expected',50),
 ('HS.PIT.12.2','Incorrect Application of Product','Patient is exposed to a product via an incorrect application (CSF Removal)','Neurologic syndrome that may include headache, nausea, and tinnitus, orthostatic headaches','- LVP',NULL,'- Ambulatory Pump ',NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.13.1','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 5% to <= 10%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, hemolysis, enhanced pharmacological effects','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.13.2','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 10% to <= 20%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.13.3','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 20% to <= 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death','- Filled Solution Containers',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.13.3','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 20% to <= 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, seizures, hemolysis, pulmonary toxicity (for Nexterone only), respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Supportive Care 
- Specialty Care',NULL,NULL,'Occasional','Likely','Expected',60),
 ('HS.PIT.13.3','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 20% to <= 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Oncology',NULL,NULL,'Rare','Expected','Occasional',60),
 ('HS.PIT.13.4','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death','- Filled Solution Containers',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Likely',60),
 ('HS.PIT.13.4','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, seizures, hemolysis, pulmonary toxicity (for Nexterone only), respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Specialty Care 
- Supportive Care',NULL,NULL,'Periodic','Expected','Occasional',70),
 ('HS.PIT.13.4','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Oncology',NULL,NULL,'Likely','Expected',NULL,90),
 ('HS.PIT.13.5','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 5% to <= 10%)','Diminished pharmacological effect, worsening of patient condition','- Filled Solution Containers
- Sets and Set Components','- IV Syringe Set',NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Sterile Compounding Accessories
- Non-Sterile Compounding Accessories
- Compounding accessories
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.13.6','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 10% to <= 20%)','Diminished pharmacological effect, worsening of patient condition','- Filled Solution Containers
- Sets and Set Components','- IV Syringe Set',NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables
- Sterile Compounding Accessories
- Non-Sterile Compounding Accessories
- Compounding accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Exceptional','Expected',40),
 ('HS.PIT.13.6','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 10% to <= 20%)','Diminished pharmacological effect, worsening of patient condition, neutropenic fever',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.13.7','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 20% to <= 100%)','Diminished pharmacological effect, Worsening of patient condition, up to and including death','- Filled Solution Containers
- Sets and Set Components',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.13.7','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 20% to <= 100%)','Diminished pharmacological effect, worsening of patient condition, neutropenic fever, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Occasional','Expected','Periodic',60),
 ('HS.PIT.14.1','Incorrect Product','Patient is exposed to an incorrect or unintended product','Unintended pharmacological effect, lack of intended pharmacological effect, death','- Filled Solution Containers 
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- DoseEdge 
- Automated Compounders
- Sterile Compounding Disposables
- Compounder Tube Sets 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Order entry calculation software','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Periodic',60),
 ('HS.PIT.15.1','Incorrect Route of Administration','Patient is exposed to a product via an incorrect route of administration','Vessel irritation/damage, pain, tissue necrosis, organ damage/failure,  respiratory difficulty, embolism, stroke,  death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Rare',60),
 ('HS.PIT.15.1','Incorrect Route of Administration','Patient is exposed to a product via an incorrect route of administration','Vessel irritation/damage, pain, tissue necrosis, organ damage/failure,  respiratory difficulty, embolism, stroke,  death',NULL,'- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Periodic','Expected','Rare',70),
 ('HS.PIT.15.1','Incorrect Route of Administration','Patient is exposed to a product via an incorrect route of administration','Vessel irritation/damage, pain, tissue necrosis, organ damage/failure,  respiratory difficulty, embolism, stroke,  death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Occasional','Expected','Occasional',60),
 ('HS.PIT.16.1','Insufficient Therapy','Patient receives less therapy than intended (variance of > 5% to <= 10%)','Decrease of pharmacological effects, worsening of patient condition','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.16.2','Insufficient Therapy','Patient receives less therapy than intended (variance of > 10% to <= 20%)','Decrease of pharmacological effects, worsening of patient condition','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ',NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Exceptional','Expected',40),
 ('HS.PIT.16.2','Insufficient Therapy','Patient receives less therapy than intended (variance of > 10% to <= 20%)','Decrease of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Periodic','Expected',30),
 ('HS.PIT.16.2','Insufficient Therapy','Patient receives less therapy than intended (variance of > 10% to <= 20%)','Decrease of pharmacological effects, worsening of patient condition, neutropenic fever (for Imipenem only)',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Exceptional','Rare','Expected',40),
 ('HS.PIT.16.3','Insufficient Therapy','Patient receives less therapy than intended (variance of > 20% to <= 100%)','Decrease of pharmacological effects, worsening of patient condition, death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.16.3','Insufficient Therapy','Patient receives less therapy than intended (variance of > 20% to <= 100%)','Decrease of pharmacological effects, worsening of patient condition, death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.16.3','Insufficient Therapy','Patient receives less therapy than intended (variance of > 20% to <= 100%)','Decrease of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Periodic',60),
 ('HS.PIT.16.3','Insufficient Therapy','Patient receives less therapy than intended (variance of > 20% to <= 100%)','Decrease of pharmacological effects, worsening of patient condition, neutropenic fever (for Imipenem only), death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Occasional','Expected','Periodic',60),
 ('HS.PIT.17.1','Interference with an Unrelated Therapy or Condition','Patient experiences a delayed, interrupted or insufficient medical intervention outside of the intended therapy','harm could be related to interference with pacemakers',NULL,NULL,NULL,NULL,'- DoseEdge  
- Repeater Pump and Accessories ',NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.17.2','Interference with an Unrelated Therapy or Condition','Patient experiences a delayed, interrupted or insufficient medical intervention outside of the intended therapy (other medical devices or data systems)','Interference of network, ECG interference, Interruption of other device ','- LVP',NULL,NULL,NULL,'- Automated Compounders',NULL,'Rare','Expected','Periodic',60),
 ('HS.PIT.17.2','Interference with an Unrelated Therapy or Condition','Patient experiences a delayed, interrupted or insufficient medical intervention outside of the intended therapy (other medical devices or data systems)','Interference of network, ECG interference, Interruption of other device ',NULL,'- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Occasional','Expected','Often',60),
 ('HS.PIT.17.3','Interference with an Unrelated Therapy or Condition','Patient is exposed to an unnecessary medical intervention outside of the intended therapy (other medical devices or data systems)','Inherent harms related to excessive or unnecessary treatments, potential drug overdose, death','- LVP','- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Expected','Occasional',60),
 ('HS.PIT.18.1','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)','Decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Rare','Rare','Expected',50),
 ('HS.PIT.18.1','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)','Decrease of pharmacological effects, worsening of patient condition','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia',NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.18.1','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)','Decrease of pharmacological effects, worsening of patient condition, death
',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.18.1','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)','Decrease of pharmacological effects, worsening of patient condition
',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Exceptional','Expected',20),
 ('HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Significant decrease of pharmacological effects, worsening of patient condition, death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,'- Order Entry Calculation Software 
- DoseEdge 
- Automated Compounders 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ',NULL,'Rare','Often','Expected',50),
 ('HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Decrease of pharmacological effects, worsening of patient condition, death
',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Periodic','Likely','Expected',70),
 ('HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Decrease of pharmacological effects, worsening of patient condition
',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Often',60),
 ('HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Occasional','Often','Expected',60),
 ('HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,'- DoseEdge 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Empty Containers (Non Nutrition) ',NULL,'Periodic','Likely','Expected',70),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Often','Expected','Likely',80),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Periodic',60),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Often','Expected','Rare',80),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition',NULL,NULL,NULL,NULL,'- Order Entry Calculation Software
- Automated Compounders
- Sterile Compounding Disposables
- Compounder Tube Sets
- MVI
- Empty Containers (Nutrition)
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,NULL,NULL,'Periodic','Expected','Likely',70),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Likely','Expected','Occasional',90),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Rare',60),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Likely','Expected',NULL,90),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,NULL,'- Pharmacy Bulk Pack Solutions in Glass
- Order Entry Calculation Software
- Automated Compounders
- Compounder Tube Sets
- MVI
- Empty Containers (Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Expected','Occasional',60),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death','- Filled Solution Containers
- Sets and Set Components
- LVP',NULL,NULL,NULL,NULL,NULL,'Often','Expected','Often',80),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Expected','Likely','Rare',100),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition',NULL,NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Expected','Exceptional',60),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Cardiovascular 
- Specialty Care',NULL,NULL,'Expected','Periodic',NULL,100),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Oncology and Supportive Care ',NULL,NULL,'Periodic','Expected','Often',70),
 ('HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death',NULL,NULL,NULL,NULL,'- Pharmacy Bulk Pack Solutions in Glass
- Order Entry Calculation Software
- Automated Compounders
- Sterile Compounding Disposables
- Compounder Tube Sets
- MVI
- Empty Containers (Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Periodic','Expected','Rare',70),
 ('HS.PIT.19.1','Leachables','Patient is exposed to leachables at levels exceeding toxicological qualification or clinical safety','Dermatitis, pain, numbness, spasm to extremities','- Filled Solution Containers
- Sets and Set Components','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Sterile Compounding Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- Non-Sterile Compounding Accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition)
-Needleless adapters
-Sterile adapters ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Exceptional','Expected',20),
 ('HS.PIT.20.1','Mechanical Stress','Patient is exposed to damaged blood or blood products','Breakdown of erythrocytes leads to cellular damage due to the plasmatic liberation of markers that largely dominate free hemoglobin and potassium. Delayed hemolytic transfusion reactions
',NULL,'- Syringe Pump 
- IV Syringe Set ',NULL,NULL,NULL,NULL,'Occasional','Periodic','Expected',60),
 ('HS.PIT.20.1','Mechanical Stress','Patient is exposed to damaged blood or blood products','Breakdown of erythrocytes leads to cellular damage due to the plasmatic liberation of markers that largely dominate free hemoglobin and potassium. Delayed hemolytic transfusion reactions
','- Sets and Set Components 
- LVP',NULL,NULL,NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.20.2','Mechanical Stress','Patient''s tissue is exposed to excessive or unintended force during therapy','Intima damage, skin tears, pain, deep tissue damage, infiltration, extravasation (depending on drug being infused), compartment syndrome, loss of limb, catheter embolization, death','- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Occasional','Expected','Likely',60),
 ('HS.PIT.20.3','Mechanical Stress','Patient''s tissue is exposed to excessive tension or compression during therapy','Pain, skin tears, deep tissue damage, infiltration, extravasation (depending on drug being infused), compartment syndrome, loss of limb, death','- Filled Solution Containers',NULL,NULL,'Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ','- MB+ 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) 
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.20.4','Mechanical Stress','Patient''s tissue is exposed to shear stress during therapy','compartment syndrome, extravasation','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition)',NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.21.1','Microbial Contamination','End User is exposed to bodily tissue','Infection with HIV, Hepatitis B, Hepatitis C ','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Compounder Tube Sets
- Sterile Compounding Accessories 
- Sterile Compounding Disposables
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.21.2','Microbial Contamination','Patient is exposed to microbial burden exceeding acceptable limits','Fever, chills, flushing, dyspnoea, hemorrhage, toxic shock, organ damage/failure, death
','- Sets (only Sets with a 0.2 micron filter)',NULL,'- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Periodic','Expected','Often',70),
 ('HS.PIT.21.2','Microbial Contamination','Patient is exposed to microbial burden exceeding acceptable limits','Fever, chills, flushing, dyspnoea, hemorrhage, toxic shock, organ damage/failure, death
',NULL,'- IV Syringe Set (only Sets with a 0.2 micron filter)',NULL,NULL,NULL,NULL,'Occasional','Periodic','Expected',60),
 ('HS.PIT.21.3','Microbial Contamination','Patient is exposed to microbial contamination from a wet product contaminated at the point of or during administration or a dry product contaminated at any point','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ',' - Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions','Occasional','Periodic','Expected',60),
 ('HS.PIT.21.4','Microbial Contamination','Patient is exposed to microbial contamination from a product contaminated at the point of compounding or admixing, prior to the point of administration','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death',NULL,'- IV Syringe Set','- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.21.4','Microbial Contamination','Patient is exposed to microbial contamination from a product contaminated at the point of compounding or admixing, prior to the point of administration','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','- Filled Solution Containers 
- Sets and Set Components',NULL,NULL,'Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care ','- Sterile Compounding Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Periodic','Expected','Occasional',70),
 ('HS.PIT.21.5','Microbial Contamination','Patient is exposed to microbial contamination from a wet product contaminated prior to the point of use or from reuse of a previously dry product','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Sterile Repeater Pump Disposables 
- Non-Sterile Compounding Accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Often','Expected','Rare',80),
 ('HS.PIT.22.1','Osmolarity Extremes','Patient is exposed to hyper-osmolar product','Phlebitis, erythema, swelling, pain thrombosis and thrombophlebitis, death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','Pre-mix TPN Injection wo Electrolytes','Occasional','Expected','Rare',60),
 ('HS.PIT.22.2','Osmolarity Extremes','Patient is exposed to hypo-osmolar product','Hyponatremia and associated symptoms including seizures, cerebral edema and death',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software  
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass ','- Pre-mix TPN Injection wo Electrolytes 
','Rare','Occasional','Expected',50),
 ('HS.PIT.23.1','Particulate Matter','Patient is exposed to sub-visible particulate matter at levels exceeding specifications','Phlebitis, thrombophlebitis, pain, granuloma,  thrombosis, embolism, respiratory distress/ARDS, myocarditis, organ damage/failure','- Filled Solution Containers','- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Exceptional','Expected',40),
 ('HS.PIT.23.1','Particulate Matter','Patient is exposed to sub-visible particulate matter at levels exceeding specifications','Phlebitis, thrombophlebitis, pain, granuloma, thrombosis','- Sets and Set Components',NULL,NULL,NULL,'- Sterile Compounding Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- Non-Sterile Compounding Accessories 
- Recon Devices 
- Automated Syringe Filler  
- Bandolier Syringes 
- Compounding accessories 
- Compounder Tube Sets 
- Compounding Pumps 
- Needleless Adapters 
- Needles 
- Plastic Tubing Accessories 
- Sterile Adapters 
- Sterile Compounding Accessories',NULL,NULL,NULL,'Expected',20),
 ('HS.PIT.23.2','Particulate Matter','Patient is exposed to visible particulate matter','Phlebitis, thrombophlebitis, pain, granuloma,  thrombosis, embolism, respiratory distress/ARDS, myocarditis, organ damage/failure, death
','- Filled Solution Containers
- Sets and Set Components',NULL,NULL,NULL,'- Sterile Compounding Accessories 
- Sterile Compounding Disposables 
- Sterile Repeater Pump Disposables 
- Non-Sterile Compounding Accessories 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition)
- Compounding accessories
- Sterile adapters  ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Periodic','Expected',60),
 ('HS.PIT.23.2','Particulate Matter','Patient is exposed to visible particulate matter','Phlebitis, thrombophlebitis, pain, granuloma, thrombosis, embolism, respiratory distress/ARDS, myocarditis, organ damage/failure, death
',NULL,'- IV Syringe Set','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care',NULL,NULL,'Occasional','Expected','Periodic',60),
 ('HS.PIT.24.1','pH Extremes','Patient is exposed to a product with a pH of < 6 or > 9','Phlebitis, pain, infiltration, edema, thrombus, tissue necrosis,  infection, electrolyte abnormalities, CNS effects, organ damage/failure','- Filled Solution Containers',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular (excluding Cardioplegic Solution) 
- Oncology and Supportive Care 
- Specialty Care','- Order Entry Calculation Software 
- DoseEdge 
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Periodic','Expected',40),
 ('HS.PIT.24.2','pH Extremes','Patient is exposed to a product with a pH of < 7 or > 8','Damaged myocardial  tissue ranging from mild irritation to necrotic tissue;  organ failure, death
',NULL,NULL,NULL,'Premix 
- Cardiovascular (Cardioplegic Solution only)',NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.25.1','Temperature Extremes','Patient is infused with a product at higher than intended temperatures (> 43°C / 109.4°F)','Pain, tissue damage, scleroses veins, scarring,  injury and death of blood components (e.g. red/white  blood  cells and platelets) with resulting risk for anemia and/or infection and clotting disorders; thrombosis, death
','- Filled Solution Containers',NULL,NULL,'Premix Frozen 
- Anti-Infectives 
- Cardiovascular   ','- Pharmacy Bulk Pack Solutions in Glass
- Empty Bags (Non-Nutrition)','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Occasional','Expected',50),
 ('HS.PIT.26.1','Unintended Bolus','Patient receives an unintended micro-bolus','In line with the infused drug’s side effect (SE) profile e.g. nausea/vomiting (N/V), headaches, sedation and drowsiness','- Sets and Set Components (excludes those that do not control flow rate) 
- LVP',NULL,NULL,NULL,NULL,NULL,NULL,'Exceptional','Expected',20),
 ('HS.PIT.26.1','Unintended Bolus','Patient receives an unintended micro-bolus','In line with the infused drug’s side effect (SE) profile e.g. nausea/vomiting (N/V), headaches, sedation and drowsiness',NULL,'- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Exceptional','Exceptional','Expected',40),
 ('HS.PIT.26.2','Unintended Bolus','Patient receives an unintended bolus within prescribed parameters','This is not an overdose. A patient will be administered a dose when not required so the impact this could have on patient will be in line with product’s SE profile e.g. N/V, headaches, sedation and drowsiness
','- LVP',NULL,NULL,NULL,NULL,NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.26.2','Unintended Bolus','Patient receives an unintended bolus within prescribed parameters','This is not an overdose. A patient will be administered a dose when not required so the impact this could have on patient will be in line with product’s SE profile e.g. N/V, headaches, sedation and drowsiness
',NULL,'- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.26.3','Unintended Bolus','Patient receives an unintended bolus above prescribed parameters','In line with the infused drug’s side effect (SE) profile e.g. nausea/vomiting (N/V), headaches, sedation, drowsiness, hypertension, hypotension (Brevibloc), respiratory failure, cardiac arrhythmia, bradycardia, organ damage/failure, death
','- Filled Solution Containers 
- LVP ','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.27.1','Unintended Exposure to Product','End User inserts or ingests removable product components','Airway compromise, respiratory distress, organ damage/failure, death','- Filled Solution Containers
- Sets and Set Components',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Compounding Accessories
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Occasional','Expected','Often',60),
 ('HS.PIT.27.1','Unintended Exposure to Product','End user inserts or ingests removable product components','Airway compromise, respiratory distress, organ damage/failure, death
',NULL,'- IV Syringe Set','- Ambulatory Pump Sets',NULL,NULL,NULL,'Periodic','Expected','Often',70),
 ('HS.PIT.27.2','Unintended Exposure to Product','End User is entangled or entrapped by the product or product components','Respiratory difficulty, bruising from restraint, asphyxiation, death','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Specialty Care ','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Rare','Expected',50),
 ('HS.PIT.27.3','Unintended Exposure to Product','End User is exposed to a sharp surface on the product','Laceration, pain, infection','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Compounding Accessories
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Rare','Expected',20),
 ('HS.PIT.27.4','Unintended Exposure to Product','End User is exposed to a spike, needle, or cannula stick','Laceration, pain, infection. Puncture wound','- Filled Solution Containers 
- Sets and Set Components','- IV Syringe Set (only Sets with spikes)','- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass
- Compounder Tube Sets
- Compounding Accessories 
- Sterile Compounding Accessories 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.27.5','Unintended Exposure to Product','End user is exposed to excessive force by a product or product components during product use','Pinching injuries, minor cuts','- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,NULL,NULL,NULL,'Rare','Expected',20),
 ('HS.PIT.27.6','Unintended Exposure to Product','End User is exposed to improper ergonomics and anthropometrics while handling the product','Back injury, muscle and joint injuries','- Filled Solution Containers
- Sets and Set Components',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- Compounder Tube Sets
- Sterile Compounding Accessories 
- Non-Sterile Compounding Accessories 
- Sterile Compounding disposables
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ',NULL,'Occasional','Expected',20),
 ('HS.PIT.27.6','Unintended Exposure to Product','End User is exposed to improper ergonomics and anthropometrics while handling the product','Back injury, muscle and joint injuries','- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,'- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories',NULL,'Exceptional','Occasional','Expected',40),
 ('HS.PIT.27.7','Unintended Exposure to Product','End User is struck by a falling product','crush, cut, mutilation, fracture, concussion','- Sets and Set Components','- IV Syringe Set ',NULL,NULL,'- Compounder Tube Sets
- Sterile Compounding Accessories 
- Non-Sterile Compounding Accessories 
- Recon Devices
',NULL,NULL,'Exceptional','Expected',20),
 ('HS.PIT.27.7','Unintended Exposure to Product','End User is struck by a falling product','crush, cut, mutilation, fracture, concussion','- Filled Solution Containers
',NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Rare','Expected',40),
 ('HS.PIT.27.7','Unintended Exposure to Product','End User is struck by a falling product','crush, cut, mutilation, fracture, concussion, death','- LVP',NULL,NULL,NULL,'- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories',NULL,'Rare','Occasional','Expected',50),
 ('HS.PIT.27.7','Unintended Exposure to Product','End User is struck by a falling product','Pinch, crush, cut, mutilation, fracture, concussion, death',NULL,'- Syringe Pump
','- Ambulatory Pump 
- Syringe Pump ',NULL,NULL,NULL,'Occasional','Often','Expected',60),
 ('HS.PIT.27.8','Unintended Exposure to Product','End User is unintentionally exposed to a chemical, drug, or material','Pain, dermal/mucosal irritation, contact dermatitis, chemical burns','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets',NULL,'- Compounder Tube Sets
- Compounding Accessories
- Sterile compounding accessories
- Sterile compounding disposables
- MB+ 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Exceptional','Occasional','Expected',40),
 ('HS.PIT.27.8','Unintended Exposure to Product','End User is unintentionally exposed to a chemical, drug, or material','Pain, dermal/mucosal irritation, contact dermatitis, chemical burns, pregnant End User: malformation of fetus , spontaneous abortion  ',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Supportive Care 
- Specialty Care',NULL,NULL,'Rare','Periodic','Expected',50),
 ('HS.PIT.27.8','Unintended Exposure to Product','End User is unintentionally exposed to a chemical, drug, or material','Pain, dermal/mucosal irritation, contact dermatitis, mutagenicity, chemical burns, pregnant End User: malformation of fetus , spontaneous abortion  ',NULL,NULL,NULL,'Premix, Prefilled Syringe, Vial/Ampoule, Tablet 
- Oncology',NULL,NULL,'Occasional','Likely','Expected',60),
 ('HS.PIT.27.9','Unintended Exposure to Product','End User slips, trips or falls when exposed to the product','Concussion, bruises, sprains, fractures, cerebral hemorrhage, death','- Filled Solution Containers
- Sets and Set Components
- LVP','- Syringe Pump 
- IV Syringe Set ','- Ambulatory Pump 
- Syringe Pump 
- Bolus Cord 
- Ambulatory Pump Sets','Premix, Prefilled Syringe, Vial/Ampoule 
- Anesthesia 
- Anti-Infectives 
- Cardiovascular 
- Oncology and Supportive Care 
- Specialty Care','- DoseEdge 
- Automated Compounders 
- Repeater Pump and Accessories 
- Sterile Compounding Disposables 
- Non sterile compounding accessories
- Compounder Tube Sets
- Compounding Accessories
- Sterile Compounding Accessories
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Pharmacy Bulk Pack Solutions in Flexible Containers
- Pharmacy Bulk Pack Solutions in Glass 
- MVI 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Rare','Likely','Expected',50),
 ('HS.PIT.28.1','Unstable Emulsion','Patient is exposed to an unstable drug emulsion','Phlebitis, diminished pharmacological effects, embolism, organ damage/failure, death','- Filled Solution Containers
',NULL,NULL,'Premix, Vial/Ampoule 
- Anesthesia (Propofol Only)','- Order Entry Calculation Software 
- DoseEdge
- Sterile Repeater Pump Disposables 
- MB+ 
- Recon Devices 
- Empty Containers (Non Nutrition) 
- Empty Containers (Nutrition) ','- Pre-mix TPN/PPN Injection w/wo Electrolytes 
- Intravenous Fat Emulsions    ','Often','Expected','Rare',80);
/*INSERT INTO `appendix a - global ract` (`ract_number_(enter_a_unique_integer_to_identify_the_row_in_the_table)`,`hazardous_situation_id_(a_unique_number_to_identify_the_hazardous_situation)`,`hazard_(potential_source_of_harm)`,`hazardous_situation_(circumstance_in_which_people,_property,_or_the_environment_are_exposed_to_one_or_more_hazard(s))`,`harm_(description_of_the_physical_injury_or_damage_to_the_health_of_people)`,`inherent_probability_of_critical_harm_(results_in_permanent_impairment_of_function,_or_life-threatening_injury_requiring_additional_medical_interventions,_or_death)`,`inherent_probability_of_moderate_harm_(results_in_temporary_or_non-life_threatening_injury/impairment_that_requires_escalation_of_care/additional_medical_interventions_or_results_in_permanent_injury_that_does_not_result_in_loss_of_function)`,`inherent_probability_of_minor_harm_(results_in_no_harm_or_an_asymptomatic_or_minimally_symptomatic_patient_not_requiring_any_intervention_or_a_patient_with_a_temporary_injury/impairment_that_does_not_require_escalation_of_care_or_additional_medical_interv`,`foreseeable_sequence_of_events_-_fsoe_(circumstances,_including_normal_use,_that_can_lead_to_a_hazardous_situation)`,`risk_reduction_(identify_the_highest_level_method(s)_to_prevent_the_hazardous_situation_from_occurring)`,`demonstration_of_effectiveness_(describe_the_evidence_that_demonstrates_effectiveness_of_the_risk_reduction(s))`,`residual_probability_of_hazardous_situation_(p1)_(determine_the_residual_probability_(post-mitigations)_of_the_hazardous_situation_occuring,_considering_foreseeable_sequences_resulting_from_use,_design,_and_manufacturing,_with_all_risk_reductions_effectiv`,`residual_probability_of_critical_harm_(pharm)_(results_in_permanent_impairment_of_function,_or_life-threatening_injury_requiring_additional_medical_interventions,_or_death)`,`residual_probability_of_moderate_harm_(pharm)_(results_in_temporary_or_non-life_threatening_injury/impairment_that_requires_escalation_of_care/additional_medical_interventions_or_results_in_permanent_injury_that_does_not_result_in_loss_of_function)`,`residual_probability_of_minor_harm_(pharm)_(results_in_no_harm_or_an_asymptomatic_or_minimally_symptomatic_patient_not_requiring_any_intervention_or_a_patient_with_a_temporary_injury/impairment_that_does_not_require_escalation_of_care_or_additional_medica`,`unnamed:_15`,`unnamed:_16`,`unnamed:_17`,`unnamed:_18`,`unnamed:_19`,`unnamed:_20`,`unnamed:_21`,`unnamed:_22`,`unnamed:_23`,`unnamed:_24`,`unnamed:_25`,`unnamed:_26`,`unnamed:_27`,`unnamed:_28`,`unnamed:_29`,`unnamed:_30`,`column1`) VALUES ('RACT.BOTTLEVIAL.001','HS.PIT.1.4','Air or Gas in System','Air or gas is administered to the patient (> 4nL to <= 1 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension,  stroke, cardiac  and/or respiratory arrest','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.002','HS.PIT.1.5','Air or Gas in System','Air or gas is administered to the patient (> 1 mL to <= 10 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','Rare
(2)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.003','HS.PIT.1.6','Air or Gas in System','Air or gas is administered to the patient (> 10 mL to <= 50 mL)','Pain, neurological changes, decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','Occasional
(3)','Expected
(7)','Exceptional
(1)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.004','HS.PIT.1.7','Air or Gas in System','Air or gas is administered to the patient (> 50 mL)','Pain, neurological changes,  decreased oxygenation, seizures, arrhythmia, pulmonary hypertension, cardiac and/or respiratory arrest, death','Expected
(7)','Rare
(2)','Exceptional
(1)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.005','HS.PIT.10.1','Excessive Therapy','Patient receives more therapy than intended (variance of > 5% to <= 10%)','Nausea/vomiting, electrolyte imbalance, hematuria, alopecia, peripheral edema, hemorrhagic cystitis, hypertension, impairment of wound healing, hematologic abnormalities, respiratory failure, cerebral edema, organ damage/failure
','Exceptional
(1)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.006','HS.PIT.10.2','Excessive Therapy','Patient receives more therapy than intended (variance of > 10% to <= 20%)','Electrolyte imbalance, Clostridium Difficile associated Diarrhea,  peripheral edema, hypertension, hypotension (Brevibloc), hemolysis, pulmonary toxicity (for Nexterone only), respiratory failure, cardiac arrhythmia, bradycardia, cerebral edema, organ damage/failure','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.007','HS.PIT.10.3','Excessive Therapy','Patient receives more therapy than intended (variance of > 20% to <= 100%)','Electrolyte imbalance, Clostridium Difficile associated Diarrhea,  peripheral edema, hypertension, hemolysis, pulmonary toxicity (for Nexterone only), respiratory failure, cardiac arrhythmia, cerebral edema, organ damage/failure, death','Occasional
(3)','Likely
(6)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.008','HS.PIT.11.1','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (organic or degradants)','Adverse events related to individual organic impurity or degradant ','Exceptional
(1)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',3,'Medium','Low','Medium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.009','HS.PIT.11.10','Impurities','Patient is exposed to residual solvents or process materials not defined by current guidances at levels exceeding toxicological qualification or clinical safety','CNS depression, narcosis, depressed respirations, liver and kidney damage','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.010','HS.PIT.11.3','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 1)','ADHD, poor impulse control, impaired cognitive ability , hypertension, damage reproductive organs, hemolytic anemia, nephropathy, cerebrovascular accident, encephalopathy, coma, convulsions, cancer, death','Rare
(2)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.011','HS.PIT.11.4','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 2)','Dermatitis, hypertension, diabetes, cancer','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.012','HS.PIT.11.5','Impurities','Patient is exposed to impurities at levels exceeding toxicological qualification or clinical safety (elemental ICH Class 3)','Dermatitis, skin ulceration,  Decreased hemoglobin, oliguria, anemia, kidney damage, hepatocellular toxicity,  renal tubular damage,  hemolysis ','N/A
(N/A)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.013','HS.PIT.11.6','Impurities','Patient is exposed to impurities that are not defined or are defined as "other" by current guidances','Nausea and vomiting, impaired immune system, anemia','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.014','HS.PIT.11.7','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 1)','Narcotic-like effect, bone marrow suppression, blood disorders including pancytopenia and aplastic anemia, cancer, death','Occasional
(3)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.015','HS.PIT.11.8','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 2)','Adverse effects due to acute toxic effect, tachycardia, metabolic acidosis,  renal failure, coma, death','Rare
(2)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.016','HS.PIT.11.9','Impurities','Patient is exposed to residual solvents or process materials at levels exceeding toxicological qualification or clinical safety (ICH Class 3)','Adverse effects due to acute toxic effect, tachycardia, metabolic acidosis,  renal failure','Exceptional
(1)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.017','HS.PIT.13.1','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 5% to <= 10%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, hemolysis, enhanced pharmacological effects','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.018','HS.PIT.13.2','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 10% to <= 20%)','Phlebitis, nausea/vomiting, electrolyte imbalances, seizures, respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.019','HS.PIT.13.3','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 20% to <= 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, seizures, hemolysis, pulmonary toxicity (for Nexterone only), respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
','Occasional
(3)','Likely
(6)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.020','HS.PIT.13.4','Incorrect Concentration or Strength','Patient is exposed to a product with a higher concentration or strength than intended (variance of > 100%)','Phlebitis, nausea/vomiting, electrolyte imbalances, Clostridium Difficile associated Diarrhea, hypotension, bradycardia, worsening of patient condition, seizures, hemolysis, pulmonary toxicity (for Nexterone only), respiratory depression, enhanced pharmacological effects, arrhythmia, organ damage/failure, death
','Periodic
(4)','Expected
(7)','Occasional
(3)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.021','HS.PIT.13.5','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 5% to <= 10%)','Diminished pharmacological effect, worsening of patient condition','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.022','HS.PIT.13.6','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 10% to <= 20%)','Diminished pharmacological effect, worsening of patient condition, neutropenic fever','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.023','HS.PIT.13.7','Incorrect Concentration or Strength','Patient is exposed to a product with a lower concentration or strength than intended (variance of > 20% to <= 100%)','Diminished pharmacological effect, worsening of patient condition, neutropenic fever, death','Occasional
(3)','Expected
(7)','Periodic
(4)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.024','HS.PIT.14.1','Incorrect Product','Patient is exposed to an incorrect or unintended product','Unintended pharmacological effect, lack of intended pharmacological effect, death','Occasional
(3)','Expected
(7)','Periodic
(4)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.025','HS.PIT.15.1','Incorrect Route of Administration','Patient is exposed to a product via an incorrect route of administration','Vessel irritation/damage, pain, tissue necrosis, organ damage/failure,  respiratory difficulty, embolism, stroke,  death','Occasional
(3)','Expected
(7)','Occasional
(3)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.026','HS.PIT.16.1','Insufficient Therapy','Patient receives less therapy than intended (variance of > 5% to <= 10%)','Decrease of pharmacological effects, worsening of patient condition','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.027','HS.PIT.16.2','Insufficient Therapy','Patient receives less therapy than intended (variance of > 10% to <= 20%)','Decrease of pharmacological effects, worsening of patient condition, neutropenic fever (for Imipenem only)','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.028','HS.PIT.16.3','Insufficient Therapy','Patient receives less therapy than intended (variance of > 20% to <= 100%)','Decrease of pharmacological effects, worsening of patient condition, neutropenic fever (for Imipenem only), death','Occasional
(3)','Expected
(7)','Periodic
(4)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.029','HS.PIT.18.1','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 minute to <= 5 minutes)','Decrease of pharmacological effects, worsening of patient condition, death','Rare
(2)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.030','HS.PIT.18.2','Interruption of Therapy','Patient experiences an interruption of therapy (> 5 minutes to <= 1 hour)','Significant decrease of pharmacological effects, worsening of patient condition, death','Occasional
(3)','Often
(5)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.031','HS.PIT.18.3','Interruption of Therapy','Patient experiences an interruption of therapy (> 1 hour to <= 3 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death','Often
(5)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.032','HS.PIT.18.4','Interruption of Therapy','Patient experiences an interruption of therapy (> 3 hours to < = 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death','Likely
(6)','Expected
(7)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.033','HS.PIT.18.5','Interruption of Therapy','Patient experiences an interruption of therapy (> 12 hours)','Significant decrease of pharmacological effects, worsening of patient condition, death','Expected
(7)','Periodic
(4)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.034','HS.PIT.19.1','Leachables','Patient is exposed to leachables at levels exceeding toxicological qualification or clinical safety','Dermatitis, pain, numbness, spasm to extremities','N/A
(N/A)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.035','HS.PIT.2.1','Allergens','End user is exposed to allergens','Type 1, 2, 3, 4 allergic reactions 
Urticaria, pruritis, orofacial edema, angioedema, rhinoconjunctivitis, dysphagia, flushing, dyspnea, hypotension, cardiac arrhythmia, shock, death','Occasional
(3)','Expected
(7)','Often
(5)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.036','HS.PIT.20.3','Mechanical Stress','Patient''s tissue is exposed to excessive tension or compression during therapy','Pain, skin tears, deep tissue damage, infiltration, extravasation (depending on drug being infused), compartment syndrome, loss of limb, death','Rare
(2)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.037','HS.PIT.21.3','Microbial Contamination','Patient is exposed to microbial contamination from a wet product contaminated at the point of or during administration or a dry product contaminated at any point','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','Occasional
(3)','Periodic
(4)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.038','HS.PIT.21.4','Microbial Contamination','Patient is exposed to microbial contamination from a product contaminated at the point of compounding or admixing, prior to the point of administration','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','Periodic
(4)','Expected
(7)','Occasional
(3)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'High','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.039','HS.PIT.21.5','Microbial Contamination','Patient is exposed to microbial contamination from a wet product contaminated prior to the point of use or from reuse of a previously dry product','Fever, chills, infection, BSI, sepsis, endocarditis,  encephalitis, organ damage/failure, septic shock,  death','Often
(5)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'High','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.040','HS.PIT.22.1','Osmolarity Extremes','Patient is exposed to hyper-osmolar product','Phlebitis, erythema, swelling, pain thrombosis and thrombophlebitis, death','Occasional
(3)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.041','HS.PIT.22.2','Osmolarity Extremes','Patient is exposed to hypo-osmolar product','Hyponatremia and associated symptoms including seizures, cerebral edema and death','Rare
(2)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.042','HS.PIT.23.1','Particulate Matter','Patient is exposed to sub-visible particulate matter at levels exceeding specifications','Phlebitis, thrombophlebitis, pain, granuloma,  thrombosis, embolism, respiratory distress/ARDS, myocarditis, organ damage/failure','Exceptional
(1)','Exceptional
(1)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.043','HS.PIT.23.2','Particulate Matter','Patient is exposed to visible particulate matter','Phlebitis, thrombophlebitis, pain, granuloma, thrombosis, embolism, respiratory distress/ARDS, myocarditis, organ damage/failure, death
','Occasional
(3)','Expected
(7)','Periodic
(4)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.044','HS.PIT.24.1','pH Extremes','Patient is exposed to a product with a pH of < 6 or > 9','Phlebitis, pain, infiltration, edema, thrombus, tissue necrosis,  infection, electrolyte abnormalities, CNS effects, organ damage/failure','Exceptional
(1)','Periodic
(4)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.045','HS.PIT.27.1','Unintended Exposure to Product','End User inserts or ingests removable product components','Airway compromise, respiratory distress, organ damage/failure, death','Occasional
(3)','Expected
(7)','Often
(5)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.046','HS.PIT.27.3','Unintended Exposure to Product','End User is exposed to a sharp surface on the product','Laceration, pain, infection','N/A
(N/A)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.047','HS.PIT.27.4','Unintended Exposure to Product','End User is exposed to a spike, needle, or cannula stick','Laceration, pain, infection. Puncture wound','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.048','HS.PIT.27.6','Unintended Exposure to Product','End User is exposed to improper ergonomics and anthropometrics while handling the product','Back injury, muscle and joint injuries','N/A
(N/A)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,NULL,'Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.049','HS.PIT.27.7','Unintended Exposure to Product','End User is struck by a falling product','crush, cut, mutilation, fracture, concussion','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.050','HS.PIT.27.8','Unintended Exposure to Product','End User is unintentionally exposed to a chemical, drug, or material','Pain, dermal/mucosal irritation, contact dermatitis, chemical burns, pregnant End User: malformation of fetus , spontaneous abortion  ','Rare
(2)','Periodic
(4)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'Medium','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.051','HS.PIT.27.9','Unintended Exposure to Product','End User slips, trips or falls when exposed to the product','Concussion, bruises, sprains, fractures, cerebral hemorrhage, death','Rare
(2)','Likely
(6)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.052','HS.PIT.28.1','Unstable Emulsion','Patient is exposed to an unstable drug emulsion','Phlebitis, diminished pharmacological effects, embolism, organ damage/failure, death','Often
(5)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'High','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.053','HS.PIT.3.1','Bodily Fluid Loss','Patient experiences bodily fluid loss (<= 15% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure','Exceptional
(1)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.054','HS.PIT.3.2','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 15% to <= 30% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','Occasional
(3)','Expected
(7)','Occasional
(3)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.055','HS.PIT.3.3','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 30% to <= 40%of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','Likely
(6)','Expected
(7)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.056','HS.PIT.3.4','Bodily Fluid Loss','Patient experiences bodily fluid loss (> 40% of their total blood volume)','Low blood pressure, tachycardia, anemia, decreased oxygenation, tissue injury, organ damage/failure, death','Expected
(7)','Rare
(2)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.057','HS.PIT.4.1','Contaminants of Animal Origin','Patient is exposed to a product contaminated with infectious prions (TSE/BSE)','Psychiatric symptoms, neurodegeneration (e.g. ataxia, dysphagia, dysarthria, cognitive impairment; and impaired vision including blindness, myoclonus; dementia); coma and death','Expected
(7)','N/A
(N/A)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.058','HS.PIT.5.1','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 minutes to <= 5 minutes)','Delay of pharmacological effects, worsening of patient condition including death','Rare
(2)','Rare
(2)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',3,'Medium','Low','Medium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.059','HS.PIT.5.2','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 5 minutes to <= 1 hour)','Delay of pharmacological effects, worsening of patient condition including death','Occasional
(3)','Often
(5)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',3,'High','Medium','Medium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.060','HS.PIT.5.3','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 1 hour to <= 3 hours)','Delay of pharmacological effects, worsening of patient condition including death','Often
(5)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',3,'High','High','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.061','HS.PIT.5.4','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 3 hours to <= 12 hours)','Delay of pharmacological effects, worsening of patient condition including death','Likely
(6)','Expected
(7)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.062','HS.PIT.5.5','Delay in Therapy','Patient experiences a delay in the initiation of therapy (> 12 hours)','Delay of pharmacological effects, worsening of patient condition including death','Expected
(7)','Periodic
(4)','N/A
(N/A)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.063','HS.PIT.6.2','Electrical, Thermal, Electromechanical Energy','End user is exposed to burning components or smoke','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ','Rare
(2)','Occasional
(3)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.064','HS.PIT.6.3','Electrical, Thermal, Electromechanical Energy','End user is exposed to fire','Pain, burns ranging from 1st to 3rd degree; respiratory distress from smoke inhalation, death  ','Occasional
(3)','Periodic
(4)','Expected
(7)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',1,'Medium','Low','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 ('RACT.BOTTLEVIAL.065','HS.PIT.7.1','Endotoxins or Pyrogens','Patient is exposed to a product containing endotoxins or pyrogens exceeding acceptable limits','Fever, chills, flushing, dyspnea, hemorrhage, toxic shock, organ damage/failure, death','Periodic
(4)','Expected
(7)','Rare
(2)','See Appendix G - MOR','See Appendix G - MOR','See Appendix G - MOR',2,'High','Medium','Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);*/
COMMIT;
