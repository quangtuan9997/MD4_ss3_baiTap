use ss2_baitap2;
insert into Customer values
(1,"Minh Quan",10),
(2,"Ngoc Oanh",20),
(3,"Hong Ha",50);
insert into `Order` values
(1,1,"2006/3/21",null),
(2,2,"2006/3/23",null),
(3,1,"2006/3/16",null);
insert into Product values 
(1,"May giat",3),
(2,"tu lanh",5),
(3,"Dieu hoa",7),
(4,"Quat",1),
(5,"Bep dien",2);
insert into OrderDetail values 
(1,1,3),
(1,3,7), 
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
-- hien thi oID,oDate,oTotalPrice trong bang )Order
select oID,oDate,oTotalPrice from `Order`o;
-- hiện thị  tên và danh sách SP đã mua hàng
select c.cName,p.pName from
((`Order` o join Customer c on c.cID=o.cID)
join OrderDetail od on o.oID=od.oID)
join Product p on od.pID=p.pID;
-- hiện thị danh sách khách hàng chưa mua hàng
select c.cName from Customer c where c.cID not in
(select o.cID from (`Order` o join Customer c on c.cID=o.cID)
join OrderDetail od on o.oID=od.oID);
-- hiện thị mã hóa >>>>>
select o.oID,oDate,od.opQTY*p.pPrice as `thanh tien` from 
(`Order` o join OrderDetail od on o.oID=od.oID)
join Product p on od.pID=p.pID;
