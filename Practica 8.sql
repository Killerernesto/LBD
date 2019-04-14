create trigger actualizacion
  on Productos
  for update
  as
   if (update(Precio_producto) and
    not update(Precio_producto) )
   begin
    select 
    (d.Producto_id+'-'+ d.Precio_Producto) as 'registro anterior',
    (i.Producto_id+'-'+ i.Precio_Producto) as 'registro actualizado'
     from deleted as d
     join inserted as i
     on d.Producto_Id=i.Producto_Id
  
   end;

CREATE TRIGGER Valores ON Productos
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted;
 SELECT * FROM inserted;

CREATE PROCEDURE almacen as
SELECT *
FROM Almacen
go;
EXEC todosalmacen;

CREATE PROCEDURE todosempleados as
select * 
from empleados
go; 
EXEC todosempleados;

CREATE PROCEDURE todosproductos as
SELECT * 
FROM PRODUCTOS 
go;
EXEC todosproductos;

CREATE PROCEDURE todosticket as
SELECT * 
FROM Ticket 
go;
EXEC todosticket;

CREATE PROCEDURE todasventa as
Select *
from Venta 
go;
EXEC todasventa;

CREATE PROCEDURE todascompra as
Select *
from Compra 
go;
EXEC todascompra;

CREATE PROCEDURE comprashoy as
SELECT * 
FROM compra 
where Dia_Compra = CONVERT (date, SYSDATETIME())
EXEC comprashoy;

CREATE PROCEDURE ventashoy as
SELECT * 
FROM venta 
where Dia_Venta = CONVERT (date, SYSDATETIME())
EXEC ventashoy;

CREATE PROCEDURE ventasmes as
SELECT * 
FROM venta 
where month(Dia_Venta) = MONTH(GETDATE())
EXEC ventasmes;

CREATE PROCEDURE ventasaño as
SELECT * 
FROM venta 
where year(Dia_Venta) = year(GETDATE());
EXEC ventasaño;



CREATE FUNCTION Mayusculas
(
@Nombre Varchar(50),
@Apellido Varchar(50)
)
RETURNS Varchar(100)
AS
BEGIN
 RETURN (UPPER(@Apellido) + ', ' + UPPER(@Nombre))
END


DECLARE @ConsultaSQL NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)
SET @Tabla = 'Productos'
SET @ConsultaSQL = 'SELECT * FROM ' + @Tabla
EXEC(@ConsultaSQL);
