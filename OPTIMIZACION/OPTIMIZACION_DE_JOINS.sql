-- TABLA BIBLIOTECA --
CREATE TABLE biblioteca (
libro_id INT PRIMARY KEY,
titulo VARCHAR (100),
autor VARCHAR (100),
año DATE
);

--- DATOS BIBLIOTECA ---
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (1, 'Cien años de soledad', 'Gabriel García Márquez', '1967-05-30');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (2, 'El amor en los tiempos del cólera', 'Gabriel García Márquez', '1985-12-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (3, 'Don Quijote de la Mancha', 'Miguel de Cervantes', '1605-01-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (4, 'Rayuela', 'Julio Cortázar', '1963-06-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (5, 'La ciudad y los perros', 'Mario Vargas Llosa', '1962-10-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (6, 'Ficciones', 'Jorge Luis Borges', '1944-09-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (7, 'Pedro Páramo', 'Juan Rulfo', '1955-03-27');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (8, 'La casa de los espíritus', 'Isabel Allende', '1982-01-22');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (9, 'El laberinto de la soledad', 'Octavio Paz', '1950-04-19');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (10, 'Veinte poemas de amor y una canción desesperada', 'Pablo Neruda', '1924-08-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (11, 'La sombra del viento', 'Carlos Ruiz Zafón', '2001-04-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (12, 'Crimen y castigo', 'Fiódor Dostoyevski', '1866-12-22');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (13, 'Ulises', 'James Joyce', '1922-02-02');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (14, 'En busca del tiempo perdido', 'Marcel Proust', '1913-11-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (15, 'Orgullo y prejuicio', 'Jane Austen', '1813-01-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (16, '1984', 'George Orwell', '1949-06-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (17, 'Un mundo feliz', 'Aldous Huxley', '1932-07-24');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (18, 'El Gran Gatsby', 'F. Scott Fitzgerald', '1925-04-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (19, 'Matar un ruiseñor', 'Harper Lee', '1960-07-11');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (20, 'El viejo y el mar', 'Ernest Hemingway', '1952-09-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (21, 'Los miserables', 'Victor Hugo', '1862-04-03');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (22, 'El Principito', 'Antoine de Saint-Exupéry', '1943-04-06');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (23, 'Las venas abiertas de América Latina', 'Eduardo Galeano', '1971-05-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (24, 'Los detectives salvajes', 'Roberto Bolaño', '1998-11-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (25, 'El túnel', 'Ernesto Sabato', '1948-08-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (26, 'El Aleph', 'Jorge Luis Borges', '1949-06-30');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (27, 'La metamorfosis', 'Franz Kafka', '1915-10-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (28, 'El retrato de Dorian Gray', 'Oscar Wilde', '1890-07-20');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (29, 'El coronel no tiene quien le escriba', 'Gabriel García Márquez', '1961-03-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (30, 'La vorágine', 'José Eustasio Rivera', '1924-11-25');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (31, 'Las aventuras de Sherlock Holmes', 'Arthur Conan Doyle', '1892-10-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (32, 'El lobo estepario', 'Hermann Hesse', '1927-06-18');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (33, 'La Ilíada', 'Homero', '0750-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (34, 'La Odisea', 'Homero', '0725-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (35, 'Fahrenheit 451', 'Ray Bradbury', '1953-10-19');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (36, 'El señor de los anillos', 'J.R.R. Tolkien', '1954-07-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (37, 'Crónica de una muerte anunciada', 'Gabriel García Márquez', '1981-04-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (38, 'Moby Dick', 'Herman Melville', '1851-10-18');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (39, 'El nombre de la rosa', 'Umberto Eco', '1980-09-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (40, 'Ana Karenina', 'León Tolstói', '1877-01-20');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (41, 'Los hermanos Karamazov', 'Fiódor Dostoyevski', '1880-11-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (42, 'Madame Bovary', 'Gustave Flaubert', '1856-12-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (43, 'Cumbres borrascosas', 'Emily Brontë', '1847-12-19');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (44, 'Sobre héroes y tumbas', 'Ernesto Sabato', '1961-01-30');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (45, 'El proceso', 'Franz Kafka', '1925-04-26');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (46, 'Rebelión en la granja', 'George Orwell', '1945-08-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (47, 'Los juegos del hambre', 'Suzanne Collins', '2008-09-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (48, 'El Hobbit', 'J.R.R. Tolkien', '1937-09-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (49, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', '1997-06-26');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (50, 'El guardián entre el centeno', 'J.D. Salinger', '1951-07-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (51, 'Las uvas de la ira', 'John Steinbeck', '1939-04-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (52, 'El perfume', 'Patrick Süskind', '1985-03-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (53, 'El extranjero', 'Albert Camus', '1942-05-19');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (54, 'La naranja mecánica', 'Anthony Burgess', '1962-11-22');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (55, 'Romeo y Julieta', 'William Shakespeare', '1597-01-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (56, 'Hamlet', 'William Shakespeare', '1603-07-13');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (57, 'Macbeth', 'William Shakespeare', '1606-04-25');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (58, 'El conde de Montecristo', 'Alexandre Dumas', '1844-08-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (59, 'Los tres mosqueteros', 'Alexandre Dumas', '1844-03-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (60, 'El castillo', 'Franz Kafka', '1926-06-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (61, 'Cien sonetos de amor', 'Pablo Neruda', '1959-01-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (62, 'La divina comedia', 'Dante Alighieri', '1320-03-22');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (63, 'Romancero gitano', 'Federico García Lorca', '1928-07-27');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (64, 'Poeta en Nueva York', 'Federico García Lorca', '1940-05-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (65, 'La guerra y la paz', 'León Tolstói', '1869-01-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (66, 'El ruido y la furia', 'William Faulkner', '1929-10-07');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (67, 'Las mil y una noches', 'Anónimo', '1450-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (68, 'Frankenstein', 'Mary Shelley', '1818-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (69, 'Drácula', 'Bram Stoker', '1897-05-26');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (70, 'El resplandor', 'Stephen King', '1977-01-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (71, 'It', 'Stephen King', '1986-09-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (72, 'El exorcista', 'William Peter Blatty', '1971-06-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (73, 'Las crónicas de Narnia', 'C.S. Lewis', '1950-10-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (74, 'La historia interminable', 'Michael Ende', '1979-09-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (75, 'Frankenstein', 'Mary Shelley', '1818-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (76, 'El arte de la guerra', 'Sun Tzu', '0500-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (77, 'El príncipe', 'Nicolás Maquiavelo', '1532-05-04');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (78, 'Así habló Zaratustra', 'Friedrich Nietzsche', '1883-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (79, 'El contrato social', 'Jean-Jacques Rousseau', '1762-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (80, 'La República', 'Platón', '0375-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (81, 'Ética a Nicómaco', 'Aristóteles', '0350-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (82, 'El segundo sexo', 'Simone de Beauvoir', '1949-06-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (83, 'Sapiens: De animales a dioses', 'Yuval Noah Harari', '2011-02-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (84, 'Breve historia del tiempo', 'Stephen Hawking', '1988-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (85, 'El origen de las especies', 'Charles Darwin', '1859-11-24');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (86, 'Harry Potter y la cámara secreta', 'J.K. Rowling', '1998-07-02');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (87, 'Harry Potter y el prisionero de Azkaban', 'J.K. Rowling', '1999-07-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (88, 'Harry Potter y el cáliz de fuego', 'J.K. Rowling', '2000-07-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (89, 'Harry Potter y la Orden del Fénix', 'J.K. Rowling', '2003-06-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (90, 'Harry Potter y el misterio del príncipe', 'J.K. Rowling', '2005-07-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (91, 'Harry Potter y las Reliquias de la Muerte', 'J.K. Rowling', '2007-07-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (92, 'Crepúsculo', 'Stephenie Meyer', '2005-10-05');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (93, 'Luna nueva', 'Stephenie Meyer', '2006-09-06');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (94, 'Eclipse', 'Stephenie Meyer', '2007-08-07');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (95, 'Amanecer', 'Stephenie Meyer', '2008-08-02');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (96, 'Los hombres que no amaban a las mujeres', 'Stieg Larsson', '2005-08-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (97, 'La chica que soñaba con una cerilla y un bidón de gasolina', 'Stieg Larsson', '2006-06-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (98, 'La reina en el palacio de las corrientes de aire', 'Stieg Larsson', '2007-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (99, 'Los pilares de la Tierra', 'Ken Follett', '1989-10-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (100, 'Un mundo sin fin', 'Ken Follett', '2007-10-04');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (101, 'La caída de los gigantes', 'Ken Follett', '2010-09-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (102, 'El invierno del mundo', 'Ken Follett', '2012-09-18');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (103, 'El umbral de la eternidad', 'Ken Follett', '2014-09-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (104, 'La catedral del mar', 'Ildefonso Falcones', '2006-03-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (105, 'La mano de Fátima', 'Ildefonso Falcones', '2009-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (106, 'El Códex Secreto', 'Leonardo da Vinci', '1490-06-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (107, 'El código Da Vinci', 'Dan Brown', '2003-03-18');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (108, 'Ángeles y demonios', 'Dan Brown', '2000-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (109, 'Inferno', 'Dan Brown', '2013-05-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (110, 'El símbolo perdido', 'Dan Brown', '2009-09-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (111, 'El hobbit', 'J.R.R. Tolkien', '1937-09-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (112, 'La comunidad del anillo', 'J.R.R. Tolkien', '1954-07-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (113, 'Las dos torres', 'J.R.R. Tolkien', '1954-11-11');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (114, 'El retorno del rey', 'J.R.R. Tolkien', '1955-10-20');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (115, 'Juego de tronos', 'George R.R. Martin', '1996-08-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (116, 'Choque de reyes', 'George R.R. Martin', '1998-11-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (117, 'Tormenta de espadas', 'George R.R. Martin', '2000-08-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (118, 'Festín de cuervos', 'George R.R. Martin', '2005-10-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (119, 'Danza de dragones', 'George R.R. Martin', '2011-07-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (120, 'El código enigma', 'Robert Harris', '1995-09-21');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (121, 'El padrino', 'Mario Puzo', '1969-03-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (122, 'Crónica del pájaro que da cuerda al mundo', 'Haruki Murakami', '1995-01-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (123, 'Kafka en la orilla', 'Haruki Murakami', '2002-09-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (124, 'Norwegian Wood', 'Haruki Murakami', '1987-08-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (125, 'La feria de las vanidades', 'William Makepeace Thackeray', '1848-01-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (126, 'Dune', 'Frank Herbert', '1965-08-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (127, 'El mesías de Dune', 'Frank Herbert', '1969-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (128, 'Hijos de Dune', 'Frank Herbert', '1976-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (129, 'La fundación', 'Isaac Asimov', '1951-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (130, 'Fundación e imperio', 'Isaac Asimov', '1952-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (131, 'Segunda fundación', 'Isaac Asimov', '1953-01-05');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (132, 'Yo, robot', 'Isaac Asimov', '1950-12-02');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (133, 'El fin de la eternidad', 'Isaac Asimov', '1955-08-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (134, 'Los Mitos de Cthulhu', 'H.P. Lovecraft', '1928-02-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (135, 'El llamado de Cthulhu', 'H.P. Lovecraft', '1928-02-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (136, 'En las montañas de la locura', 'H.P. Lovecraft', '1936-02-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (137, 'La sombra sobre Innsmouth', 'H.P. Lovecraft', '1936-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (138, 'El color que cayó del cielo', 'H.P. Lovecraft', '1927-09-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (139, 'El horror de Dunwich', 'H.P. Lovecraft', '1929-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (140, 'El guardián de los sueños', 'Stephen King', '1995-09-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (141, 'Carrie', 'Stephen King', '1974-04-05');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (142, 'El misterio de Salem\s Lot', 'Stephen King', '1975-10-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (143, 'El último mohicano', 'James Fenimore Cooper', '1826-02-04');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (144, 'Las aventuras de Tom Sawyer', 'Mark Twain', '1876-12-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (145, 'Las aventuras de Huckleberry Finn', 'Mark Twain', '1884-12-10');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (146, 'El retrato de Dorian Gray', 'Oscar Wilde', '1890-07-20');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (147, 'La vuelta al mundo en 80 días', 'Julio Verne', '1873-01-30');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (148, 'Viaje al centro de la Tierra', 'Julio Verne', '1864-11-25');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (149, 'Veinte mil leguas de viaje submarino', 'Julio Verne', '1870-06-20');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (150, 'La máquina del tiempo', 'H.G. Wells', '1895-05-07');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (151, 'La guerra de los mundos', 'H.G. Wells', '1898-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (152, 'El hombre invisible', 'H.G. Wells', '1897-07-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (153, 'El señor de las moscas', 'William Golding', '1954-09-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (154, 'Lo que el viento se llevó', 'Margaret Mitchell', '1936-06-30');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (155, 'El retorno del nativo', 'Thomas Hardy', '1878-11-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (156, 'Los miserables', 'Victor Hugo', '1862-04-03');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (157, 'Nuestra Señora de París', 'Victor Hugo', '1831-03-16');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (158, 'Los trabajadores del mar', 'Victor Hugo', '1866-03-12');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (159, 'Papá Goriot', 'Honoré de Balzac', '1835-02-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (160, 'Las ilusiones perdidas', 'Honoré de Balzac', '1843-07-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (161, 'Eugénie Grandet', 'Honoré de Balzac', '1833-12-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (162, 'La prima Bette', 'Honoré de Balzac', '1846-12-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (163, 'Rojo y negro', 'Stendhal', '1830-11-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (164, 'La cartuja de Parma', 'Stendhal', '1839-03-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (165, 'Madame Bovary', 'Gustave Flaubert', '1856-12-15');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (166, 'La educación sentimental', 'Gustave Flaubert', '1869-11-17');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (167, 'Bouvard y Pécuchet', 'Gustave Flaubert', '1881-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (168, 'En busca del tiempo perdido', 'Marcel Proust', '1913-11-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (169, 'La montaña mágica', 'Thomas Mann', '1924-11-28');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (170, 'Doctor Fausto', 'Thomas Mann', '1947-10-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (171, 'La muerte en Venecia', 'Thomas Mann', '1912-06-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (172, 'El proceso', 'Franz Kafka', '1925-04-26');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (173, 'El castillo', 'Franz Kafka', '1926-05-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (174, 'América', 'Franz Kafka', '1927-04-01');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (175, 'El Ulises', 'James Joyce', '1922-02-02');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (176, 'Retrato del artista adolescente', 'James Joyce', '1916-12-29');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (177, 'Finnegans Wake', 'James Joyce', '1939-05-04');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (178, 'Mrs. Dalloway', 'Virginia Woolf', '1925-05-14');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (179, 'Al faro', 'Virginia Woolf', '1927-05-05');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (180, 'Las olas', 'Virginia Woolf', '1931-10-08');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (181, 'Orlando', 'Virginia Woolf', '1928-10-11');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (182, 'El ruido y la furia', 'William Faulkner', '1929-10-07');
INSERT INTO biblioteca (libro_id, titulo, autor, año) VALUES (183, 'Mientras agonizo', 'William Faulkner', '1930-10-06');

-- TABLA CURSO --
CREATE TABLE curso (
curso_id SERIAL PRIMARY KEY,
nombre_curso VARCHAR(100) NOT NULL,
total_a_pagar NUMERIC (10,2) NOT NULL
);

-- DATOS CURSO --
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Desarrollo Web Full Stack', 1299.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Ciencia de Datos', 1499.50);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Diseño UX/UI', 899.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Marketing Digital', 799.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Python para Machine Learning', 1199.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('JavaScript Avanzado', 899.50);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('SQL y Bases de Datos', 699.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('DevOps y CI/CD', 1299.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Ciberseguridad Básica', 1099.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Desarrollo de Aplicaciones Móviles', 1199.50);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Gestión de Proyectos Ágiles', 849.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Inteligencia Artificial', 1599.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Blockchain y Criptomonedas', 1299.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Fotografía Digital', 599.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Diseño Gráfico', 749.50);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Análisis Financiero', 999.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Inglés para Negocios', 649.99);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Administración de Redes', 899.00);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Producción de Video', 849.50);
INSERT INTO curso (nombre_curso, total_a_pagar) VALUES ('Cloud Computing', 1099.00);

-- TABLA ESTUDIANTES --
CREATE TABLE estudiantes (
estudiante_id SERIAL PRIMARY KEY,
curso_id INT NOT NULL,
nombre_estudiante VARCHAR (100),
edad INT, 
fecha_registro DATE NOT NULL,
FOREIGN KEY (curso_id) REFERENCES curso (curso_id)
);

-- DATOS ESTUDIANTES --
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Ana María López', 22, '2023-01-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Carlos Rodríguez', 25, '2023-01-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Miguel Ángel Pérez', 19, '2023-01-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Laura Fernández', 24, '2023-01-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'José Manuel García', 21, '2023-01-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Sofía Martínez', 20, '2023-01-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Alejandro Sánchez', 26, '2023-01-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Isabel Gómez', 23, '2023-01-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Pablo Díaz', 22, '2023-01-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'María Torres', 27, '2023-01-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Javier Ruiz', 24, '2023-01-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Carmen Jiménez', 19, '2023-01-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'David Hernández', 25, '2023-01-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Lucía Moreno', 22, '2023-01-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Antonio Álvarez', 28, '2023-01-29');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Elena Navarro', 21, '2023-01-30');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Juan Carlos Romero', 26, '2023-01-31');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Raquel Serrano', 20, '2023-02-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Francisco Javier Sáez', 23, '2023-02-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Patricia Ortega', 24, '2023-02-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Alberto Ramos', 25, '2023-02-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Cristina Molina', 22, '2023-02-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Roberto Castro', 19, '2023-02-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Natalia Ortiz', 27, '2023-02-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Fernando Delgado', 20, '2023-02-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Mónica Flores', 21, '2023-02-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Víctor Castillo', 26, '2023-02-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Silvia Blanco', 23, '2023-02-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Óscar Suárez', 22, '2023-02-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Esther Pascual', 25, '2023-02-13');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Jaime Medina', 19, '2023-02-14');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Alicia Vega', 24, '2023-02-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Rubén Santos', 28, '2023-02-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Sonia Herrera', 20, '2023-02-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Iván Gil', 22, '2023-02-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Marina Serra', 26, '2023-02-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Gabriel León', 23, '2023-02-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Beatriz Guerrero', 21, '2023-02-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Héctor Cano', 25, '2023-02-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Teresa Prieto', 22, '2023-02-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Adrián Méndez', 24, '2023-02-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Rosa María Iglesias', 19, '2023-02-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Daniel Calvo', 27, '2023-02-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Nuria Gallego', 20, '2023-02-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Sergio Vidal', 23, '2023-02-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Marta Rico', 21, '2023-03-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Jorge Arias', 26, '2023-03-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Sandra Mora', 22, '2023-03-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Luis Miguel Durán', 25, '2023-03-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Verónica Aguilar', 24, '2023-03-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Ignacio Soto', 20, '2023-03-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Victoria Campos', 19, '2023-03-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Eduardo Rojas', 28, '2023-03-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Irene Caballero', 23, '2023-03-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Rodrigo Reyes', 21, '2023-03-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Celia Nieto', 25, '2023-03-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Marcos Santana', 22, '2023-03-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Lorena Parra', 26, '2023-03-13');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Nicolás Benítez', 24, '2023-03-14');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Yolanda Peña', 20, '2023-03-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'César Rivas', 23, '2023-03-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Mercedes Guerra', 27, '2023-03-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Joaquín Ferrer', 19, '2023-03-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Luisa Santos', 22, '2023-03-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Alfredo Lozano', 24, '2023-03-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Aurora Velasco', 21, '2023-03-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Gonzalo Soria', 26, '2023-03-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Lidia Aguilera', 20, '2023-03-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Ernesto Vargas', 25, '2023-03-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Diana Requena', 23, '2023-03-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Bruno Carrasco', 22, '2023-03-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Olga Miranda', 19, '2023-03-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Enrique Gutiérrez', 28, '2023-03-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Margarita Bravo', 24, '2023-03-29');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Felipe Gallardo', 21, '2023-03-30');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Vanessa Hidalgo', 27, '2023-03-31');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Ricardo Contreras', 20, '2023-04-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Estela Maldonado', 25, '2023-04-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Ramón Pardo', 22, '2023-04-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Julia Corral', 23, '2023-04-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Mateo Quintana', 26, '2023-04-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Araceli Heredia', 19, '2023-04-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Samuel Téllez', 24, '2023-04-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Irma Cordero', 21, '2023-04-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Aitor Cabrera', 28, '2023-04-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Valeria Aparicio', 20, '2023-04-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Martín Sanz', 25, '2023-04-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Inmaculada Álvarez', 22, '2023-04-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Antonio José Menéndez', 27, '2023-04-13');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Eva María Bernal', 23, '2023-04-14');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Mario Vicente', 19, '2023-04-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Adela Moya', 24, '2023-04-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Félix Redondo', 22, '2023-04-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Pilar Arroyo', 26, '2023-04-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Hugo Galán', 21, '2023-04-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Amparo Luque', 20, '2023-04-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Salvador Escudero', 25, '2023-04-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Consuelo Manzano', 28, '2023-04-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Esteban Lara', 23, '2023-04-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Fabiola Andrade', 22, '2023-04-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Guillermo Padilla', 19, '2023-04-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Rosario Estévez', 24, '2023-04-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Baltasar Chacón', 27, '2023-04-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Carlota Gálvez', 20, '2023-04-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Justo Valero', 25, '2023-04-29');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Alma Luna', 21, '2023-04-30');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Augusto Crespo', 26, '2023-05-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Begoña Villanueva', 23, '2023-05-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Claudio Pereira', 22, '2023-05-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Delia Costa', 28, '2023-05-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Elías Carmona', 19, '2023-05-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Felisa Roldán', 24, '2023-05-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Gerardo Quintero', 20, '2023-05-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Hortensia Esteban', 25, '2023-05-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Isidro Marcos', 22, '2023-05-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Jacinta Vera', 27, '2023-05-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Leandro Valle', 23, '2023-05-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Magdalena Ríos', 21, '2023-05-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Narciso Ponce', 26, '2023-05-13');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Olivia Hurtado', 20, '2023-05-14');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Primitivo Sierra', 25, '2023-05-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Rebeca Trujillo', 24, '2023-05-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Sebastián Plaza', 19, '2023-05-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Tatiana Acosta', 22, '2023-05-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Ubaldo Montes', 28, '2023-05-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Valentina Miranda', 23, '2023-05-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Xavier Aranda', 21, '2023-05-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Yésica Palacios', 26, '2023-05-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Zenón Toledo', 20, '2023-05-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Adelaida Valencia', 25, '2023-05-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Benito Alonso', 22, '2023-05-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Camila Puente', 27, '2023-05-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Darío Espinosa', 19, '2023-05-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Elisa Lafuente', 24, '2023-05-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Fermín Prat', 21, '2023-05-29');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Gloria Roig', 26, '2023-05-30');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Hilario Segura', 23, '2023-05-31');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Idoia Ribera', 20, '2023-06-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Joel Carretero', 25, '2023-06-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Karina Soria', 22, '2023-06-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Leonardo Aguado', 28, '2023-06-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Miriam Tapia', 19, '2023-06-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Néstor Guzmán', 24, '2023-06-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Ofelia Jurado', 21, '2023-06-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Pastor Tomás', 26, '2023-06-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Quenia Morillo', 23, '2023-06-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Raimundo Alarcón', 20, '2023-06-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Soledad Montero', 25, '2023-06-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Tomás Linares', 22, '2023-06-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Úrsula Morales', 27, '2023-06-13');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Vicente Barroso', 19, '2023-06-14');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Wilma de la Fuente', 24, '2023-06-15');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Ximena Carrillo', 21, '2023-06-16');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Yago Zambrano', 26, '2023-06-17');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Zulema Tejero', 23, '2023-06-18');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Álvaro Infante', 20, '2023-06-19');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Belén Palma', 25, '2023-06-20');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Cesáreo Miró', 22, '2023-06-21');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Dulce Noguera', 28, '2023-06-22');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Emilio Robles', 19, '2023-06-23');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (1, 'Flor Arcos', 24, '2023-06-24');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (2, 'Germán Pastor', 21, '2023-06-25');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (3, 'Helena Bueno', 26, '2023-06-26');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (4, 'Íñigo Montoya', 23, '2023-06-27');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (5, 'Jessica Campillo', 20, '2023-06-28');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (6, 'Kevin Lloret', 25, '2023-06-29');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (7, 'Leonor Pineda', 22, '2023-06-30');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (8, 'Modesto Barrios', 27, '2023-07-01');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (9, 'Noemí Correa', 19, '2023-07-02');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (10, 'Omar Vélez', 24, '2023-07-03');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (11, 'Paloma Cárdenas', 21, '2023-07-04');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (12, 'Quintín Marín', 26, '2023-07-05');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (13, 'Regina Sevilla', 23, '2023-07-06');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (14, 'Salomón Cuenca', 20, '2023-07-07');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (15, 'Teodora Baeza', 25, '2023-07-08');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (16, 'Ulises Villalobos', 22, '2023-07-09');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (17, 'Vega Melero', 28, '2023-07-10');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (18, 'Walter Navarrete', 19, '2023-07-11');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (19, 'Yadira Cornejo', 24, '2023-07-12');
INSERT INTO estudiantes (curso_id, nombre_estudiante, edad, fecha_registro) VALUES (20, 'Zacarías Quevedo', 21, '2023-07-13');



-- TABLA CALIFICACIONES --
CREATE TABLE calificaciones (
calificacion_id SERIAL PRIMARY KEY,
estudiante_id INT NOT NULL,
calificacion INT,
FOREIGN KEY (estudiante_id) REFERENCES estudiantes (estudiante_id)
);

-- DATOS CALIFICACIONES --

-- Student 1
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (1, 87);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (1, 92);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (1, 78);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (1, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (1, 90);

-- Student 2
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (2, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (2, 68);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (2, 72);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (2, 80);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (2, 85);

-- Student 3
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (3, 95);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (3, 98);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (3, 92);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (3, 96);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (3, 94);

-- Student 4
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (4, 65);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (4, 72);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (4, 68);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (4, 70);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (4, 75);

-- Student 5
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (5, 88);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (5, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (5, 90);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (5, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (5, 86);

-- Student 6
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (6, 78);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (6, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (6, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (6, 80);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (6, 79);

-- Student 7
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (7, 92);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (7, 95);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (7, 89);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (7, 90);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (7, 93);

-- Student 8
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (8, 65);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (8, 60);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (8, 70);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (8, 67);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (8, 72);

-- Student 9
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (9, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (9, 88);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (9, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (9, 86);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (9, 84);

-- Student 10
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (10, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (10, 78);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (10, 72);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (10, 76);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (10, 80);

-- Student 11
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (11, 91);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (11, 88);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (11, 94);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (11, 90);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (11, 89);

-- Student 12
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (12, 73);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (12, 68);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (12, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (12, 70);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (12, 72);

-- Student 13
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (13, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (13, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (13, 80);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (13, 83);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (13, 88);

-- Student 14
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (14, 95);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (14, 97);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (14, 94);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (14, 96);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (14, 98);

-- Student 15
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (15, 78);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (15, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (15, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (15, 80);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (15, 76);

-- Student 16
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (16, 87);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (16, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (16, 88);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (16, 86);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (16, 90);

-- Student 17
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (17, 70);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (17, 65);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (17, 72);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (17, 68);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (17, 75);

-- Student 18
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (18, 83);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (18, 85);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (18, 80);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (18, 82);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (18, 86);

-- Student 19
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (19, 92);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (19, 90);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (19, 95);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (19, 88);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (19, 91);

-- Student 20
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (20, 76);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (20, 72);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (20, 78);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (20, 75);
INSERT INTO calificaciones (estudiante_id, calificacion) VALUES (20, 80);

-- TABLA CLIENTES --
CREATE TABLE clientes (
cliente_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
correo VARCHAR (100) UNIQUE
);

INSERT INTO clientes (nombre, correo) VALUES
('Juan Pérez', 'juan.perez1@example.com'),
('María Gómez', 'maria.gomez2@example.com'),
('Carlos Rodríguez', 'carlos.rodriguez3@example.com'),
('Ana Martínez', 'ana.martinez4@example.com'),
('Luis Fernández', 'luis.fernandez5@example.com'),
('Elena Ramírez', 'elena.ramirez6@example.com'),
('Javier Sánchez', 'javier.sanchez7@example.com'),
('Andrea Torres', 'andrea.torres8@example.com'),
('Fernando Ruiz', 'fernando.ruiz9@example.com'),
('Sofía Castro', 'sofia.castro10@example.com'),
('Daniel López', 'daniel.lopez11@example.com'),
('Patricia Mendoza', 'patricia.mendoza12@example.com'),
('Alberto García', 'alberto.garcia13@example.com'),
('Rosa Ortega', 'rosa.ortega14@example.com'),
('Diego Navarro', 'diego.navarro15@example.com'),
('Carolina Vega', 'carolina.vega16@example.com'),
('Manuel Jiménez', 'manuel.jimenez17@example.com'),
('Isabel Paredes', 'isabel.paredes18@example.com'),
('Pedro Domínguez', 'pedro.dominguez19@example.com'),
('Valentina Herrera', 'valentina.herrera20@example.com'),
('Alejandro Muñoz', 'alejandro.munoz21@example.com'),
('Natalia Ríos', 'natalia.rios22@example.com'),
('José Castro', 'jose.castro23@example.com'),
('Carmen Reyes', 'carmen.reyes24@example.com'),
('Esteban Flores', 'esteban.flores25@example.com'),
('Lucía Salazar', 'lucia.salazar26@example.com'),
('Hugo Guzmán', 'hugo.guzman27@example.com'),
('Paola Fuentes', 'paola.fuentes28@example.com'),
('Emilio Vargas', 'emilio.vargas29@example.com'),
('Monica León', 'monica.leon30@example.com'),
('Felipe Soto', 'felipe.soto31@example.com'),
('Raquel Peña', 'raquel.pena32@example.com'),
('Gustavo Ayala', 'gustavo.ayala33@example.com'),
('Laura Cabrera', 'laura.cabrera34@example.com'),
('Oscar Morales', 'oscar.morales35@example.com'),
('Teresa Silva', 'teresa.silva36@example.com'),
('Ángel Romero', 'angel.romero37@example.com'),
('Beatriz Ramos', 'beatriz.ramos38@example.com'),
('Samuel Medina', 'samuel.medina39@example.com'),
('Camila Espinoza', 'camila.espinoza40@example.com');


-- TABLA CUENTAS_BANCARIAS --
CREATE TABLE cuentas_bancarias (
cuenta_id SERIAL PRIMARY KEY,
cliente_id INT,
saldo NUMERIC (10, 2),
estado VARCHAR (100),
FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

INSERT INTO cuentas_bancarias (cliente_id, saldo, estado) VALUES
(1, 1500.50, 'Activa'),
(2, 2500.75, 'Activa'),
(3, 320.00, 'Inactiva'),
(4, 5000.00, 'Activa'),
(5, 750.25, 'Suspendida'),
(6, 1800.00, 'Activa'),
(7, 220.40, 'Cerrada'),
(8, 990.90, 'Activa'),
(9, 670.50, 'Activa'),
(10, 1200.00, 'Inactiva'),
(11, 500.00, 'Activa'),
(12, 1400.25, 'Activa'),
(13, 800.00, 'Suspendida'),
(14, 3000.00, 'Activa'),
(15, 420.75, 'Activa'),
(16, 920.10, 'Inactiva'),
(17, 500.60, 'Activa'),
(18, 1750.90, 'Cerrada'),
(19, 900.50, 'Activa'),
(20, 1100.00, 'Suspendida'),
(21, 1300.75, 'Activa'),
(22, 250.40, 'Cerrada'),
(23, 500.00, 'Activa'),
(24, 2700.80, 'Activa'),
(25, 600.90, 'Suspendida'),
(26, 1100.50, 'Inactiva'),
(27, 950.30, 'Activa'),
(28, 710.00, 'Cerrada'),
(29, 1250.60, 'Suspendida'),
(30, 2000.00, 'Activa'),
(31, 870.20, 'Activa'),
(32, 300.10, 'Inactiva'),
(33, 560.80, 'Activa'),
(34, 800.90, 'Activa'),
(35, 400.00, 'Suspendida'),
(36, 900.60, 'Cerrada'),
(37, 750.30, 'Activa'),
(38, 620.00, 'Inactiva'),
(39, 1500.80, 'Activa'),
(40, 2200.00, 'Suspendida');

-- TABLA DIRECCIONES --
CREATE TABLE direcciones (
direccion_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
ciudad VARCHAR(100),
codigo_postal VARCHAR (100)
);

-- DATOS DIRECCIONES --
INSERT INTO direcciones (cliente_id, ciudad, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050001'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Cúcuta', '540001'),
(7, 'Bucaramanga', '680001'),
(8, 'Pereira', '660001'),
(9, 'Manizales', '170001'),
(10, 'Santa Marta', '470001'),
(11, 'Ibagué', '730001'),
(12, 'Villavicencio', '500001'),
(13, 'Pasto', '520001'),
(14, 'Neiva', '410001'),
(15, 'Armenia', '630001'),
(16, 'Popayán', '190001'),
(17, 'Valledupar', '200001'),
(18, 'Tunja', '150001'),
(19, 'Montería', '230001'),
(20, 'Florencia', '180001'),
(21, 'Riohacha', '440001'),
(22, 'Quibdó', '270001'),
(23, 'Sincelejo', '700001'),
(24, 'San Andrés', '880001'),
(25, 'Leticia', '910001'),
(26, 'Yopal', '850001'),
(27, 'Mocoa', '860001'),
(28, 'Mitú', '970001'),
(29, 'Puerto Carreño', '990001'),
(30, 'San José del Guaviare', '950001'),
(31, 'Inírida', '940001'),
(32, 'Arauca', '810001'),
(33, 'Girardot', '252432'),
(34, 'Fusagasugá', '252211'),
(35, 'Zipaquirá', '250251'),
(36, 'Sogamoso', '152210'),
(37, 'Duitama', '150461'),
(38, 'Chía', '250001'),
(39, 'Soacha', '250051'),
(40, 'Facatativá', '253001');

-- TABLA FACTURAS --
CREATE TABLE facturas (
factura_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
monto NUMERIC (10, 2),
fecha_pago DATE
);

-- TABLA VEHICULOS --
CREATE TABLE vehiculos (
vehiculo_id SERIAL PRIMARY KEY,
modelo VARCHAR (50),
fecha_fabricacion DATE
);

-- TABLA RENTA_AUTOS --
CREATE TABLE renta_autos (
renta_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
vehiculo_id INT, FOREIGN KEY (vehiculo_id) REFERENCES vehiculos (vehiculo_id),
fecha_renta DATE
);

-- TABLA SUSCRIPCIONES --
CREATE TABLE suscripciones (
suscripciones_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
estado VARCHAR(20),
fecha_inicio DATE
);

-- TABLA VUELOS --
CREATE TABLE vuelos (
vuelo_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
origen VARCHAR(50),
destino VARCHAR (50),
fecha_salida DATE
);

-- TABLA PRODUCTOS --
CREATE TABLE productos (
producto_id SERIAL PRIMARY KEY,
nombre VARCHAR(100) UNIQUE NOT NULL,
precio_unitario NUMERIC(10, 2),
stock INT
);

-- TABLA PEDIDOS --
CREATE TABLE pedidos (
pedido_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
producto_id INT, FOREIGN KEY (producto_id) REFERENCES productos (producto_id),
cantidad INT,
fecha_pedido DATE
);

-- TABLA VENTAS --
CREATE TABLE ventas (
venta_id SERIAL PRIMARY KEY,
cliente_id INT, FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
producto_id INT, FOREIGN KEY (producto_id) REFERENCES productos (producto_id),
cantidad INT,
total NUMERIC (10,2),
fecha_venta DATE
);

-- TABLA EMPLEADOS --
CREATE TABLE empleados (
empleado_id SERIAL PRIMARY KEY,
nombre VARCHAR (100),
departamento VARCHAR (100),
salario NUMERIC (10, 2)
);

-- TABLA USUARIOS --
CREATE TABLE usuarios (
usuario_id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
telefono NUMERIC(10,0),
correo VARCHAR(50),
fecha_registro DATE
);

-- TABLA MENSAJES --
CREATE TABLE mensajes (
mensaje_id SERIAL PRIMARY KEY,
usuario_id INT, FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
contenido VARCHAR (50)
);



-- TABLA UNIVERSIDAD --
CREATE TABLE universidad (
curso_id SERIAL PRIMARY KEY,
nombre VARCHAR (10),
estudiante_id INT, FOREIGN KEY (estudiante_id) REFERENCES estudiantes (estudiante_id)
);


--- EJERCICIO 1 ---
CREATE INDEX idx_fk_pedidos_producto_id
ON pedidos (producto_id);
CREATE INDEX idx_fk_pedidos_cliente_id
ON pedidos (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       pr.nombre AS productos,
	   SUM(pr.precio_unitario * p.cantidad) AS total
FROM pedidos p 
JOIN productos pr ON p.producto_id = pr.producto_id
JOIN clientes cl ON p.cliente_id = cl.cliente_id
GROUP BY cl.nombre, pr.nombre;       

--- EJERCICIO 2 ---
CREATE INDEX idx_empleados_departamento
ON empleados USING HASH (departamento);

EXPLAIN ANALYZE
SELECT nombre AS empleados,
       departamento
FROM empleados
WHERE departamento = 'TI';

--- EJERCICIO 3 ---
CREATE INDEX idx_cuentas_bancarias_cliente_id
ON cuentas_bancarias (cliente_id);
CREATE INDEX idx_clientes_cliente_id
ON clientes (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       cb.saldo
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id;

-- EJERCICIO 4 --
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);
CREATE INDEX idx_fk_ventas_producto_id
ON ventas (producto_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       pr.nombre AS productos
FROM ventas v
JOIN clientes cl ON v.cliente_id = cl.cliente_id
JOIN productos pr ON v.producto_id = pr.producto_id;

-- EJERCICIO 5 --
CREATE INDEX idx_fk_facturas_cliente_id
ON facturas (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       f.monto,
	   f.factura_id
FROM facturas f
JOIN clientes cl
ON f.cliente_id = cl.cliente_id;

-- EJERCICIO 6 --
CREATE INDEX idx_fk_direcciones_cliente_id
ON direcciones (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       d.ciudad,
	   d.codigo_postal
FROM direcciones d
JOIN clientes cl
ON d.cliente_id = cl.cliente_id;

-- EJERCICIO 7 --
CREATE INDEX idx_fk_mensajes_usuario_id
ON mensajes (usuario_id);

EXPLAIN ANALYZE 
SELECT u.nombre AS usuario,
       m.contenido
FROM mensajes m
JOIN usuarios u
ON m.usuario_id = u.usuario_id;

-- EJERCICIO 8 --
CREATE INDEX idx_cuentas_bancarias_estado
ON cuentas_bancarias USING HASH (estado);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       cb.cuenta_id,
	   cb.estado
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id
WHERE cb.estado = 'Activa';

EXPLAIN ANALYZE 
SELECT cuenta_id,
       estado
FROM cuentas_bancarias
WHERE estado = 'Activa';

-- EJERCICIO 9 --
CREATE INDEX idx_biblioteca_año
ON biblioteca (año);

EXPLAIN ANALYZE 
SELECT titulo,
       autor,
	   año
FROM biblioteca
WHERE año BETWEEN '1605-01-01' AND '2025-03-08';

-- EJERCICIO 10 --
CREATE INDEX idx_renta_autos_cliente_id
ON renta_autos (cliente_id);
CREATE INDEX idx_renta_autos_vehiculo_id
ON renta_autos (vehiculo_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.modelo AS auto,
	   ru.fecha_renta
FROM renta_autos ru
JOIN clientes cl ON ru.cliente_id = cl.cliente_id
JOIN vehiculos v ON ru.vehiculo_id = v.vehiculo_id;

-- EJERCICIO 11 --
CREATE INDEX idx_vuelos_cliente_id
ON vuelos (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       v.origen,
	   v.destino,
	   v.fecha_salida
FROM vuelos v
JOIN clientes cl ON v.cliente_id = cl.cliente_id;

-- EJERCICIO 12 --
CREATE INDEX idx_ventas_cliente_id 
ON ventas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.total,
	   v.fecha_venta
FROM ventas v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id
WHERE v.fecha_venta >= CURRENT_DATE - INTERVAL '1 month';

-- EJERCICIO 13 --
EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       pr.nombre AS productos,
	   SUM(p.cantidad) AS cantidad_total,
	   p.fecha_pedido
FROM pedidos p
JOIN clientes cl ON p.cliente_id = cl.cliente_id
JOIN productos pr ON p.producto_id = pr.producto_id
GROUP BY cl.nombre, pr.nombre, p.fecha_pedido;

-- EJERCICIO 14 --
CREATE INDEX idx_productos_stock
ON productos (stock);

EXPLAIN ANALYZE 
SELECT nombre AS productos,
       stock
FROM productos
WHERE stock < 10;

-- EJERCICIO 15 --
CREATE INDEX idx_empleados_salario
ON empleados (salario);

EXPLAIN ANALYZE 
SELECT nombre AS empleados,
       salario
FROM empleados
WHERE salario > 5000;

-- EJERCICIO 16 --
CREATE INDEX idx_suscrpciones_cliente_id
ON suscripciones (cliente_id);
CREATE INDEX idx_suscripciones_estado
ON suscripciones USING HASH (estado);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       COUNT(s.suscripciones_id) AS total_suscripcion
FROM suscripciones s
JOIN clientes cl ON s.cliente_id = cl.cliente_id
GROUP BY cl.nombre
HAVING COUNT(s.suscripciones_id) > 1;

-- EJERCICIO 17 --
EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       COUNT(p.pedido_id) AS total_pedidos
FROM pedidos p
JOIN clientes cl ON p.cliente_id = cl.cliente_id
GROUP BY cl.nombre
HAVING COUNT (p.pedido_id) > 1;

-- EJERCICIO 18 --
CREATE INDEX idx_facturas_monto
ON facturas (monto);
CREATE INDEX idx_fk_facturas_cliente_id
ON facturas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       f.fecha_pago,
       f.monto
FROM facturas f
JOIN clientes cl ON f.cliente_id = cl.cliente_id
WHERE f.monto > 3000;

-- EJERCICIO 19 --
CREATE INDEX idx_renta_autos_fecha_renta
ON renta_autos (fecha_renta);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.modelo,
	   ra.fecha_renta
FROM renta_autos ra
JOIN clientes cl ON ra.cliente_id = cl.cliente_id
JOIN vehiculos v ON ra.vehiculo_id = v.vehiculo_id
WHERE ra.fecha_renta >= CURRENT_DATE - INTERVAL '6 months';

-- EJERCICIO 20 --
CREATE INDEX idx_fk_calificaciones_estudiante_id
ON calificaciones (estudiante_id);

EXPLAIN ANALYZE 
SELECT e.nombre_estudiante,
       c.calificacion
FROM calificaciones c
JOIN estudiantes e ON c.estudiante_id = e.estudiante_id;

-- EJERCICIO 21 --
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.total
FROM ventas v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

-- EJERCICIO 22 --
EXPLAIN ANALYZE 
SELECT nombre AS empleados,
       departamento
FROM empleados;

-- EJERCICIO 23 --
CREATE INDEX idx_fk_facturas_cliente_id
ON facturas (cliente_id);
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       f.monto,
	   f.fecha_pago
FROM facturas f
JOIN clientes cl
ON f.cliente_id = cl.cliente_id;

-- EJERCICIO 24 --
CREATE INDEX idx_fk_ventas_producto_id
ON ventas (producto_id);
CREATE INDEX idx_fk_productos_producto_id
ON productos (producto_id);

EXPLAIN ANALYZE 
SELECT pr.nombre AS productos,
       v.cantidad
FROM ventas v
JOIN productos pr
ON v.producto_id = pr.producto_id;

-- EJERCICIO 25 --
CREATE INDEX idx_fk_curso_curso_id
ON curso (curso_id);
CREATE INDEX idx_fk_estudiantes_curso_id
ON estudiantes (curso_id);

EXPLAIN ANALYZE
SELECT e.nombre_estudiante,
       c.nombre_curso
FROM curso c
JOIN estudiantes e
ON c.curso_id = e.curso_id
ORDER BY c.nombre_curso;

-- EJERCICIO 26 --
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       SUM(v.total) AS total_venta
FROM ventas v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id
GROUP BY (cl.nombre);

-- EJERCICIO 27 --
CREATE INDEX idx_fk_renta_autos_vehiculo_id
ON renta_autos (vehiculo_id);
CREATE INDEX idx_fk_vehiculos_vehiculo_id
ON vehiculos (vehiculo_id);

EXPLAIN ANALYZE 
SELECT v.modelo,
       ra.fecha_renta
FROM vehiculos v
JOIN renta_autos ra
ON ra.vehiculo_id = v.vehiculo_id;

-- EJERCICIO 28 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE iNDEX idx_fk_cuentas_bancarias_cliente_id
ON cuentas_bancarias(cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       cb.saldo,
	   cb.estado
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id
ORDER BY cb.estado;

-- EJERCICIO 29 --
CREATE INDEX idx_fk_estudiantes_curso_id
ON estudiantes (curso_id);
CREATE INDEX id_fk_curso_curso_id
ON curso (curso_id);

EXPLAIN ANALYZE 
SELECT e.nombre_estudiante,
       e.fecha_registro,
	   c.nombre_curso
FROM estudiantes e
JOIN curso c
ON e.curso_id = c.curso_id
ORDER BY c.nombre_curso ASC;

-- EJERCICIO 30 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_vuelos_cliente_id
ON vuelos (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.origen, 
	   v.destino,
	   v.fecha_salida
FROM vuelos v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

-- EJERCICIO 31 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_renta_autos_cliente_id
ON renta_autos(cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       ra.fecha_renta,
	   ra.vehiculo_id
FROM renta_autos ra
JOIN clientes cl
ON ra.cliente_id = cl.cliente_id;

-- EJERCICIO 32 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE iNDEX idx_fk_cuentas_bancarias_cliente_id
ON cuentas_bancarias(cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       cb.saldo
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id;

-- EJERCICIO 33 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_pedidos_cliente_id
ON pedidos (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre,
       SUM(pr.precio_unitario * p.cantidad) AS total
FROM pedidos p
JOIN clientes cl ON p.cliente_id = cl.cliente_id
JOIN productos pr ON p.producto_id = pr.producto_id
GROUP BY cl.nombre;

-- EJERCICIO 34 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.total
FROM clientes cl
JOIN ventas v
ON cl.cliente_id = v.cliente_id;


-- EJERCICIO 35 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_facturas_cliente_id
ON facturas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre,
       f.monto,
	   f.fecha_pago
FROM clientes cl
JOIN facturas f
ON f.cliente_id = cl.cliente_id;

-- EJERCICIO 36 --
CREATE INDEX idx_fk_ventas_producto_id
ON ventas (producto_id);

EXPLAIN ANALYZE
SELECT pr.nombre AS productos,
       v.cantidad
FROM productos pr
JOIN ventas v
ON pr.producto_id = v.producto_id;

-- EJERCICIO 37 --
CREATE INDEX idx_fk_curso_curso_id
ON curso (curso_id);
CREATE INDEX idx_fk_estudiantes_curso_id
ON estudiantes (curso_id);

EXPLAIN ANALYZE 
SELECT e.nombre_estudiante,
       c.nombre_curso
FROM estudiantes e
JOIN curso c
ON e.curso_id = c.curso_id
ORDER BY c.nombre_curso;

-- EJERCICIO 38 --
CREATE INDEX idx_renta_autos_vehiculo_id
ON renta_autos (vehiculo_id);
CREATE INDEX idx_fk_vehiculos_vehiculo_id
ON vehiculos (vehiculo_id);

EXPLAIN ANALYZE 
SELECT v.modelo,
       ra.fecha_renta
FROM renta_autos ra
JOIN vehiculos v
ON ra.vehiculo_id = v.vehiculo_id;

-- EJERCICIO 39 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_cuentas_bancarias_cliente_id
ON cuentas_bancarias(cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       cb.saldo
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id;

-- EJERCICIO 40 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_ventas_producto_id
ON ventas (producto_id);
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       SUM(pr.precio_unitario * v.cantidad) AS total
FROM ventas v
JOIN clientes cl ON v.cliente_id = cl.cliente_id
JOIN productos pr ON v.producto_id = pr.producto_id
GROUP BY cl.nombre;

-- EJERCICIO 41 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_vuelos_cliente_id
ON vuelos (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       v.origen,
	   v.destino,
	   v.fecha_salida
FROM vuelos v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id;

-- EJERCICIO 42 --
EXPLAIN ANALYZE
SELECT nombre,
       departamento
FROM empleados;

-- EJERCICIO 43 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_pedidos_cliente_id
ON pedidos (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       p.fecha_pedido,
	   SUM(p.cantidad * pr.precio_unitario) AS total
FROM pedidos p
JOIN clientes cl ON p.cliente_id = cl.cliente_id
JOIN productos pr ON p.producto_id = pr.producto_id
GROUP BY cl.nombre, p.fecha_pedido;

-- EJERCICIO 44 --
CREATE INDEX idx_renta_autos_vehiculo_id
ON renta_autos (vehiculo_id);
CREATE INDEX idx_fk_vehiculos_vehiculo_id
ON vehiculos (vehiculo_id);

EXPLAIN ANALYZE
SELECT v.modelo,
       COUNT(ra.vehiculo_id) AS total_rentado
FROM renta_autos ra
JOIN vehiculos v
ON ra.vehiculo_id = v.vehiculo_id
GROUP BY v.modelo;

-- EJERCICIO 45 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_facturas_cliente_id
ON facturas (cliente_id);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       COUNT(f.cliente_id) AS total_facturas
FROM facturas f
JOIN clientes cl
ON f.cliente_id = cl.cliente_id
GROUP BY cl.nombre;

-- EJERCICIO 46 --
CREATE INDEX idx_fk_curso_curso_id
ON curso (curso_id);
CREATE INDEX idx_fk_estudiantes_curso_id
ON estudiantes (curso_id);

EXPLAIN ANALYZE 
SELECT c.nombre_curso,
       COUNT(e.estudiante_id) AS total_estudiantes
FROM curso c
JOIN estudiantes e
ON c.curso_id = e.curso_id
GROUP BY c.nombre_curso;

-- EJERCICIO 47 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_ventas_cliente_id
ON ventas (cliente_id);
CREATE INDEX idx_ventas_total
ON ventas (total);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       v.total
FROM ventas v
JOIN clientes cl
ON v.cliente_id = cl.cliente_id
WHERE v.total > 5000;

-- EJERCICIO 48 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_vuelos_cliente_id
ON vuelos (cliente_id);
CREATE INDEX idx_vuelos_destino
ON vuelos USING HASH (destino);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       v.destino
FROM vuelos v
JOIN clientes cl
ON cl.cliente_id = v.cliente_id
WHERE v.destino = 'Bogotá';

-- EJERCICIO 49 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE iNDEX idx_fk_cuentas_bancarias_cliente_id
ON cuentas_bancarias(cliente_id);
CREATE INDEX idx_cuentas_bancarias_estado
ON cuentas_bancarias USING HASH (estado);

EXPLAIN ANALYZE
SELECT cl.nombre AS clientes,
       cb.estado
FROM cuentas_bancarias cb
JOIN clientes cl
ON cb.cliente_id = cl.cliente_id
WHERE cb.estado = 'Activa';

-- EJERCICIO 50 --
CREATE INDEX idx_pedidos_producto_id
ON pedidos (producto_id);
CREATE INDEX idx_productos_producto_id
ON productos (producto_id);
CREATE INDEX idx_pedidos_cantidad
ON pedidos (cantidad);

EXPLAIN ANALYZE
SELECT pr.nombre AS productos,
       p.cantidad
FROM pedidos p
JOIN productos pr
ON p.producto_id = pr.producto_id
WHERE p.cantidad > 10;

-- EJERCICIO 51 --
CREATE INDEX idx_fk_curso_curso_id
ON curso (curso_id);
CREATE INDEX idx_fk_estudiantes_curso_id
ON estudiantes (curso_id);

EXPLAIN ANALYZE 
SELECT c.nombre_curso,
       e.nombre_estudiante,
       e.fecha_registro
FROM curso c
JOIN estudiantes e
ON c.curso_id = e.curso_id
ORDER BY e.fecha_registro; 

-- EJERCICIO 52 --
CREATE INDEX idx_renta_autos_vehiculo_id
ON renta_autos (vehiculo_id);
CREATE INDEX idx_fk_vehiculos_vehiculo_id
ON vehiculos (vehiculo_id);
CREATE INDEX idx_renta_autos_fecha
ON renta_autos (fecha_renta);

EXPLAIN ANALYZE
SELECT v.modelo,
       ra.fecha_renta
FROM renta_autos ra
JOIN vehiculos v
ON ra.vehiculo_id = v.vehiculo_id
WHERE ra.fecha_renta >= CURRENT_DATE - INTERVAL '30 days';

-- EJERCICIO 53 --
CREATE INDEX idx_fk_clientes_cliente_id
ON clientes (cliente_id);
CREATE INDEX idx_fk_fecturas_cliente_id
ON facturas (cliente_id);

EXPLAIN ANALYZE 
SELECT cl.nombre AS clientes,
       SUM(f.monto) AS monto_total
FROM facturas f
JOIN clientes cl
ON f.cliente_id = cl.cliente_id
GROUP BY cl.nombre;