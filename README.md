# Thực hành Stored Procedure - classicmodels

## Mục tiêu
Tạo, gọi và kiểm thử stored procedures với tham số IN, OUT, INOUT trên bảng `customers` của database `classicmodels`.

## Môi trường
- MySQL 8.x (hoặc MySQL 5.7+ với hỗ trợ stored procedures)
- Database: classicmodels (import từ file SQL mẫu)

## Cấu trúc repo
- sql/
  - create_procedures.sql
  - drop_procedures.sql
  - test_calls.sql
- results/
  - getCusById_175.txt
  - GetCustomersCountByCity_Lyon.txt
  - SetCounter_examples.txt
  - INOUT_updatePhone_example.txt
  - listCustomersByLastName_King.txt
- .gitignore

## Hướng dẫn chạy
1. Import database `classicmodels` nếu chưa có:
   ```bash
   mysql -u <user> -p classicmodels < classicmodels.sql
