Yêu cầu của `lesson-0110a`:
- Xem thông tin và dữ liệu của bảng "application__people"
- Mở file [`models/analytics/dim_person.sql`](../models/analytics/dim_person.sql) và lấy dữ liệu:

| Tên gốc   | Tên mới          |
|-----------|------------------|
| person_id | person_key       |
| full_name | full_name        |



- Mở model [`fact_sales_order_line`](../models/analytics/fact_sales_order_line.sql) và lấy thêm dữ liệu: 

| Tên gốc                           | Tên mới             |
|-----------------------------------|---------------------|
| sales__orders.picked_by_person_id | picked_by_person_key|
