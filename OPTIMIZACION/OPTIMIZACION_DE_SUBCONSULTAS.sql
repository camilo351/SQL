-- TABLA AUTORES --
CREATE TABLE autores (
autor_id SERIAL PRIMARY KEY,
nombre_autor VARCHAR (50),
pais VARCHAR (50)
);

-- DATOS AUTORES --
INSERT INTO autores (nombre_autor, pais) VALUES
('Gabriel García Márquez', 'Colombia'),
('Mario Vargas Llosa', 'Perú'),
('Isabel Allende', 'Chile'),
('Jorge Luis Borges', 'Argentina'),
('Pablo Neruda', 'Chile'),
('Julio Cortázar', 'Argentina'),
('Carlos Fuentes', 'México'),
('Octavio Paz', 'México'),
('Laura Esquivel', 'México'),
('Juan Rulfo', 'México'),
('Ernesto Sábato', 'Argentina'),
('Eduardo Galeano', 'Uruguay'),
('César Vallejo', 'Perú'),
('Rubén Darío', 'Nicaragua'),
('Miguel Ángel Asturias', 'Guatemala'),
('José Martí', 'Cuba'),
('Ricardo Palma', 'Perú'),
('Horacio Quiroga', 'Uruguay'),
('Manuel Puig', 'Argentina'),
('Jorge Amado', 'Brasil'),
('Machado de Assis', 'Brasil'),
('Clarice Lispector', 'Brasil'),
('Luís de Camões', 'Portugal'),
('Fernando Pessoa', 'Portugal'),
('Miguel de Cervantes', 'España'),
('Lope de Vega', 'España'),
('Francisco de Quevedo', 'España'),
('Luis Cernuda', 'España'),
('Rosalía de Castro', 'España'),
('Vicente Aleixandre', 'España'),
('Federico García Lorca', 'España'),
('Rafael Alberti', 'España'),
('Camilo José Cela', 'España'),
('Gustavo Adolfo Bécquer', 'España'),
('Pío Baroja', 'España'),
('Benito Pérez Galdós', 'España'),
('Emilia Pardo Bazán', 'España'),
('Miguel Delibes', 'España'),
('Ramón María del Valle-Inclán', 'España'),
('Antonio Machado', 'España'),
('Leopoldo Lugones', 'Argentina'),
('Juan Carlos Onetti', 'Uruguay'),
('José Donoso', 'Chile'),
('Manuel Scorza', 'Perú'),
('Roberto Bolaño', 'Chile'),
('José Lezama Lima', 'Cuba'),
('Alejo Carpentier', 'Cuba'),
('Reinaldo Arenas', 'Cuba'),
('Álvaro Mutis', 'Colombia'),
('Rómulo Gallegos', 'Venezuela');

-- TABLA GENEROS --
CREATE TABLE generos (
genero_id SERIAL PRIMARY KEY,
nombre VARCHAR (50)
);

-- DATOS GENEROS --
INSERT INTO generos (nombre) VALUES
('Novela'),
('Cuento'),
('Poesía'),
('Ensayo'),
('Drama'),
('Crónica'),
('Biografía'),
('Autobiografía'),
('Fábula'),
('Epístola'),
('Leyenda'),
('Mito'),
('Relato corto'),
('Novela histórica'),
('Novela negra'),
('Ciencia ficción'),
('Fantasía'),
('Terror'),
('Literatura infantil'),
('Teatro');


-- TABLA LIBROS --
CREATE TABLE libros (
libro_id SERIAL PRIMARY KEY,
titulo VARCHAR (50),
autor_id INT, FOREIGN KEY (autor_id) REFERENCES autores (autor_id),
genero_id INT, FOREIGN KEY (genero_id) REFERENCES generos (genero_id),
fecha_publicacion DATE,
stock INT
);

