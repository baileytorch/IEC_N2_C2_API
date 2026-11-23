CREATE TABLE users(
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(20) NOT NULL,
    email  VARCHAR(255) NOT NULL,
    address INTEGER NOT NULL,
    phone  VARCHAR(15) NOT NULL,
    website  VARCHAR(255) NOT NULL,
    company INTEGER NOT NULL,

    CONSTRAINT pk_users PRIMARY KEY (id)
) COMMENT = 'Table de usuarios de JSONPLACEHOLDER';

CREATE TABLE posts(
    id INTEGER AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    body TEXT NOT NULL,
    userId  INTEGER NOT NULL,

    CONSTRAINT pk_posts PRIMARY KEY (id),
    CONSTRAINT fk_posts_users FOREIGN KEY (userId) REFERENCES users (id)
) COMMENT = 'Tabla de publicaciones de JSONPLACEHOLDER';