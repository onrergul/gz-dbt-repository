SELECT 
  date_date,
  ROUND(SUM(ads_cost),2) as ads_cost,
  ROUND(SUM(impressions),2) as impressions,
  ROUND(SUM(clicks),2) as clicks
FROM {{ref("int_campaigns")}}
GROUP BY date_date
ORDER BY date_date DESC