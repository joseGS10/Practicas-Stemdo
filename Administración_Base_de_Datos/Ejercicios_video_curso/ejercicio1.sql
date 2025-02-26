CREATE TABLE Libros (
  id_libro INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(255) NOT NULL,
  autor VARCHAR(100) NOT NULL,
  fecha_publi DATE,
  genero VARCHAR(50)
);
