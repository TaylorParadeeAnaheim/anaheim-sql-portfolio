SELECT COUNT(*) AS total_count, customer_class
FROM (
  SELECT DISTINCT mtr.CMTR_CUST,
                  mtr.CMTR_APPLICATION,
                  mtr.CMTR_CLASS1,
                  CASE
                      WHEN mtr.CMTR_CLASS1 IN (100,110,115,120,125,135,500,501,510,520) THEN 'Residential'
                      WHEN mtr.CMTR_CLASS1 IN (300,301,302,303,310,315,320,321,322,325,330,335,600) THEN 'Industrial'
                      WHEN mtr.CMTR_CLASS1 IN (200,201,202,203,210,212,215,220,222,225,235) THEN 'Small  Medium Commercial'
                      WHEN mtr.CMTR_CLASS1 IN (400,401,410,420,430,435,450,451) THEN 'Municipal'
                      WHEN mtr.CMTR_CLASS1 = 202 THEN 'Pump'
                      WHEN mtr.CMTR_CLASS1 IN (711, 713) THEN 'Bars Fiber'
                      WHEN mtr.CMTR_CLASS1 IN (700, 712) THEN 'SCADA MONITORING FEE'
                      ELSE 'Other'
                  END AS Customer_Class,
                  acd.CIACD_DESC,
                  mtr.CMTR_ACTIVE_CD
  FROM enquesta.FCICMTR mtr
  JOIN cis.fciacd acd ON mtr.CMTR_APPLICATION = acd.CIACD_APPLICATION
                      AND acd.CIACD_CLSTP = 4
                      AND mtr.CMTR_CLASS1 = acd.CIACD_ACD
  WHERE mtr.CMTR_APPLICATION = 1
    AND mtr.CMTR_ACTIVE_CD = 0
) 
GROUP BY customer_class
ORDER BY customer_class;
