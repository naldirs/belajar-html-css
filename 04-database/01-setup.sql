CREATE TABLE
    kategori (
        id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        nama VARCHAR(100) NOT NULL UNIQUE
    ) CHARACTER
SET
    utf8mb4;

CREATE TABLE
    barang (
        id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        nama VARCHAR(150) NOT NULL,
        harga DECIMAL(12, 2) UNSIGNED NOT NULL,
        stok INT UNSIGNED NOT NULL DEFAULT 0,
        kategori_id BIGINT UNSIGNED NOT NULL,
        kode VARCHAR(50) NOT NULL UNIQUE,
        CONSTRAINT fk_barang_kategori FOREIGN KEY (kategori_id) REFERENCES kategori (id) CASCADE ON DELETE CASCADE
    );

INSERT INTO barang (nama, harga, stok, kategori_id, kode)
VALUES ('Contoh Barang', 25000.00, 10, 1, 'BRG-001');