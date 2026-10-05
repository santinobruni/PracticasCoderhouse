--Creamos BD
CREATE DATABASE PRACTICASM2_1;
--Clausula use
USE PRACTICASM2_1;
--Definimos la tabla cliente
CREATE TABLE Clientes(
-- int para asignar un numero que lo identifique y que sea la primary key para que sea not null
id_clinetes int PRIMARY KEY,
--varchar ya que solo se permite como maximo 100 caracteres
nombre VARCHAR(100) NOT NULL,
-- text porque no hay un limite de caracteres
perfil_bio text not null,
--Hablamos de una fecha por eso usamos el tipo de dato date
fecha_registro date not null);


--Definimos la tabla producto
CREATE TABLE Productos(
-- int para asignar un numero que lo identifique y que sea la primary key para que sea not null
id_producto int PRIMARY KEY,
--varchar ya que solo se permite como maximo 255 caracteres
descripcion VARCHAR(255) NOT NULL,
-- cuando queremos definir precios usamos decimal
precio DECIMAL(10,2) not null,
--Esto permite que el valor sea numerico y al darle un contexto entenderemo que 1 es inactivo y 2 es activo
esta_activo INT CHECK (esta_activo IN (1,2)
));