use new_db;
DROP VIEW IF EXISTS HSHA_p1p2;

CREATE VIEW HSHA_p1p2 AS
SELECT
    h.`new_hsnumber` AS hs_id,
    COALESCE(h.`hazard`, 'N/A') AS hazard,
    COALESCE(h.`hazardous_situation`, 'N/A') AS hazardous_situation,
    COALESCE(h.`harm`, 'N/A') AS harm,
    COALESCE(h.`core_infusion_/_large_volume_pump`, 'N/A') AS core_infusion,
    COALESCE(h.`syringe_pump`, 'N/A') AS syringe_pump,
    COALESCE(h.`pain_pumps`, 'N/A') AS pain_pumps,
    COALESCE(h.`therapeutic_drug`, 'N/A') AS therapeutic_drug,
    COALESCE(h.`compounding`, 'N/A') AS compounding,
    COALESCE(h.`parenteral_nutrition`, 'N/A') AS parenteral_nutrition,
    COALESCE(h.`criticality_ranking`, 'N/A') AS criticality_ranking,    
    
    -- Appendix b and c
    
	COALESCE(b.`critical_semi_quantitative`, 'N/A') AS critical_semi_quantitative,
    COALESCE(b.`moderate_semi_quantitative`, 'N/A') AS moderate_semi_quantitative,
    COALESCE(b.`minor_semi_quantitative`, 'N/A') AS minor_semi_quantitative,
    COALESCE(c.`p1_predicted_by_subject_matter_expertise`, 'N/A') AS p1_predicted_by_subject_matter_expertise,
    COALESCE(c.`p1`, 'N/A') AS p1,
    COALESCE(b.`critical`, 'N/A') AS critical,
    COALESCE(b.`moderate`, 'N/A') AS moderate,
    COALESCE(b.`minor`, 'N/A') AS minor,
    COALESCE(b.`critical (pharm qualitative)`, 'N/A') AS critical_qualitative,
    COALESCE(b.`moderate (pharm qualitative)`, 'N/A') AS moderate_qualitative,
    COALESCE(b.`minor (pharm qualitative)`, 'N/A') AS minor_qualitative,
    COALESCE(c.`data_summary_derived_p1`, 'N/A') AS data_summary_derived_p1,
    COALESCE(c.`ucl`, 'N/A') AS ucl,
    COALESCE(c.`ucl_value_for_each_plants`, 'N/A') AS ucl_value_for_each_plants




FROM
    `hsha-parenteral-infusion` h

LEFT JOIN `appendix c - p1` c
    ON h.`new_hsnumber` = c.`hs_id`

LEFT JOIN  `appendix_b_p2_conversion` b
    ON h.`new_hsnumber` = b.`hazardous_situation_id`;
