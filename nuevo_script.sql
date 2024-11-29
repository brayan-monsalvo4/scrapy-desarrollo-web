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

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab P1S", "Bambu", "FDM", 2023, "256 x 256 x 256 mm", 699, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_P1S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab X1E", "Bambu", "FDM", 2023, "256 x 256 x 256 mm", 2500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_X1E");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab A1", "Bambu", "FDM", 2023, "256 x 256 x 256 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_A1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab A1 Mini", "Bambu", "FDM", 2023, "180 x 180 x 180 mm", 299, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_A1_Mini");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab X1 Carbon", "Bambu", "FDM", 2022, "256 x 256 x 256 mm", 1199, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_X1_Carbon");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab P1P", "Bambu", "FDM", 2022, "256 x 256 x 256 mm", 599, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_P1P");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Bambu Lab X1 Carbon Combo", "Bambu", "FDM", 2022, "256 x 256 x 256 mm", 1500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Bambu_Lab_X1_Carbon_Combo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa MK4", "Prusa", "FDM", 2023, "250 x 210 x 220 mm", 799, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_MK4");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa XL", "Prusa", "FDM", 2024, "360 x 360 x 360 mm", 1999, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_XL");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa CORE One", "Prusa", "FDM", 2024, "250 x 220 x 270 mm", 1200, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_CORE_One");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa MK4S", "Prusa", "FDM", 2024, "250 x 210 x 220 mm", 800, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_MK4S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa MINI+", "Prusa", "FDM", 2020, "180 x 180 x 180 mm", 429, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_MINI_");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Prusa MK3S+", "Prusa", "FDM", 2020, "250 x 210 x 210 mm", 649, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Prusa_MK3S_");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality K1C", "Creality", "FDM", 2024, "220 x 220 x 250 mm", 559, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/K1C");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-M4", "Creality", "FDM", 2023, "450 x 450 x 470 mm", 1099, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-M4");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 V3 SE", "Creality", "FDM", 2023, "220 x 220 x 250 mm", 219, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_V3_SE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 Max Neo", "Creality", "FDM", 2022, "300 x 300 x 320 mm", 389, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_Max_Neo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality K1 SE", "Creality", "FDM", 2024, "220 x 220 x 250 mm", 360, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/K1_SE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 V3", "Creality", "FDM", 2024, "220 x 220 x 250 mm", 420, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_V3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality K1 Max", "Creality", "FDM", 2023, "300 x 300 x 300 mm", 899, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/K1_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Sermoon D3 Pro", "Creality", "FDM", 2023, "290 x 200 x 300 mm", 2800, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sermoon_D3_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 5 S1", "Creality", "FDM", 2023, "220 x 220 x 280 mm", 529, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_5_S1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Sermoon D3", "Creality", "FDM", 2023, "300 x 250 x 300 mm", 2000, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sermoon_D3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality K1", "Creality", "FDM", 2023, "220 x 220 x 250 mm", 518, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/K1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 V3 KE", "Creality", "FDM", 2023, "220 x 220 x 240 mm", 279, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_V3_KE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 V2 Neo", "Creality", "FDM", 2022, "220 x 220 x 250 mm", 249, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_V2_Neo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-10 Smart Pro", "Creality", "FDM", 2022, "300 x 300 x 400 mm", 799, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-10_Smart_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 S1 Plus", "Creality", "FDM", 2022, "300 x 300 x 300 mm", 549, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_S1_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 S1 Pro", "Creality", "FDM", 2022, "220 x 220 x 270 mm", 499, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_S1_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 Neo", "Creality", "FDM", 2022, "220 x 220 x 250 mm", 239, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_Neo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 S1", "Creality", "FDM", 2021, "220 x 220 x 270 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_S1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 Max", "Creality", "FDM", 2021, "300 x 300 x 340 mm", 329, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-10 Smart", "Creality", "FDM", 2021, "300 x 300 x 400 mm", 599, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-10_Smart");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 2 Pro", "Creality", "FDM", 2021, "165 x 165 x 180 mm", 169, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_2_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-10S Pro V2", "Creality", "FDM", 2020, "300 x 300 x 400 mm", 539, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-10S_Pro_V2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 3 V2", "Creality", "FDM", 2020, "220 x 220 x 250 mm", 279, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_3_V2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-6 Max", "Creality", "FDM", 2020, "400 x 400 x 400 mm", 869, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-6_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-10 V3", "Creality", "FDM", 2020, "300 x 300 x 400 mm", 459, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-10_V3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality CR-10 Max", "Creality", "FDM", 2019, "450 x 450 x 470 mm", 979, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/CR-10_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality Ender 5 Plus", "Creality", "FDM", 2019, "350 x 350 x 400 mm", 579, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Ender_5_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "AnkerMake M5C", "AnkerMake", "FDM", 2023, "220 x 220 x 250 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/AnkerMake_M5C");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "AnkerMake M5", "AnkerMake", "FDM", 2022, "220 x 220 x 250 mm", 699, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/AnkerMake_M5");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ SideKick 747 KT-PR0058", "LulzBot", "FDM", 2021, "231 x 231 x 248 mm", 1285, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_SideKick_747_KT-PR0058");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ SideKick 289 KT-PR0057", "LulzBot", "FDM", 2021, "162 x 162 x 181 mm", 995, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_SideKick_289_KT-PR0057");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ Pro S", "LulzBot", "FDM", 2020, "285 x 285 x 285 mm", 3995, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_Pro_S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ Workhorse", "LulzBot", "FDM", 2019, "280 x 280 x 285 mm", 2950, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_Workhorse");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ Pro", "LulzBot", "FDM", 2019, "285 x 285 x 285 mm", 4950, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot Mini 2", "LulzBot", "FDM", 2017, "160 x 160 x 180 mm", 1495, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_Mini_2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ 6", "LulzBot", "FDM", 2016, "280 x 280 x 250 mm", 2499, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_6");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "LulzBot TAZ 5 Desktop", "LulzBot", "FDM", 2015, "298 x 275 x 250 mm", 2200, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/LulzBot_TAZ_5_Desktop");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Kingroon KP3S Pro V2", "Kingroon", "FDM", 2023, "200 x 200 x 200 mm", 299, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Kingroon_KP3S_Pro_V2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Kingroon KLP1 Core XY", "Kingroon", "FDM", 2023, "210 x 210 x 210 mm", 379, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Kingroon_KLP1_Core_XY");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Kingroon KP3S 3.0", "Kingroon", "FDM", 2021, "180 x 180 x 180 mm", 229, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Kingroon_KP3S_3.0");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Kingroon RF-03", "Kingroon", "FDM", 2021, "180 x 180 x 180 mm", 0, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Kingroon_RF-03");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Kingroon KP3S", "Kingroon", "FDM", 2021, "180 x 180 x 180 mm", 229, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Kingroon_KP3S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery Sidewinder X3 Plus", "Artillery", "FDM", 2023, "300 x 300 x 400 mm", 439, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_Sidewinder_X3_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery Sidewinder X3 Pro", "Artillery", "FDM", 2023, "240 x 240 x 260 mm", 329, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_Sidewinder_X3_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery SW-X2", "Artillery", "FDM", 2021, "300 x 300 x 400 mm", 469, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_SW-X2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery Genius Pro", "Artillery", "FDM", 2021, "220 x 220 x 250 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_Genius_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery Sidewinder SW-X2", "Artillery", "FDM", 2021, "300 x 300 x 400 mm", 469, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_Sidewinder_SW-X2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Artillery Hornet", "Artillery", "FDM", 2020, "220 x 220 x 250 mm", 419, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Artillery_Hornet");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FLSun S1", "FLSun", "FDM", 2024, "320 x 320 x 430 mm", 1658, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FLSun_S1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FLSun T1", "FLSun", "FDM", 2023, "260 x 260 x 330 mm", 553, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FLSun_T1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FLSun V400", "FLSun", "FDM", 2022, "300 x 300 x 410 mm", 849, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FLSun_V400");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FLSun Super Racer", "FLSun", "FDM", 2021, "260 x 260 x 330 mm", 469, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FLSun_Super_Racer");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FLSun Q5", "FLSun", "FDM", 2020, "200 x 200 x 200 mm", 253, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FLSun_Q5");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV06", "Sovol", "FDM", 2021, "220 x 220 x 220 mm", 299, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV06");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV08", "Sovol", "FDM", 2024, "350 x 350 x 345 mm", 550, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV08");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV06 ACE", "Sovol", "FDM", 2024, "220 x 220 x 250 mm", 400, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV06_ACE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV07 Plus", "Sovol", "FDM", 2023, "300 x 300 x 350 mm", 380, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV07_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV07", "Sovol", "FDM", 2023, "220 x 220 x 250 mm", 290, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV07");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV06 Plus", "Sovol", "FDM", 2023, "300 x 300 x 340 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV06_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol T500", "Sovol", "FDM", 2023, "500 x 500 x 500 mm", 900, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_T500");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV05", "Sovol", "FDM", 2022, "220 x 220 x 220 mm", 349, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV05");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV03", "Sovol", "FDM", 2021, "350 x 350 x 350 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV03");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Sovol SV01", "Sovol", "FDM", 2021, "240 x 280 x 240 mm", 179, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Sovol_SV01");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 4 Max", "ELEGOO", "FDM", 2023, "420 x 420 x 480 mm", 470, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_4_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 4 Pro", "ELEGOO", "FDM", 2023, "225 x 225 x 265 mm", 330, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_4_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 4 Plus", "ELEGOO", "FDM", 2023, "320 x 320 x 385 mm", 350, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_4_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 4", "ELEGOO", "FDM", 2023, "225 x 225 x 265 mm", 300, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_4");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO OrangeStorm Giga", "ELEGOO", "FDM", 2023, "800 x 800 x 1000 mm", 1250, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_OrangeStorm_Giga");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 3 Plus", "ELEGOO", "FDM", 2022, "320 x 320 x 400 mm", 400, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_3_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 3 Max", "ELEGOO", "FDM", 2022, "420 x 420 x 500 mm", 540, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_3_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 3", "ELEGOO", "FDM", 2022, "220 x 220 x 280 mm", 100, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Neptune 3 Pro", "ELEGOO", "FDM", 2022, "225 x 225 x 280 mm", 250, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Neptune_3_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Voxelab Aquila D1", "Voxelab", "FDM", 2022, "220 x 220 x 220 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Voxelab_Aquila_D1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Voxelab Aquila S2", "Voxelab", "FDM", 2022, "220 x 220 x 220 mm", 219, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Voxelab_Aquila_S2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Voxelab Aquila C2", "Voxelab", "FDM", 2021, "220 x 220 x 220 mm", 165, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Voxelab_Aquila_C2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Voxelab Aquila X2", "Voxelab", "FDM", 2021, "220 x 220 x 220 mm", 179, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Voxelab_Aquila_X2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET A8 v2", "ANET", "FDM", 2021, "220 x 220 x 250 mm", 245, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_A8_v2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET ET5 Pro", "ANET", "FDM", 2020, "300 x 300 x 400 mm", 489, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_ET5_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET ET5", "ANET", "FDM", 2019, "300 x 300 x 400 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_ET5");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET A8 Plus", "ANET", "FDM", 2019, "300 x 300 x 350 mm", 339, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_A8_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET ET4", "ANET", "FDM", 2019, "220 x 220 x 250 mm", 279, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_ET4");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET A6", "ANET", "FDM", 2016, "220 x 220 x 250 mm", 199, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_A6");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Qidi Tech X-CF Pro", "Qidi", "FDM", 2021, "300 x 250 x 300 mm", 1849, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Qidi_Tech_X-CF_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Qidi Tech X-Plus", "Qidi", "FDM", 2018, "270 x 200 x 200 mm", 699, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Qidi_Tech_X-Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra 2 Neo", "Anycubic", "FDM", 2023, "220 x 220 x 250 mm", 260, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra_2_Neo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra 3 Combo", "Anycubic", "FDM", 2024, "250 x 250 x 260 mm", 450, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra_3_Combo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra Neo", "Anycubic", "FDM", 2022, "220 x 220 x 250 mm", 249, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra_Neo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra Max", "Anycubic", "FDM", 2022, "400 x 400 x 450 mm", 749, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra Go", "Anycubic", "FDM", 2022, "220 x 220 x 220 mm", 180, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra_Go");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Kobra", "Anycubic", "FDM", 2022, "220 x 220 x 250 mm", 289, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Kobra");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Modix BIG-120X", "Modix", "FDM", 2022, "1200 x 600 x 640 mm", 7500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Modix_BIG-120X");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Modix BIG-60 V4", "Modix", "FDM", 2017, "600 x 600 x 660 mm", 4900, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Modix_BIG-60_V4");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "FlashForge Guider 3", "FlashForge", "FDM", 2022, "300 x 250 x 340 mm", 2000, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/FlashForge_Guider_3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Flashforge Guider 3 Plus", "Flashforge", "FDM", 2022, "350 x 350 x 600 mm", 5000, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Flashforge_Guider_3_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Flashforge Artemis", "Flashforge", "FDM", 2022, "190 x 195 x 190 mm", 499, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Flashforge_Artemis");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Flashforge Creator Pro 2", "Flashforge", "FDM", 2016, "200 x 150 x 200 mm", 649, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Flashforge_Creator_Pro_2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Flashforge Dreamer", "Flashforge", "FDM", 2014, "230 x 150 x 230 mm", 871, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Flashforge_Dreamer");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "MakerBot sketch", "MakerBot", "FDM", 2022, "150 x 150 x 150 mm", 1300, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/MakerBot_sketch");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Snapmaker J1S HIGH SPEED", "Snapmaker", "FDM", 2022, "300 x 200 x 200 mm", 1350, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Snapmaker_J1S_HIGH_SPEED");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Snapmaker Artisan 3-in-1", "Snapmaker", "FDM", 2022, "350 x 400 x 400 mm", 3000, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Snapmaker_Artisan_3-in-1");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Raise3D E2CF", "Raise3D", "FDM", 2022, "330 x 240 x 240 mm", 4500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Raise3D_E2CF");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT-MAGE", "Creality", "RESINA", 2023, "228 x 128 x 230 mm", 350, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/HALOT-MAGE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT MAGE PRO", "Creality", "RESINA", 2023, "228 x 128 x 230 mm", 500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Creality_HALOT_MAGE_PRO");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT-ONE PRO", "Creality", "RESINA", 2022, "130 x 122 x 160 mm", 349, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/HALOT-ONE_PRO");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT-ONE PLUS", "Creality", "RESINA", 2022, "172 x 102 x 160 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/HALOT-ONE_PLUS");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT-ONE", "Creality", "RESINA", 2021, "127 x 80 x 160 mm", 219, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/HALOT-ONE");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Creality HALOT MAX", "Creality", "RESINA", 2021, "293 x 165 x 300 mm", 1950, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/HALOT_MAX");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Saturn 3 UItra 12k", "ELEGOO", "RESINA", 2023, "218.88 x 122.88 x 260 mm", 470, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Saturn_3_UItra_12k");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Mars 4 Max 6k", "ELEGOO", "RESINA", 2023, "195.84 x 122.4 x 150 mm", 300, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Mars_4_Max_6k");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Saturn 3- 12K", "ELEGOO", "RESINA", 2023, "219 x 123 x 250 mm", 380, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Saturn_3-_12K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Mars 4 Ultra 9K", "ELEGOO", "RESINA", 2023, "153.36 x 77.76 x 165 mm", 290, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Mars_4_Ultra_9K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Mars 3 Pro", "ELEGOO", "RESINA", 2022, "143 x 89.6 x 175 mm", 300, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Mars_3_Pro");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Jupiter", "ELEGOO", "RESINA", 2022, "277 x 156 x 300 mm", 890, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Jupiter");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ELEGOO Mars 4-9K", "ELEGOO", "RESINA", 2022, "153.36 x 77.76 x 175 mm", 250, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ELEGOO_Mars_4-9K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANET N4 LCD", "ANET", "RESINA", 2019, "120 x 65 x 138 mm", 399, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANET_N4_LCD");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "ANYCUBIC Photon Mono M5", "ANYCUBIC", "RESINA", 2023, "218 x 123 x 200 mm", 340, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/ANYCUBIC_Photon_Mono_M5");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon Mono 2", "Anycubic", "RESINA", 2023, "143 x 89 x 165 mm", 180, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_Mono_2");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon Mono M5s", "Anycubic", "RESINA", 2023, "218 x 123 x 200 mm", 500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_Mono_M5s");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon M3 Plus", "Anycubic", "RESINA", 2022, "197 x 122 x 245 mm", 700, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_M3_Plus");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon M3 Max", "Anycubic", "RESINA", 2022, "298 x 164 x 300 mm", 800, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_M3_Max");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon M3", "Anycubic", "RESINA", 2022, "164 x 102 x 180 mm", 250, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_M3");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Anycubic Photon Ultra", "Anycubic", "RESINA", 2021, "102 x 57 x 165 mm", 350, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Anycubic_Photon_Ultra");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Formlabs Form 3B+", "Formlabs", "RESINA", 2022, "145 x 145 x 185 mm", 3789, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Formlabs_Form_3B_");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Formlabs Form 3+", "Formlabs", "RESINA", 2022, "145 x 145 x 193 mm", 2500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Formlabs_Form_3_");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Formlabs Form 3L", "Formlabs", "RESINA", 2020, "335 x 200 x 320 mm", 7687, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Formlabs_Form_3L");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mighty 14K Revo", "Phrozen", "RESINA", 2024, "223 x 126 x 235 mm", 1000, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mighty_14K_Revo");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mega 8K S", "Phrozen", "RESINA", 2023, "330 x 185 x 300 mm", 1600, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mega_8K_S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mini 8K S", "Phrozen", "RESINA", 2023, "165 x 72 x 170 mm", 375, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mini_8K_S");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mini 8K", "Phrozen", "RESINA", 2023, "165 x 120 x 180 mm", 510, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mini_8K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mighty 8K", "Phrozen", "RESINA", 2022, "218 x 123 x 235 mm", 680, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mighty_8K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic XL 4K", "Phrozen", "RESINA", 2022, "196 x 120 x 200 mm", 3500, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_XL_4K");

INSERT INTO impresoras(nombre, marca, tipo, anio_lanzamiento, volumen_construccion, precio, moneda, url_imagen)
VALUES
    ( "Phrozen Sonic Mini 4K", "Phrozen", "RESINA", 2021, "134 x 150 x 130 mm", 315, "DOLAR", "https://ik.imagekit.io/3dpros/PrintersDB/Phrozen_Sonic_Mini_4K_");
    


-- Insertar datos de ejemplo en la tabla clientes
INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES
   ('Juan Pérez', 'juan.perez@email.com', '+34611222333', 'Calle Mayor 1, Madrid'),
    ('María García', 'maria.garcia@email.com', '+34622333444', 'Avenida Principal 23, Barcelona'),
    ('Carlos López', 'carlos.lopez@email.com', '+34633444555', 'Plaza España 5, Valencia'),
    ('Ana Martínez', 'ana.martinez@email.com', '+34644555666', 'Calle Real 15, Sevilla'),
   ('Pedro Sánchez', 'pedro.sanchez@email.com', '+34655666777', 'Ronda Norte 8, Málaga');





