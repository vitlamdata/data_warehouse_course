Theo mô hình Snowflake Schema:
- Dữ liệu thuộc về một dòng trong đơn hàng sẽ nằm bên bảng `sales__order_lines`, hay còn gọi chung là bảng Line.
- Dữ liệu thuộc về ĐƠN HÀNG sẽ nằm bên bảng `sales__orders`, hay còn gọi chung là bảng Header.
Nếu chỗ này chưa hiểu, bạn cần xem lại [Chuỗi Data Modeling](https://www.youtube.com/playlist?list=PL01fPqVNMdrlMwymamk6zuISnC6USwAtI)

Chúng ta cũng sẽ cần lấy data của bảng Header và đem nó vào "fact_sales_order_line" để tiện cho sau này (tiện sao thì bài sau sẽ rõ 😁).

Yêu cầu của `lesson-0106b`:
- Xem thông tin và dữ liệu của bảng `sales__orders`
- Mở model [`fact_sales_order_line`](../models/analytics/fact_sales_order_line.sql), lấy thêm dữ liệu: 

| Tên gốc                   | Tên mới     |
|---------------------------|-------------|
| sales__orders.customer_key| customer_key|