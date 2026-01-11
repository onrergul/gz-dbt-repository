SELECT
  s.products_id,
  s.date_date,
  s.orders_id,
  s.revenue,
  s.quantity,
  p.purchase_price,
  ROUND((p.purchase_price*s.quantity),2) AS purchase_cost,
  ROUND((s.revenue - p.purchase_price*s.quantity),2) AS margin
FROM {{ ref('stg_raw__sales') }} as s
LEFT JOIN {{ ref('stg_raw__product') }} as p ON p.products_id = s.products_id