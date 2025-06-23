DROP VIEW IF EXISTS HSHA_p1p2;
CREATE VIEW HSHA_p1p2 AS
SELECT
    h.`new_hsnumber` AS hs_id,
    h.`hazard`,
    h.`hazardous_situation`,
    h.`harm`,
    h.`core_infusion_/_large_volume_pump`,
    h.`syringe_pump`,
    h.`pain_pumps`,
    h.`therapeutic_drug`,
    h.`compounding`,
    h.`parenteral_nutrition`,
    h.`criticality_ranking`,
    -- Appendix b
    
    b.`critical_semi_quantitative`,
    b.`moderate_semi_quantitative`,
    b.`minor_semi_quantitative`,
    c.`p1_predicted_by_subject_matter_expertise`,
    c.`p1`,
    b.`critical`,
    b.`moderate`,
    b.`minor`,
    b.`critical.1`,
    b.`moderate.1`,
    b.`minor.1`,
    c.`data_summary_derived_p1`,
    c.`ucl`,
    c.`ucl_value_for_each_plants`

FROM
    `hsha-parenteral-infusion` h

LEFT JOIN `appendix c - p1` c
    ON h.`new_hsnumber` = c.`hs_id`

LEFT JOIN  `appendix_b_p2_conversion` b
    ON h.`new_hsnumber` = b.`hazardous_situation_id`;
`appendix a - global ract`