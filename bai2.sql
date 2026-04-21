create database bai2_ss6;
use bai2_ss6;

CREATE TABLE Rooms (
    id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id INT,
    room_name VARCHAR(255),
    price_per_night DECIMAL(10, 2)
);

-- 2. Thêm dữ liệu mẫu
INSERT INTO Rooms (hotel_id, room_name, price_per_night) VALUES
(1, 'Phòng Đơn Standard', 500000),
(1, 'Phòng Đôi Deluxe', 8000000),
(1, 'Phòng Tổng Thống', 5000000),
(2, 'Phòng View Biển', 1200000),
(2, 'Phòng Gia Đình', 2000000),
(3, 'Phòng Dorm', 150000),
(3, 'Phòng Studio', 450000);

-- bỏ đi room_name bởi nó ko thuộc GROUP BY sẽ gây lỗi do ko xác định được giá trị duy nhất cho mỗi nhóm
SELECT 
    hotel_id, 
    MIN(price_per_night) AS cheapest_price
FROM 
    Rooms
GROUP BY 
    hotel_id;