-- DATOS LIBROS --
INSERT INTO libros (titulo, autor_id, genero_id, fecha_publicacion, stock) VALUES
('Cien años de soledad', 1, 1, '1967-05-30', 20),
('La ciudad y los perros', 2, 1, '1963-10-01', 15),
('La casa de los espíritus', 3, 1, '1982-01-01', 18),
('Ficciones', 4, 2, '1944-01-01', 10),
('Veinte poemas de amor', 5, 3, '1924-06-01', 25),
('Rayuela', 6, 1, '1963-01-01', 12),
('Aura', 7, 2, '1962-01-01', 8),
('El laberinto de la soledad', 8, 4, '1950-01-01', 6),
('Como agua para chocolate', 9, 1, '1989-01-01', 14),
('Pedro Páramo', 10, 1, '1955-01-01', 17),
('El túnel', 11, 1, '1948-01-01', 22),
('Las venas abiertas de América Latina', 12, 4, '1971-01-01', 9),
('Trilce', 13, 3, '1922-01-01', 7),
('Azul', 14, 3, '1888-01-01', 5),
('Hombres de maíz', 15, 1, '1949-01-01', 13),
('Versos sencillos', 16, 3, '1891-01-01', 8),
('Tradiciones peruanas', 17, 2, '1872-01-01', 6),
('Cuentos de amor, de locura y de muerte', 18, 2, '1917-01-01', 14),
('Boquitas pintadas', 19, 1, '1969-01-01', 10),
('Gabriela, clavo y canela', 20, 1, '1958-01-01', 12),
('Dom Casmurro', 21, 1, '1899-01-01', 11),
('La hora de la estrella', 22, 1, '1977-01-01', 15),
('Los Lusíadas', 23, 3, '1572-01-01', 9),
('Libro del desasosiego', 24, 3, '1982-01-01', 6),
('Don Quijote de la Mancha', 25, 1, '1605-01-16', 30),
('Fuenteovejuna', 26, 5, '1619-01-01', 20),
('La vida es sueño', 27, 5, '1635-01-01', 18),
('La realidad y el deseo', 28, 3, '1924-01-01', 9),
('Cantares gallegos', 29, 3, '1863-01-01', 5),
('La destrucción o el amor', 30, 3, '1935-01-01', 8),
('Bodas de sangre', 31, 5, '1933-01-01', 10),
('Sobre los ángeles', 32, 3, '1929-01-01', 7),
('La colmena', 33, 1, '1951-01-01', 12),
('Rimas', 34, 3, '1871-01-01', 11),
('El árbol de la ciencia', 35, 1, '1911-01-01', 6),
('Fortunata y Jacinta', 36, 1, '1887-01-01', 4),
('Los pazos de Ulloa', 37, 1, '1886-01-01', 9),
('Los santos inocentes', 38, 1, '1981-01-01', 14),
('Luces de bohemia', 39, 5, '1920-01-01', 7),
('Campos de Castilla', 40, 3, '1912-01-01', 10),
('Las fuerzas extrañas', 41, 2, '1906-01-01', 6),
('El astillero', 42, 1, '1961-01-01', 8),
('El obsceno pájaro de la noche', 43, 1, '1970-01-01', 5),
('Redoble por Rancas', 44, 1, '1970-01-01', 9),
('Los detectives salvajes', 45, 1, '1998-01-01', 11),
('Paradiso', 46, 1, '1966-01-01', 7),
('El reino de este mundo', 47, 1, '1949-01-01', 6),
('El color del verano', 48, 1, '1999-01-01', 8),
('Empresas y tribulaciones de Maqroll', 49, 1, '1986-01-01', 5),
('Doña Bárbara', 50, 1, '1929-01-01', 13);

INSERT INTO libros (titulo, autor_id, genero_id, fecha_publicacion, stock) VALUES
-- Más libros para autor_id = 1
('El otoño del patriarca', 1, 1, '1975-01-01', 25),
('Crónica de una muerte anunciada', 1, 1, '1981-03-01', 20),
('El amor en los tiempos del cólera', 1, 2, '1985-01-01', 18),
('Del amor y otros demonios', 1, 2, '1994-10-01', 15),
('Memoria de mis putas tristes', 1, 2, '2004-10-01', 12),
('Noticia de un secuestro', 1, 3, '1996-01-01', 10),
-- Autor con varios libros (autor_id = 2)
('Conversación en la catedral', 2, 1, '1969-01-01', 14),
('La ciudad y los perros', 2, 1, '1963-01-01', 16),
('La casa verde', 2, 1, '1966-01-01', 12),
('El hablador', 2, 2, '1987-01-01', 10),
-- Autor con varios libros (autor_id = 3)
('La casa de los espíritus', 3, 1, '1982-01-01', 18),
('Paula', 3, 2, '1994-01-01', 12),
('Retrato en sepia', 3, 2, '2000-01-01', 10),
-- Distribución entre otros autores
('Ficciones', 4, 1, '1944-01-01', 14),
('El Aleph', 4, 1, '1949-01-01', 13),
('Historia universal de la infamia', 4, 2, '1935-01-01', 11),
('Veinte poemas de amor', 5, 3, '1924-01-01', 20),
('Canto general', 5, 3, '1950-01-01', 17),
('Rayuela', 6, 1, '1963-01-01', 15),
('Final del juego', 6, 2, '1956-01-01', 12),
('El reino de este mundo', 7, 1, '1949-01-01', 14),
('Los pasos perdidos', 7, 1, '1953-01-01', 11),
('Pedro Páramo', 8, 1, '1955-01-01', 16),
('El llano en llamas', 8, 2, '1953-01-01', 12),
('Sobre héroes y tumbas', 9, 1, '1961-01-01', 13),
('El túnel', 9, 1, '1948-01-01', 15),
('Espejos', 10, 2, '2008-01-01', 11),
('Las venas abiertas de América Latina', 10, 4, '1971-01-01', 19),
('Ensayo sobre la ceguera', 11, 1, '1995-01-01', 12),
('El evangelio según Jesucristo', 11, 1, '1991-01-01', 14),
('1984', 12, 1, '1949-01-01', 20),
('Rebelión en la granja', 12, 1, '1945-01-01', 18),
('Crimen y castigo', 13, 1, '1866-01-01', 17),
('Los hermanos Karamazov', 13, 1, '1880-01-01', 15),
('Anna Karenina', 14, 1, '1877-01-01', 16),
('Guerra y paz', 14, 1, '1869-01-01', 19),
('El nombre de la rosa', 15, 1, '1980-01-01', 14),
('La insoportable levedad del ser', 16, 1, '1984-01-01', 13),
('Los detectives salvajes', 17, 1, '1998-01-01', 14),
('2666', 18, 1, '2004-01-01', 15),
('El código Da Vinci', 19, 1, '2003-01-01', 18),
('Ángeles y demonios', 19, 1, '2000-01-01', 16),
('It', 20, 1, '1986-01-01', 17),
('El resplandor', 20, 1, '1977-01-01', 18),
('Cementerio de animales', 21, 1, '1983-01-01', 16),
('Buenos presagios', 22, 1, '1990-01-01', 15),
('American Gods', 23, 1, '2001-01-01', 16),
('Divergente', 24, 1, '2011-01-01', 14),
('Los juegos del hambre', 25, 1, '2008-01-01', 18);

