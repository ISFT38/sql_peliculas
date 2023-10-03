
CREATE TABLE directores (
  director_id     SERIAL PRIMARY KEY,
  nombre          VARCHAR(128),
  f_nacimiento    DATE,
  pais            VARCHAR(80)
);

CREATE TABLE peliculas (
  pelicula_id     SERIAL PRIMARY KEY,
  titulo          VARCHAR(256),
  anno            INTEGER,
  idioma          VARCHAR(80),
  color           BOOLEAN,
  restriccion     VARCHAR(20),
  nacionalidad    VARCHAR(80),
  resumen         TEXT,
  observaciones   TEXT,
  director_id     INTEGER REFERENCES directores
);

CREATE TABLE actores (
  actor_id        SERIAL PRIMARY KEY,
  nombre          VARCHAR(128),
  nacionalidad    VARCHAR(80)
);

CREATE TABLE peliculas_actores (
  pelicula_id     INTEGER REFERENCES peliculas,
  actor_id        INTEGER REFERENCES actores,
  personaje       VARCHAR(128)  PRIMARY KEY (pelicula_id, actor_id)
);