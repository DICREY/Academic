CREATE DATABASE IF NOT EXISTS academic_manager;

CREATE TABLE cohortes (
    id_coh INT AUTO_INCREMENT PRIMARY KEY UNIQUE NOT NULL,
    name_coh VARCHAR(100) UNIQUE NOT NULL,INDEX(name_coh)
);

CREATE TABLE tecnicos (
    id_tec INT AUTO_INCREMENT PRIMARY KEY UNIQUE NOT NULL,
    name_tec VARCHAR(255) NOT NULL,INDEX(name_tec),
    description_tec TEXT DEFAULT "",
    cohorte_tec INT NOT NULL,INDEX(cohorte_tec),
    FOREIGN KEY (cohorte_tec) REFERENCES cohortes(id_coh) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE unidades (
    id_uni INT AUTO_INCREMENT PRIMARY KEY UNIQUE NOT NULL,
    name_uni VARCHAR(255) NOT NULL,INDEX(name_uni),
    description_uni TEXT DEFAULT "",
    tecnico_uni INT NOT NULL,INDEX(tecnico_uni),
    it_uni INT NOT NULL
    FOREIGN KEY(tecnico_uni) REFERENCES tecnicos(id_tec) ON UPDATE CASCADE ON DELETE CASCADE
);
