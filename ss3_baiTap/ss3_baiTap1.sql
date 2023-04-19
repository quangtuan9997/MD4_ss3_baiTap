use QuanLySinhVien;
-- Hiển thị tất cả sinh viên có tên bắt đầu bảng kí tự 'h'
select* from Student where StudentName like "h%";
-- hiển thị thông tin lớp học có thời gian bắt đầu vào tháng 12
select * from Class where month(StartDate)=12 ;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5;
select* from `Subject` where Credit between 3 and 5;
-- Thay đổi mã lớp(ClassID) của sinh viên có tên 'Hung'là 2
update Student set ClassId = 2 where StudentName="Hung";
-- hiển thị các thông tin
select s.StudentName, sb.SubName, m.Mark
from ((mark m 
join student s on m.subId= s.studentId)
join `Subject` sb on m.subId=sb.SubID) order by mark;