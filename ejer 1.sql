## ejemplo de la guia 
SELECT d.nombre_departamento, COUNT(p.id_proyecto) AS cantidad_proyectos_asignados
FROM departamentos d
LEFT JOIN empleados e ON d.id_departamento = e.id_departamento
LEFT JOIN asignaciones a ON e.id_empleado = a.id_empleado
LEFT JOIN proyectos p ON a.id_proyecto = p.id_proyecto
GROUP BY d.nombre_departamento;

USE Cafe;

SELECT nombre_cliente FROM cliente 
INNER JOIN pedido ON cliente.id_cliente = pedido.id_cliente;

SELECT * FROM pedido WHERE fecha_registro BETWEEN '2024-02-06' AND '2024-02-07';


SELECT nombre_cliente FROM cliente ORDER BY `nacimiento_cliente` DESC;


SELECT nombre_producto FROM producto 
INNER  JOIN detalle_pedido ON producto.id_producto = detalle_pedido.id_producto;


select max(precio_producto) from producto;


select avg(precio_producto) from producto;


SELECT estado_pedido, COUNT(*) AS cantidad_pedidos
FROM pedido
GROUP BY estado_pedido;

SELECT c.nombre_cliente, COUNT(p.id_pedido) AS cantidad_pedidos
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
WHERE p.fecha_registro = '2024-02-06' 
GROUP BY c.id_cliente
ORDER BY cantidad_pedidos DESC;


SELECT nombre_cliente FROM cliente where nombre_cliente like '%D%';
SELECT * FROM pedido; 

SELECT dp.id_producto, p.nombre_producto, SUM(dp.cantidad_producto) AS total_vendido
FROM detalle_pedido dp
JOIN producto p ON dp.id_producto = p.id_producto
GROUP BY dp.id_producto, p.nombre_producto
ORDER BY total_vendido DESC
LIMIT 3;

SELECT c.nombre_cliente, COUNT(p.id_pedido) AS cantidad_pedidos
FROM cliente c
INNER JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente
ORDER BY cantidad_pedidos DESC
LIMIT 1;

SELECT p.id_pedido, c.id_cliente, c.nombre_cliente, p.estado_pedido, p.fecha_registro, dp.id_detalle, pr.nombre_producto, dp.cantidad_producto, pr.precio_producto
FROM pedido p
INNER JOIN cliente c ON p.id_cliente = c.id_cliente
INNER JOIN detalle_pedido dp ON p.id_pedido = dp.id_pedido
INNER JOIN producto pr ON dp.id_producto = pr.id_producto;