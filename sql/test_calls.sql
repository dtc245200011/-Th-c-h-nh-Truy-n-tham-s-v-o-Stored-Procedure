-- File test_calls.sql: gọi các procedure mẫu để kiểm thử

-- 1. Gọi procedure không tham số
CALL findAllCustomers();

-- 2. Gọi procedure IN (theo customerNumber)
CALL getCusById(175);

-- 3. Gọi procedure IN (theo customerName)
CALL findCustomerByName('Land of Toys Inc.');

-- 4. Gọi procedure OUT (đếm theo city)
SET @total = 0;
CALL GetCustomersCountByCity('Lyon', @total);
SELECT @total AS customers_in_Lyon;

-- 5. Gọi procedure INOUT (cập nhật phone)
SET @phone = '999-999-9999';
CALL updateCustomerPhone(175, @phone);
SELECT @phone AS updated_phone;
SELECT customerNumber, phone FROM customers WHERE customerNumber = 175;

-- 6. Gọi procedure INOUT counter
SET @counter = 1;
CALL SetCounter(@counter, 1);
CALL SetCounter(@counter, 1);
CALL SetCounter(@counter, 5);
SELECT @counter AS final_counter;

-- 7. Gọi procedure dùng cursor
CALL listCustomersByLastName('King');