-- TABLA USUARIOS --
CREATE TABLE usuarios (
usuario_id SERIAL PRIMARY KEY,
nombre_usuario VARCHAR (50),
correo VARCHAR (50),
telefono VARCHAR (50)
);

-- DATOS USUARIOS --
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (1, 'Scotti', 'sgilbart0@printfriendly.com', '132-86-8711');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (2, 'Elizabeth', 'emacrierie1@elegantthemes.com', '138-78-8428');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (3, 'Baxy', 'bfladgate2@psu.edu', '432-81-3212');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (4, 'Gnni', 'glilliman3@surveymonkey.com', '441-80-5721');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (5, 'Chandler', 'cjarrel4@flavors.me', '707-35-6926');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (6, 'Hyacinthie', 'hlambrecht5@wikipedia.org', '392-47-0546');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (7, 'Isaac', 'ikloska6@people.com.cn', '679-19-0027');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (8, 'Gerrilee', 'gkilbourne7@livejournal.com', '253-86-7716');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (9, 'Izaak', 'ijanda8@cnn.com', '646-01-2630');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (10, 'Byrle', 'bmate9@economist.com', '348-98-6681');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (11, 'Collin', 'cgrievea@unicef.org', '681-22-9906');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (12, 'Roselin', 'rfauguelb@about.com', '857-38-0295');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (13, 'Perren', 'pfeldhuhnc@npr.org', '535-59-2349');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (14, 'Eberto', 'elaurenced@storify.com', '326-30-7029');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (15, 'Eirena', 'eboylunde@dropbox.com', '470-96-4303');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (16, 'Tad', 'tleerf@joomla.org', '544-54-4727');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (17, 'Claudine', 'cchampeg@nps.gov', '434-79-9930');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (18, 'Petra', 'pcunnahh@flickr.com', '899-54-5309');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (19, 'Chandler', 'callixi@newsvine.com', '816-94-9247');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (20, 'Dael', 'drawlynsj@uol.com.br', '615-38-6090');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (21, 'Hort', 'hannionk@quantcast.com', '672-90-1316');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (22, 'Anabelle', 'abarochl@tripadvisor.com', '395-32-4136');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (23, 'Mal', 'mninnottim@ebay.co.uk', '529-71-8400');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (24, 'Felipa', 'fhessn@cbslocal.com', '355-83-7718');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (25, 'Tanner', 'tchetwyndo@globo.com', '346-80-3364');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (26, 'Ricky', 'rcadellp@hugedomains.com', '230-56-6813');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (27, 'Amargo', 'afancottq@ucla.edu', '793-75-2836');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (28, 'Margalo', 'mpinarer@dropbox.com', '887-44-4181');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (29, 'Aline', 'astraines@unicef.org', '380-13-0397');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (30, 'Lay', 'ldemainet@wikispaces.com', '389-59-9065');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (31, 'Lexis', 'lcesconu@desdev.cn', '664-06-4092');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (32, 'Pablo', 'pmattosoffv@hostgator.com', '372-84-8002');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (33, 'Tanny', 'tsprostonw@craigslist.org', '818-34-1899');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (34, 'Araldo', 'akarpychevx@alexa.com', '551-46-4115');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (35, 'Urbano', 'usigny@alibaba.com', '652-98-4166');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (36, 'Ludovika', 'lhuelinz@phpbb.com', '834-46-9089');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (37, 'Julianna', 'jroos10@blogtalkradio.com', '474-13-2451');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (38, 'Traci', 'tbuick11@vistaprint.com', '267-53-4333');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (39, 'Benjie', 'btolman12@sciencedirect.com', '437-11-1638');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (40, 'Farrell', 'fmiddle13@amazonaws.com', '257-86-5562');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (41, 'Franklyn', 'ffairbrother14@alexa.com', '256-10-7766');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (42, 'Justinian', 'jfitzpatrick15@newsvine.com', '686-10-8647');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (43, 'Devi', 'dhenlon16@yelp.com', '360-50-9350');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (44, 'Eziechiele', 'efrancino17@dropbox.com', '775-75-9410');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (45, 'Kleon', 'kseggie18@wisc.edu', '634-25-2526');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (46, 'Rupert', 'rlutzmann19@globo.com', '627-16-6740');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (47, 'Alphonse', 'agritten1a@simplemachines.org', '644-77-5318');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (48, 'Noelani', 'nwarner1b@bravesites.com', '510-48-2283');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (49, 'Celinka', 'cneeson1c@topsy.com', '890-40-6957');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (50, 'Vittorio', 'vpodbury1d@com.com', '750-98-3724');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (51, 'Marv', 'mbarcroft1e@ft.com', '574-51-4636');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (52, 'Vonnie', 'vkydde1f@reddit.com', '787-69-4114');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (53, 'Sandor', 'sdownse1g@storify.com', '766-49-7334');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (54, 'Nikaniki', 'nnoto1h@theguardian.com', '748-55-7428');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (55, 'Cynthie', 'ckeywood1i@businesswire.com', '582-71-9674');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (56, 'Elmore', 'efeatherstonhalgh1j@ehow.com', '281-12-7225');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (57, 'Skelly', 'slillow1k@t.co', '653-69-4421');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (58, 'Priscella', 'phaylands1l@msu.edu', '711-29-5318');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (59, 'Ophelie', 'owevell1m@ucsd.edu', '642-03-0594');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (60, 'Ellen', 'efeaviour1n@zimbio.com', '233-83-2361');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (61, 'Bethanne', 'bprescote1o@shutterfly.com', '111-81-8707');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (62, 'Guy', 'gbaxstair1p@zimbio.com', '787-62-0052');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (63, 'Alejandra', 'alockett1q@reference.com', '864-25-1968');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (64, 'Betteann', 'bgrove1r@go.com', '863-98-8884');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (65, 'Jarvis', 'jperrygo1s@histats.com', '529-16-8357');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (66, 'Vanni', 'vpeyntue1t@slashdot.org', '247-22-5655');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (67, 'Elenore', 'earonsohn1u@chron.com', '491-92-8000');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (68, 'Arleen', 'apaddon1v@plala.or.jp', '152-38-3660');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (69, 'Shurlock', 'scancellieri1w@princeton.edu', '881-69-7124');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (70, 'Claire', 'calpes1x@wired.com', '681-26-9663');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (71, 'Beulah', 'bcoumbe1y@ezinearticles.com', '197-31-3378');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (72, 'Karlik', 'ksebert1z@ustream.tv', '678-46-6439');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (73, 'Mariann', 'mmcgaraghan20@ning.com', '737-40-4498');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (74, 'Oralee', 'ohartnup21@histats.com', '482-96-3695');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (75, 'Henrietta', 'hdraysey22@yellowpages.com', '698-57-0341');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (76, 'Sybilla', 'sansteys23@cyberchimps.com', '554-49-4647');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (77, 'Ash', 'agile24@china.com.cn', '230-11-3028');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (78, 'Boonie', 'bamberg25@acquirethisname.com', '878-28-7034');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (79, 'My', 'mproughten26@purevolume.com', '179-41-2425');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (80, 'Hazel', 'hdemange27@phpbb.com', '259-22-3960');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (81, 'Agneta', 'aburnell28@macromedia.com', '857-16-1844');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (82, 'Lotte', 'lwellstead29@howstuffworks.com', '265-31-3100');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (83, 'Joana', 'jmartinovic2a@rambler.ru', '797-22-5539');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (84, 'Sandy', 'ssidney2b@google.pl', '549-10-7256');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (85, 'Cahra', 'ckydde2c@unblog.fr', '808-38-1768');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (86, 'Harley', 'hkobieriecki2d@youku.com', '224-85-4892');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (87, 'Tobye', 'tcrunkhorn2e@bbb.org', '309-27-4451');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (88, 'Osmond', 'origolle2f@ow.ly', '164-47-3819');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (89, 'Glynis', 'gmurdy2g@icq.com', '721-84-8279');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (90, 'Sterling', 'shutchins2h@cornell.edu', '370-36-2583');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (91, 'Cathlene', 'ckurten2i@printfriendly.com', '533-67-5549');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (92, 'Jodie', 'jfrost2j@rambler.ru', '100-91-6354');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (93, 'Alisha', 'ahussell2k@goo.ne.jp', '657-02-0404');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (94, 'Rivkah', 'rpavlovic2l@cpanel.net', '614-53-2764');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (95, 'Dore', 'ddabernott2m@home.pl', '486-92-4274');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (96, 'Casey', 'cbrucker2n@sciencedirect.com', '375-05-0863');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (97, 'Doria', 'dclaasen2o@blogs.com', '648-17-1158');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (98, 'Odele', 'osprulls2p@lulu.com', '613-19-6538');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (99, 'Whitney', 'waers2q@mayoclinic.com', '340-85-8409');
insert into usuarios (usuario_id, nombre_usuario, correo, telefono) values (100, 'Rana', 'rbountiff2r@bloglovin.com', '228-72-7559');

