CREATE TYPE weg_type_enum AS ENUM ('hoofdweg', 'zijweg', 'fietspad', 'voetpad');

CREATE TABLE positie
(
    positie_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    x DECIMAL(10, 3) NOT NULL,
    y DECIMAL(10, 3) NOT NULL,
    z DECIMAL(10, 3) NOT NULL
);

CREATE TABLE afmeting
(
    afmeting_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    width DECIMAL(10, 3) NOT NULL,
    height DECIMAL(10, 3) NOT NULL,
    depth DECIMAL(10, 3) NOT NULL
);

CREATE TABLE gebouw
(
    gebouw_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    gebouw_naam VARCHAR(255) NOT NULL,
    positie_id INT NOT NULL,
    afmeting_id INT NOT NULL,
    model_path VARCHAR(255) NUll,
    texture_path VARCHAR(255) NULL,
    --Vertices
    CONSTRAINT fk_gebouw_positie FOREIGN KEY (positie_id) REFERENCES positie(positie_id),
    CONSTRAINT fk_gebouw_afmeting FOREIGN KEY (afmeting_id) REFERENCES afmeting(afmeting_id)
);
CREATE INDEX idx_gebouw_naam ON gebouw (gebouw_naam);

CREATE TABLE weg
(
    weg_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    weg_naam VARCHAR(255) NOT NULL,
    positie_id INT NOT NULL,
    afmeting_id INT NOT NULL,
    texture_path VARCHAR(255) NULL,
    weg_type weg_type_enum NOT NULL,

    CONSTRAINT fk_weg_positie  FOREIGN KEY (positie_id)  REFERENCES positie(positie_id),
    CONSTRAINT fk_weg_afmeting FOREIGN KEY (afmeting_id) REFERENCES afmeting(afmeting_id)
);
CREATE INDEX idx_weg_naam ON weg (weg_naam);

CREATE TABLE planten
(
    plant_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    plant_naam VARCHAR(255) NOT NULL,
    positie_id INT NOT NULL,
    afmeting_id INT NOT NULL,
    model_path VARCHAR(255) NOT NUll,
    texture_path VARCHAR(255) NULL,

    CONSTRAINT fk_plant_positie  FOREIGN KEY (positie_id)  REFERENCES positie(positie_id),
    CONSTRAINT fk_plant_afmeting FOREIGN KEY (afmeting_id) REFERENCES afmeting(afmeting_id)
);
CREATE INDEX idx_plant_naam ON planten (plant_naam);

CREATE TABLE andere_modellen -- kan straatlampen zijn of meer net als straatbanken, outdoor fitnessapparaten, kinderpark.
(
    model_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    model_naam VARCHAR(255) NOT NULL,
    positie_id INT NOT NULL,
    afmeting_id INT NOT NULL,
    model_path VARCHAR(255) NUll,
    texture_path VARCHAR(255) NULL,

    CONSTRAINT fk_model_positie FOREIGN KEY (positie_id) REFERENCES positie(positie_id),
    CONSTRAINT fk_model_afmeting FOREIGN KEY (afmeting_id) REFERENCES afmeting(afmeting_id)
);
CREATE INDEX idx_model_naam ON andere_modellen (model_naam);