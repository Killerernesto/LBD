use Muebleria

select * FROM empleados as em
INNER join venta as ve on em.id_empleado = ve.id_empleado

SELECT * FROM PRODUCTOS as pro
inner join venta as ve on pro.Producto_Id = ve.Producto_Id

SELECT * FROM Tickets as tk
inner join Sucursales as su on tk.Sucursal_Id = su.Sucursal_Id

Select * FROM Venta as ve
inner join Productos as pro on ve.Producto_Id = pro.Producto_Id

Select * FROM Compra as com
inner join provedor as pro on com.Provedor_Id =  pro.Provedor_Id

SELECT * FROM pago 
where pago = CONVERT (money, SYSDATETIME())

SELECT * FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())

SELECT * FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())

SELECT * FROM venta 
where year(Dia_Venta) = year(GETDATE())
