Yêu cầu của `lesson-0202b`: 
- Mở model [`dim_sales_order_line_indicator`](../models/analytics/dim_sales_order_line_indicator.sql), sửa query để tạo một cột primary key mới là composition key.
- Mở model [`fact_sales_order_line`](../models/analytics/fact_sales_order_line.sql), tạo một cột foreign key mới để liên kết tới model [`dim_sales_order_line_indicator`](../models/analytics/dim_sales_order_line_indicator.sql).
