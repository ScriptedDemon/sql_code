DROP VIEW IF EXISTS master_view_1;

CREATE VIEW master_view_1 AS
SELECT
    h.`new_hsnumber` AS hs_id

FROM `hsha-parenteral-infusion` h

LEFT JOIN `appendix c - p1` p1
    ON h.`new_hsnumber` = p1.hs_id

LEFT JOIN `appendix_b_p2_conversion` p2
    ON h.`new_hsnumber` = p2.hazardouz_situation_id;



