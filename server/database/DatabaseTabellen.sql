
DROP DATABASE IF EXISTS skeledok-db;
CREATE DATABASE skeledok-db;

USE skeledok-db;

CREATE TABLE Positie
(
    PositieID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    X DECIMAL(10, 3) NOT NULL,
    Y DECIMAL(10, 3) NOT NULL,
    Z DECIMAL(10, 3) NOT NULL
);

CREATE TABLE Afmeting
(
    AfmetingID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Width   DECIMAL(10, 3) NOT NULL,
    Height  DECIMAL(10, 3) NOT NULL,
    Depth   DECIMAL(10, 3) NOT NULL,
    --DimensionUnit VARCHAR(10) NOT NULL DEFAULT 'm'  -- 'mm', 'cm', 'm', 'in'
);

CREATE TABLE Gebouw
(
    GebouwID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    GebouwNaam VARCHAR(255) NOT NULL,
    PositieID INT UNSIGNED NOT NULL,
    AfmetingID INT UNSIGNED NOT NULL,
    Model_Path VARCHAR(255) NUll,
    Texture_Path VARCHAR(255) NULL,
    --Vertices
    --Omschrijving VARCHAR(255), --TEXT
    INDEX idx_gebouwnaam (GebouwNaam),
    CONSTRAINT fk_gebouw_positie FOREIGN KEY (PositieID) REFERENCES Positie(PositieID),
    CONSTRAINT fk_gebouw_afmeting FOREIGN KEY (AfmetingID) REFERENCES Afmeting(AfmetingID)
);

CREATE TABLE Weg
(
    WegID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    WegNaam VARCHAR(255) NOT NULL,
    PositieID INT UNSIGNED NOT NULL,
    AfmetingID INT UNSIGNED NOT NULL,
    Texture_Path VARCHAR(255) NULL,
    WegType ENUM('hoofdweg','zijweg','fietspad','voetpad') NOT NULL,
    --Omschrijving VARCHAR(255), --TEXT

    INDEX idx_wegnaam (WegNaam),
    CONSTRAINT fk_weg_positie  FOREIGN KEY (PositieID)  REFERENCES Positie(PositieID),
    CONSTRAINT fk_weg_afmeting FOREIGN KEY (AfmetingID) REFERENCES Afmeting(AfmetingID)
);

CREATE TABLE Planten
(
    PlantID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PlantNaam VARCHAR(255) NOT NULL,
    PositieID INT UNSIGNED NOT NULL,
    AfmetingID INT UNSIGNED NOT NULL,
    Model_Path VARCHAR(255) NUll,-- Misschien moet dit NOT NULL zijn. we gaan niet zelf een plant tekenen.
    Texture_Path VARCHAR(255) NULL,
    --Omschrijving VARCHAR(255), --TEXT

    INDEX idx_plantnaam (PlantNaam),
    CONSTRAINT fk_plant_positie  FOREIGN KEY (PositieID)  REFERENCES Positie(PositieID),
    CONSTRAINT fk_plant_afmeting FOREIGN KEY (AfmetingID) REFERENCES Afmeting(AfmetingID)
);

CREATE TABLE AndereModellen -- kan straatlampen zijn of meer net als straatbanken, outdoor fitnessapparaten, kinderpark.
(
    ModelID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ModelNaam VARCHAR(255) NOT NULL,
    PositieID INT UNSIGNED NOT NULL,
    AfmetingID INT UNSIGNED NOT NULL,
    Model_Path VARCHAR(255) NUll,
    Texture_Path VARCHAR(255) NULL,
    --Omschrijving VARCHAR(255), --TEXT
    INDEX idx_modelnaam (ModelNaam),
    CONSTRAINT fk_model_positie FOREIGN KEY (PositieID) REFERENCES Positie(PositieID),
    CONSTRAINT fk_model_afmeting FOREIGN KEY (AfmetingID) REFERENCES Afmeting(AfmetingID)
);


-- ALTER TABLE tabelnaam
--     ADD FOREIGN KEY (tabelnaam_wat) REFERENCES voor_welke_tabel(wat);