-- TABLA PRESTAMO --
CREATE TABLE prestamo (
prestamo_id SERIAL PRIMARY KEY,
usuario_id INT,  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
libro_id INT,  FOREIGN KEY (libro_id) REFERENCES libros (libro_id),
fecha_prestamo DATE,
fecha_devolucion DATE
);

-- DATOS PRESTAMO --
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (1, 9, 4, '2025-03-10', '2025-03-09');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (2, 59, 82, '2025-02-23', '2025-03-09');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (3, 78, 80, '2025-02-24', '2025-01-29');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (4, 48, 32, '2025-01-27', '2025-03-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (5, 82, 90, '2025-02-04', '2025-01-30');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (6, 80, 16, '2025-03-02', '2025-01-31');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (7, 86, 46, '2025-02-16', '2025-01-17');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (8, 24, 75, '2025-01-27', '2025-03-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (9, 4, 76, '2025-03-10', '2025-03-12');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (10, 34, 68, '2025-03-04', '2025-02-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (11, 84, 57, '2025-01-13', '2025-01-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (12, 48, 24, '2025-03-02', '2025-02-08');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (13, 88, 75, '2025-01-14', '2025-02-15');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (14, 47, 52, '2025-02-04', '2025-02-06');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (15, 85, 86, '2025-03-12', '2025-03-08');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (16, 73, 79, '2025-01-31', '2025-02-16');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (17, 35, 65, '2025-01-23', '2025-02-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (18, 39, 59, '2025-02-21', '2025-02-06');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (19, 37, 81, '2025-02-27', '2025-01-17');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (20, 41, 19, '2025-01-16', '2025-03-10');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (21, 19, 67, '2025-03-02', '2025-02-03');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (22, 40, 87, '2025-03-05', '2025-02-06');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (23, 79, 45, '2025-02-09', '2025-03-01');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (24, 79, 85, '2025-02-26', '2025-01-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (25, 9, 43, '2025-01-08', '2025-03-07');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (26, 60, 85, '2025-03-09', '2025-02-26');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (27, 75, 10, '2025-01-16', '2025-01-10');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (28, 68, 18, '2025-03-12', '2025-02-25');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (29, 50, 75, '2025-01-02', '2025-01-22');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (30, 75, 76, '2025-03-06', '2025-01-31');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (31, 80, 87, '2025-01-05', '2025-01-19');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (32, 33, 53, '2025-02-07', '2025-02-15');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (33, 53, 38, '2025-02-19', '2025-01-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (34, 80, 63, '2025-01-27', '2025-02-01');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (35, 15, 73, '2025-02-14', '2025-02-01');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (36, 35, 30, '2025-02-20', '2025-02-23');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (37, 52, 9, '2025-01-27', '2025-01-22');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (38, 70, 20, '2025-02-21', '2025-03-06');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (39, 80, 32, '2025-02-08', '2025-01-24');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (40, 70, 8, '2025-02-16', '2025-02-26');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (41, 94, 47, '2025-03-10', '2025-01-16');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (42, 23, 82, '2025-02-24', '2025-01-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (43, 89, 92, '2025-01-24', '2025-01-07');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (44, 79, 50, '2025-02-20', '2025-02-24');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (45, 18, 68, '2025-01-20', '2025-03-05');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (46, 44, 80, '2025-02-17', '2025-01-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (47, 7, 39, '2025-02-19', '2025-02-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (48, 89, 16, '2025-01-20', '2025-02-05');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (49, 7, 94, '2025-03-12', '2025-01-17');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (50, 69, 35, '2025-01-11', '2025-01-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (51, 88, 47, '2025-01-04', '2025-02-27');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (52, 74, 30, '2025-03-03', '2025-01-21');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (53, 2, 93, '2025-01-24', '2025-03-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (54, 25, 48, '2025-02-28', '2025-02-20');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (55, 88, 6, '2025-01-31', '2025-02-05');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (56, 19, 12, '2025-02-01', '2025-03-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (57, 92, 45, '2025-02-20', '2025-03-10');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (58, 4, 48, '2025-01-14', '2025-01-12');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (59, 60, 45, '2025-01-21', '2025-02-22');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (60, 21, 87, '2025-01-16', '2025-01-27');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (61, 50, 18, '2025-01-14', '2025-01-20');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (62, 85, 93, '2025-03-10', '2025-01-07');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (63, 14, 24, '2025-03-12', '2025-01-31');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (64, 48, 74, '2025-03-05', '2025-03-05');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (65, 6, 79, '2025-01-22', '2025-01-16');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (66, 1, 66, '2025-01-19', '2025-03-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (67, 11, 88, '2025-02-21', '2025-01-25');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (68, 31, 13, '2025-02-04', '2025-02-09');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (69, 7, 26, '2025-02-17', '2025-02-25');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (70, 48, 87, '2025-01-29', '2025-01-30');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (71, 23, 72, '2025-03-05', '2025-02-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (72, 93, 67, '2025-01-21', '2025-01-30');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (73, 29, 26, '2025-01-23', '2025-02-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (74, 22, 27, '2025-01-03', '2025-02-16');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (75, 76, 8, '2025-01-21', '2025-01-20');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (76, 84, 71, '2025-03-11', '2025-02-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (77, 39, 73, '2025-01-12', '2025-02-02');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (78, 48, 18, '2025-01-21', '2025-03-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (79, 94, 26, '2025-02-16', '2025-02-26');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (80, 50, 31, '2025-03-09', '2025-02-12');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (81, 87, 32, '2025-02-09', '2025-01-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (82, 94, 41, '2025-03-09', '2025-02-10');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (83, 2, 34, '2025-02-15', '2025-03-10');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (84, 70, 60, '2025-01-07', '2025-03-01');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (85, 15, 49, '2025-03-11', '2025-01-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (86, 55, 68, '2025-01-19', '2025-02-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (87, 76, 92, '2025-01-01', '2025-02-01');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (88, 7, 36, '2025-02-17', '2025-02-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (89, 19, 72, '2025-01-07', '2025-02-13');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (90, 80, 60, '2025-03-06', '2025-02-05');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (91, 68, 74, '2025-01-05', '2025-02-26');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (92, 3, 16, '2025-03-04', '2025-01-11');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (93, 59, 83, '2025-03-11', '2025-01-25');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (94, 66, 90, '2025-01-02', '2025-02-23');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (95, 22, 91, '2025-01-24', '2025-03-04');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (96, 32, 79, '2025-01-05', '2025-03-03');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (97, 69, 41, '2025-03-04', '2025-02-22');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (98, 83, 24, '2025-01-10', '2025-02-12');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (99, 90, 11, '2025-01-07', '2025-01-08');
insert into prestamo (prestamo_id, usuario_id, libro_id, fecha_prestamo, fecha_devolucion) values (100, 51, 62, '2025-01-05', '2025-01-24');

-- TABLA MULTAS --
CREATE TABLE multas (
multa_id SERIAL PRIMARY KEY,
usuario_id INT,  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
monto NUMERIC (10, 2),
estado VARCHAR (50)
);

-- DATOS MULTAS --
insert into multas (multa_id, usuario_id, monto, estado) values (1, 11, 467.87, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (2, 52, 484.37, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (3, 67, 492.0, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (4, 73, 107.85, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (5, 84, 394.61, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (6, 26, 421.64, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (7, 20, 346.93, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (8, 6, 156.38, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (9, 33, 264.9, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (10, 80, 445.81, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (11, 22, 438.37, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (12, 43, 300.47, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (13, 87, 239.26, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (14, 31, 310.93, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (15, 22, 103.96, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (16, 22, 341.07, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (17, 97, 280.82, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (18, 32, 182.65, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (19, 39, 192.92, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (20, 53, 203.38, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (21, 52, 149.87, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (22, 95, 262.23, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (23, 45, 272.16, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (24, 74, 107.92, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (25, 13, 403.76, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (26, 80, 206.28, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (27, 10, 452.45, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (28, 63, 274.62, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (29, 98, 444.55, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (30, 46, 388.9, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (31, 49, 466.82, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (32, 83, 115.18, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (33, 59, 191.79, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (34, 52, 347.49, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (35, 37, 443.53, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (36, 29, 286.61, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (37, 7, 360.36, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (38, 6, 329.82, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (39, 64, 372.9, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (40, 34, 328.17, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (41, 75, 375.74, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (42, 96, 180.73, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (43, 8, 409.05, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (44, 16, 489.7, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (45, 39, 474.34, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (46, 29, 443.11, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (47, 6, 499.1, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (48, 87, 268.53, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (49, 39, 397.64, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (50, 88, 213.39, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (51, 98, 369.82, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (52, 69, 461.52, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (53, 95, 224.99, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (54, 72, 381.06, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (55, 33, 270.78, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (56, 64, 364.14, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (57, 5, 133.46, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (58, 58, 146.21, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (59, 25, 335.54, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (60, 13, 272.42, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (61, 77, 199.18, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (62, 89, 329.9, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (63, 78, 468.66, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (64, 48, 293.57, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (65, 93, 245.63, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (66, 28, 183.33, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (67, 9, 437.58, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (68, 51, 387.0, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (69, 55, 367.62, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (70, 93, 232.05, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (71, 19, 297.91, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (72, 89, 240.64, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (73, 67, 404.43, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (74, 56, 153.9, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (75, 33, 416.6, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (76, 89, 136.35, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (77, 49, 400.45, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (78, 2, 292.08, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (79, 85, 233.76, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (80, 33, 473.51, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (81, 74, 300.63, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (82, 55, 339.36, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (83, 79, 481.93, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (84, 73, 355.22, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (85, 34, 376.42, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (86, 43, 269.3, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (87, 75, 389.16, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (88, 79, 165.1, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (89, 74, 129.89, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (90, 67, 498.17, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (91, 27, 174.06, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (92, 83, 408.15, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (93, 87, 247.08, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (94, 64, 217.94, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (95, 1, 263.13, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (96, 74, 482.98, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (97, 62, 377.13, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (98, 56, 234.16, 'Pendiente');
insert into multas (multa_id, usuario_id, monto, estado) values (99, 45, 258.25, 'Pagado');
insert into multas (multa_id, usuario_id, monto, estado) values (100, 9, 394.2, 'Pagado');

-- EJERCICIO 1 --
CREATE INDEX idx_multas_estado
ON multas USING HASH (estado);

EXPLAIN ANALYZE
SELECT DISTINCT l.titulo, 
       u.nombre_usuario,
	   m.estado
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN usuarios u ON p.usuario_id = u.usuario_id
JOIN multas m ON u.usuario_id = m.usuario_id
WHERE m.estado = 'Pendiente';

-- EJERCICIO 2 --
SELECT DISTINCT u.nombre_usuario,
       l.titulo,
	   g.nombre
FROM prestamo p
JOIN usuarios u ON p.usuario_id = u.usuario_id
JOIN libros l ON p.libro_id = l.libro_id
JOIN generos g ON g.genero_id = l.genero_id
WHERE g.nombre = 'Novela';

-- EJERCICIO 3 --
WITH libros_escritos AS (
SELECT a.autor_id,
       a.nombre_autor,
       COUNT (l.autor_id) AS total_libros
FROM autores a
JOIN libros l
ON a.autor_id = l.autor_id
GROUP BY a.autor_id,a.nombre_autor
)
SELECT DISTINCT l.titulo,
       le.nombre_autor,
       le.total_libros
FROM libros l
JOIN libros_escritos le
ON le.autor_id = l.autor_id
WHERE le.total_libros > 3
ORDER BY total_libros;

-- EJERCICIO 4 --
SELECT u.nombre_usuario
FROM prestamo p
JOIN usuarios u ON p.usuario_id = u.usuario_id
JOIN libros l ON p.libro_id = l.libro_id
JOIN generos g ON l.genero_id = g.genero_id
GROUP BY u.nombre_usuario
HAVING COUNT(DISTINCT l.genero_id) >= 2;

-- EJERCICIO 5 --
SELECT l.titulo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
GROUP BY l.titulo
HAVING COUNT(DISTINCT p.libro_id) >= 1;

-- EJERCICIO 6 --
EXPLAIN ANALYZE
SELECT nombre_usuario
FROM usuarios
WHERE EXISTS (SELECT 1,
              COUNT(usuario_id) 
              FROM multas
			  HAVING COUNT(usuario_id) >= 1);

-- EJERCICIO 7 --
SELECT a.nombre_autor,
       p.fecha_prestamo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN autores a ON l.autor_id = a.autor_id
WHERE p.fecha_prestamo >= CURRENT_DATE - INTERVAL '30 days';

-- EJERCICIO 8 --
SELECT g.nombre
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN generos g ON l.genero_id = g.genero_id
GROUP BY g.nombre
HAVING COUNT(l.genero_id) >= 1;

-- EJERCICIO 9 --
EXPLAIN ANALYZE
SELECT titulo
FROM libros
WHERE EXISTS (SELECT 1,
             COUNT(libro_id)
             FROM prestamo
			 HAVING COUNT (libro_id) < 1);

-- EJERCICIO 10 --
EXPLAIN ANALYZE 
SELECT u.nombre_usuario, l.titulo, a.nombre_autor
FROM prestamo p
JOIN libros l ON l.libro_id = p.libro_id
JOIN usuarios u ON u.usuario_id = p.usuario_id
JOIN autores a ON l.autor_id = a.autor_id
WHERE a.nombre_autor = 'Gabriel García Márquez';

-- EJERCICIO 11 --
EXPLAIN ANALYZE
SELECT DISTINCT l.titulo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN usuarios u ON p.usuario_id = u.usuario_id
JOIN multas m ON u.usuario_id = m.usuario_id
WHERE m.estado = 'Pendiente';

-- EJERCICIO 12 --
EXPLAIN ANALYZE 
SELECT nombre_autor
FROM autores
WHERE EXISTS (
            SELECT 1
			FROM prestamo
			WHERE fecha_devolucion <= CURRENT_DATE - INTERVAL '60 days'
);

-- EJERCICIO 13 --
EXPLAIN ANALYZE 
SELECT l.titulo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN usuarios u ON p.usuario_id = u.usuario_id
GROUP BY l.titulo
HAVING COUNT(DISTINCT p.usuario_id) >= 3;

-- EJERCICIO 14 --
EXPLAIN ANALYZE
SELECT u.nombre_usuario
FROM prestamo p
JOIN usuarios u ON p.usuario_id = u.usuario_id
WHERE p.fecha_devolucion > p.fecha_prestamo;

-- EJERCICIO 15 --
EXPLAIN ANALYZE 
SELECT DISTINCT u.nombre_usuario
FROM usuarios u
JOIN multas m
ON u.usuario_id = m.usuario_id
WHERE m.estado = 'Pagado';

-- EJERCICIO 16 --
EXPLAIN ANALYZE 
SELECT DISTINCT l.titulo
FROM prestamo p
JOIN libros l
ON l.libro_id = p.libro_id
GROUP BY l.titulo
HAVING COUNT(p.libro_id) = 1;

-- EJERCICIO 17 --
EXPLAIN ANALYZE
SELECT  u.nombre_usuario, COUNT(m.usuario_id) AS total
FROM multas m
JOIN usuarios u
ON m.usuario_id = u.usuario_id
GROUP BY u.nombre_usuario
HAVING COUNT(m.usuario_id) > 1;

-- EJERCICIO 18 --
EXPLAIN ANALYZE 
SELECT l.titulo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
JOIN autores a ON l.autor_id = a.autor_id
WHERE a.pais = 'Colombia';

-- EJERCICIO 19 --
EXPLAIN ANALYZE
SELECT l.titulo
FROM prestamo p
JOIN libros l ON p.libro_id = l.libro_id
WHERE p.fecha_prestamo >= CURRENT_DATE - INTERVAL '7 days';

-- EJERCICIO 20 --
EXPLAIN ANALYZE 
SELECT u.nombre_usuario
FROM prestamo p
JOIN libros l ON l.libro_id = p.libro_id
JOIN usuarios u ON u.usuario_id = p.usuario_id
GROUP BY u.nombre_usuario
HAVING COUNT(DISTINCT p.libro_id) > 2;

-- EJERCICIO 21 --
WITH total_libros AS (
    SELECT l.titulo,
	       u.nombre_usuario,
	       p.fecha_prestamo,
		   COUNT(p.usuario_id) AS numero_prestamo
	FROM prestamo p
	JOIN libros l ON p.libro_id = l.libro_id
	JOIN usuarios u ON p.usuario_id = u.usuario_id
	GROUP BY l.titulo, u.nombre_usuario, p.fecha_prestamo
)
SELECT titulo, nombre_usuario
FROM total_libros
WHERE fecha_prestamo >= CURRENT_DATE - INTERVAL '6 months' AND numero_prestamo > 1;

-- EJERCICIO 22 --
WITH total_multas AS (
    SELECT u.nombre_usuario,
	       COUNT(m.usuario_id) AS total_multas,
		   SUM(m.monto) AS monto_total
	FROM usuarios u
	JOIN multas m
	ON u.usuario_id = m.usuario_id	
	GROUP BY u.nombre_usuario
)
SELECT nombre_usuario,
       total_multas,
	   monto_total
FROM total_multas
ORDER BY total_multas DESC;

-- EJERCICIO 23 --
WITH cantidad_libros AS (
   SELECT a.nombre_autor,
          COUNT(l.autor_id) AS total_libros
   FROM autores a
   JOIN libros l
   ON a.autor_id = l.autor_id
   GROUP BY a.nombre_autor
)
SELECT nombre_autor,
       total_libros
FROM cantidad_libros
WHERE total_libros >= 3
ORDER BY total_libros DESC;

-- EJERCICIO 24 --
EXPLAIN ANALYZE
WITH genero_prestados AS (
    SELECT 
	       g.nombre AS genero,
	       COUNT(*) AS total_genero_prestado
    FROM prestamo p
	JOIN libros l ON l.libro_id = p.libro_id
	JOIN generos g ON l.genero_id = g.genero_id
	GROUP BY  g.nombre
)
SELECT genero,
       total_genero_prestado
FROM genero_prestados 
WHERE total_genero_prestado > 10;

-- EJERCICIO 25 --
WITH libros_devueltos AS (
    SELECT u.nombre_usuario,
	       p.fecha_devolucion
	FROM usuarios u
	JOIN prestamo p
	ON u.usuario_id = p.usuario_id
)
SELECT nombre_usuario
FROM libros_devueltos
WHERE fecha_devolucion < CURRENT_DATE - INTERVAL '2 months';

-- EJERCICIO 26 --
WITH promedio_devolucion AS (
    SELECT u.nombre_usuario,
	       (p.fecha_devolucion - p.fecha_prestamo) AS diferencia
	FROM prestamo p
	JOIN usuarios u
	ON p.usuario_id = u.usuario_id
	WHERE p.fecha_devolucion IS NOT NULL
)
SELECT nombre_usuario,
       ROUND (AVG(diferencia), 0) AS promedio_dia
FROM promedio_devolucion
GROUP BY nombre_usuario;

-- EJERCICIO 27 --
EXPLAIN ANALYZE
WITH generos_prestados AS (
    SELECT g.nombre AS genero,
           COUNT(p.libro_id) AS total_libros
	FROM prestamo p
	JOIN libros l ON l.libro_id = p.libro_id
	JOIN generos g ON g.genero_id = l.genero_id
	WHERE p.libro_id IS NOT NULL
	GROUP BY g.nombre
)
SELECT genero,
       total_libros
FROM generos_prestados;

-- EJERCICIO 28 --
WITH libros_no_prestados AS (
    SELECT l.titulo AS libros
	FROM prestamo p
	JOIN libros l
	ON l.libro_id = p.libro_id
	WHERE p.libro_id IS NULL
)
SELECT libros
FROM libros_no_prestados;

-- EJERCICIO 29 --
WITH total_pagado_multa AS (
    SELECT u.nombre_usuario,
	       m.estado,
		   SUM (m.monto) AS total
	FROM prestamo p
	JOIN usuarios u ON p.usuario_id = u.usuario_id
	JOIN multas m ON m.usuario_id = u.usuario_id
	GROUP BY u.nombre_usuario, m.estado
)
SELECT nombre_usuario,
       estado,
	   total
FROM total_pagado_multa
WHERE estado = 'Pendiente';

-- EJERCICIO 30 --
EXPLAIN ANALYZE 
WITH libros_prestados AS (
     SELECT g.nombre AS genero,
	        l.titulo AS libro,
			COUNT (p.libro_id) OVER (PARTITION BY g.nombre) AS total_prestado
	FROM prestamo p
	JOIN libros l ON p.libro_id = l.libro_id
	JOIN generos g ON g.genero_id = l.genero_id
	
)
SELECT genero,
       libro,
	   total_prestado
FROM libros_prestados
ORDER BY total_prestado DESC;

-- EJERCICIO 31 --
WITH libro_prestado AS (
    SELECT l.titulo,
	       COUNT(p.libro_id) AS total_libro
	FROM prestamo p
	JOIN libros l
	ON l.libro_id = p.libro_id
	GROUP BY l.titulo
)
SELECT titulo, 
       total_libro
FROM libro_prestado
WHERE total_libro > 2
ORDER BY total_libro;

-- EJERCICIO 32 --
WITH autores_diferente AS (
    SELECT u.nombre_usuario AS usuarios,
	       COUNT(DISTINCT l.autor_id) AS autor_distinto
	FROM prestamo p
	JOIN usuarios u ON p.usuario_id = u.usuario_id 
	JOIN libros l ON p.libro_id = l.libro_id
	JOIN autores a ON a.autor_id = l.autor_id
	GROUP BY u.nombre_usuario
)
SELECT usuarios,
       autor_distinto
FROM autores_diferente
WHERE autor_distinto >= 3
ORDER BY autor_distinto;

-- EJERCICIO 33 --
WITH libro_mas_prestado AS (
    SELECT l.titulo,
	       COUNT(p.libro_id) AS total_prestado
	FROM prestamo p
	JOIN libros l
	ON p.libro_id = l.libro_id
	GROUP BY l.titulo
)
SELECT titulo,
       total_prestado
FROM libro_mas_prestado
ORDER BY total_prestado DESC
LIMIT 5;

-- EJERCICIO 34 --
EXPLAIN ANALYZE
WITH libro_mes AS (
     SELECT p.fecha_prestamo,
	        p.libro_id,
	        EXTRACT (MONTH FROM p.fecha_prestamo) AS mes,
	        EXTRACT (YEAR FROM p.fecha_prestamo) AS año
     FROM prestamo p     
)
SELECT mes,
       año,
       COUNT(libro_id)OVER (PARTITION BY mes, año ORDER BY fecha_prestamo) AS cantidad_por_mes
FROM libro_mes


-- EJERCICIO 35 --
WITH usuario_multas AS (
    SELECT u.nombre_usuario,
	       COUNT(m.usuario_id)  AS total_multa
	FROM usuarios u 
	JOIN multas m
	ON u.usuario_id = m.usuario_id
    GROUP BY u.nombre_usuario
)
SELECT nombre_usuario,
       total_multa
FROM usuario_multas
WHERE total_multa > 1;

