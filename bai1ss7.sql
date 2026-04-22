-- khi price = (subquery) có nghĩa là cột price đấy được gán 1 giá trị cứng chứ không phải nhiều giá trị
-- Hôm nay chạy được là do price chỉ có một giá trị và subquery chỉ trả về một giá trị 
-- Hôm sau bị lỗi là do đã thêm nhiều khoá học khác khiến subquery trả về nhiều giá trị khác nhau
-- khiến SQL không thể xử lý
-- Chính điều đó khiến hệ thống bị lỗi và màn hình của kế toán hiển thị lỗi 

-- Câu lệnh đúng
select title, price
from courses
where price in (
    select price
    from courses
    where instructor_id = 5
);