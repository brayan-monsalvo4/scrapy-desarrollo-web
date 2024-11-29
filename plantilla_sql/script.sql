CREATE TABLE impresoras (
    id_impresora INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    anio_lanzamiento INTEGER NOT NULL,
    volumen_construccion VARCHAR(20) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    moneda VARCHAR(20) NOT NULL,
    url_imagen VARCHAR(100) NOT NULL,
    stock INT NOT NULL DEFAULT 20  -- Nuevo campo para el stock
);

-- Crear la tabla de clientes
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    direccion TEXT NOT NULL
);

-- Crear la tabla de ventas
CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY AUTOINCREMENT,
    id_impresora INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    fecha_venta DATE NOT NULL,
    cantidad INTEGER NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_impresora) REFERENCES impresoras(id_impresora),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


-- Insertar datos en la tabla impresoras_3d
{% for impresora in impresoras %}
INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "{{ impresora.nombre }}", "{{ impresora.marca }}", "{{ impresora.tipo }}", {{ impresora.anio_lanzamiento }}, "{{ impresora.volumen_construccion }}", {{ impresora.precio }}, "{{ impresora.moneda }}", "{{ impresora.url_imagen }}");
{% endfor %}    


-- Insertar datos de ejemplo en la tabla clientes
INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES
   ('Juan Pérez', 'juan.perez@email.com', '+34611222333', 'Calle Mayor 1, Madrid'),
    ('María García', 'maria.garcia@email.com', '+34622333444', 'Avenida Principal 23, Barcelona'),
    ('Carlos López', 'carlos.lopez@email.com', '+34633444555', 'Plaza España 5, Valencia'),
    ('Ana Martínez', 'ana.martinez@email.com', '+34644555666', 'Calle Real 15, Sevilla'),
   ('Pedro Sánchez', 'pedro.sanchez@email.com', '+34655666777', 'Ronda Norte 8, Málaga');






