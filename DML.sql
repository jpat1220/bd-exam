-- TABLA TIPO_USUARIO
INSERT INTO tipo_usuario (nombre)
VALUES ('Cliente'), -- 1
('Empleado'), 		-- 2
('Proveedor');		-- 3

-- TABLA CIUDAD
INSERT INTO ciudad (nombre_ciudad, codigo_postal)
VALUES ('Gotham City', '10001'),
('Metropolis', '10002'),
('Tokyo-3', '10003'),
('Citadel of Ricks', '10004'),
('New York', '10005'),
('Neo Tokyo', '10006'),
('Springfield', '10007'),
('Night City', '10008'),
('Central City', '10009'),
('Soul Society', '10010');

--TABLA USUARIO
INSERT INTO usuario (nombre, apellido, tipo_usuario_id, condicion_especial, cargo, departamento, nit, ciudad_id)
VALUES
-- Clientes
('Bruce', 'Wayne', 1, NULL, NULL, NULL, NULL, 1),
('Morty', 'Smith', 1, 'Acompañante frecuente', NULL, NULL, NULL, 4),
('Shinji', 'Ikari', 1, 'Piloto EVA', NULL, NULL, NULL, 3),
('Ken', 'Kaneki', 1, 'Ghoul parcial', NULL, NULL, NULL, 6),
('Peter', 'Parker', 1, 'Fotógrafo freelance', NULL, NULL, NULL, 5),
('Harvey', 'Dent', 2, NULL, 'Abogado', 'Justicia', NULL, 1),
('Misato', 'Katsuragi', 2, NULL, 'Comandante', 'NERV', NULL, 3),
('Alfred', 'Pennyworth', 2, NULL, 'Mayordomo', 'Soporte', NULL, 1),
('Adonis', 'Creed', 2, NULL, 'Entrenador', 'Gimnasio Central', NULL, 2),
('Rick', 'Sanchez', 3, 'Científico loco', NULL, NULL, '90012345', 4),
('Tony', 'Stark', 3, NULL, NULL, NULL, '83004567', 5),
('Rick', 'Prime', 3, NULL, NULL, NULL, '91000999', 4);

-- TABLA SERVICIOS
INSERT INTO servicio (nombre, descripcion, estado)
VALUES
('Asesoría Técnica', 'Orientación y soporte sobre productos tecnológicos.', 'Activo'),
('Mantenimiento', 'Revisión y reparación de equipos o sistemas.', 'Activo'),
('Consultoría Empresarial', 'Servicio de asesoramiento estratégico a empresas.', 'Activo'),
('Reparación de Equipos', 'Arreglo de dispositivos o maquinaria defectuosa.', 'Activo'),
('Capacitación Laboral', 'Entrenamiento especializado para empleados.', 'Activo'),
('Soporte Remoto', 'Asistencia técnica a distancia mediante conexión segura.', 'Activo'),
('Entrega de Productos', 'Servicio de entrega puerta a puerta.', 'Activo'),
('Atención al Cliente', 'Atención personalizada en punto físico o virtual.', 'Activo'),
('Desarrollo de Software', 'Creación y mantenimiento de soluciones digitales.', 'Activo'),
('Monitoreo de Sistemas', 'Supervisión continua de servicios tecnológicos.', 'Activo');

--TABLA TURNOS
INSERT INTO turno (usuario_id, empleado_id, servicio_id, fecha, hora_inicio, hora_fin, estado)
VALUES
(1, 6, 1, '2025-10-18', '09:00', '09:30', 'Atendido'),     
(2, 7, 2, '2025-10-18', '10:00', '10:30', 'Atendido'),     
(3, 9, 3, '2025-10-19', '11:00', '11:45', 'Pendiente'),       
(4, 8, 4, '2025-10-19', '12:00', '12:30', 'Atendido'),        
(5, 6, 5, '2025-10-20', '13:00', '13:30', 'Pendiente'),    
(1, 7, 6, '2025-10-21', '14:00', '14:45', 'Atendido'),      
(2, 8, 7, '2025-10-21', '15:00', '15:30', 'Cancelado'),      
(3, 9, 8, '2025-10-22', '16:00', '16:30', 'Atendido'),       
(4, 7, 9, '2025-10-22', '17:00', '17:45', 'Pendiente'),       
(5, 6, 10, '2025-10-23', '18:00', '18:30', 'Atendido');  
