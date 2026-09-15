-- 1. TABLAS MAESTRAS (Dimensiones o Catálogos)

CREATE TABLE CLIENTES (
    id_cliente NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_cliente VARCHAR2(100) NOT NULL
);

CREATE TABLE SUCURSALES (
    id_sucursal NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_sucursal VARCHAR2(100) NOT NULL
);

CREATE TABLE ARTICULOS (
    id_articulo NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre_articulo VARCHAR2(100) NOT NULL,
    valor_unitario_actual NUMBER(10,2) NOT NULL
);

-- 2. TABLA TRANSACCIONAL PRINCIPAL (Cabecera de Factura)

CREATE TABLE FACTURAS (
    numero_factura NUMBER PRIMARY KEY,
    fecha_factura DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    id_cliente NUMBER NOT NULL,
    id_sucursal NUMBER NOT NULL,
    forma_pago VARCHAR2(50) NOT NULL,
    valor_total NUMBER(12,2) NOT NULL,
    valor_pagado NUMBER(12,2) NOT NULL,
    -- Relaciones
    CONSTRAINT fk_factura_cliente FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    CONSTRAINT fk_factura_sucursal FOREIGN KEY (id_sucursal) REFERENCES SUCURSALES(id_sucursal)
);

-- 3. TABLA TRANSACCIONAL DE DETALLE (Cuerpo de la Factura)

CREATE TABLE DETALLE_FACTURAS (
    numero_factura NUMBER NOT NULL,
    id_articulo NUMBER NOT NULL,
    cantidad NUMBER NOT NULL,
    -- Se guarda el valor unitario en el momento de la venta por si el precio cambia en el futuro
    valor_unitario NUMBER(10,2) NOT NULL, 
    -- Llave primaria compuesta
    PRIMARY KEY (numero_factura, id_articulo),
    -- Relaciones
    CONSTRAINT fk_detalle_factura FOREIGN KEY (numero_factura) REFERENCES FACTURAS(numero_factura),
    CONSTRAINT fk_detalle_articulo FOREIGN KEY (id_articulo) REFERENCES ARTICULOS(id_articulo)
);