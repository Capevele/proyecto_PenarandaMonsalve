-- SQLite
-- Muestra todos los registros dentro de la tabla Bodegas_Info_tabla
SELECT * FROM Bodegas_Info_tabla;
-- Muestra los primeros 10 registros de la tabla TLT_propuesto_tabla
SELECT * FROM TLT_propuesto_tabla LIMIT 10;
-- Seleccion e impresion de registros en la tabla TLT_propuesto_tabla ordenados por 'OriginCity' limitando a 10 registros
SELECT * FROM TLT_propuesto_tabla ORDER by OriginCity DESC LIMIT 10;
-- Muestra la informacion de las columnas en la tabla TLT_propuesto_tabla
pragma table_info(TLT_propuesto_tabla);
-- Sumarizacion del TLT_propuesto por 'Source_Dest', mostrando 10 lineas
SELECT Source_Dest, SUM(TLT_propuesto) FROM TLT_propuesto_tabla GROUP BY Source_Dest LIMIT 10;
-- Seleccion de todos los registros donde un campo toma un valor especifico
SELECT * FROM TLT_propuesto_tabla WHERE Source_Dest IS '100033-7013427201-LASV';

-- Conexion a la tabla e impresion de los primeros 10 registros
SELECT * FROM Bodegas_Info_tabla LIMIT 10;
-- Insercion de un registro. Este registro lo insertara al final de la tabla
INSERT INTO Bodegas_Info_tabla(DEST,'Plant-Desc',Description,'MULTIPLE DIVISION','Abrev.',division,Street,City,'Postal Code',Region,Country,'Jackson, MS 39203','Desc LT') 
VALUES ('1111-BULK','1111-Florida','Florida','FLN/FLS','FL','FL-S','1234 OLD TAMPA HIGHWAY','LAKELAND','33324','FL','US','East','Lakeland, FL');
-- Verificacion insercion del registro
SELECT * FROM Bodegas_Info_tabla;
-- Update de un registro. Se cambia el estado del registro creado de Florida a Georgia
UPDATE Bodegas_Info_tabla SET Description = 'Georgia' WHERE DEST = '1111-BULK';
-- Eliminacion de registros donde DEST = 1111-BULK
DELETE FROM Bodegas_Info_tabla WHERE DEST = '1111-BULK';

