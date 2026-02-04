SELECT
  o.order_id,
  o.order_date,
  c.customer_id,
  p.product_name,
  p.category,
  oi.quantity,
  oi.unit_price,
  oi.quantity * oi.unit_price AS revenue
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
  ON o.customer_id = c.customer_id
JOIN {{ ref('stg_order_items') }} oi
  ON o.order_id = oi.order_id
JOIN {{ ref('stg_products') }} p
  ON oi.product_id = p.product_id
