CREATE TABLE IF NOT EXISTS kategoriyalar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nomi TEXT NOT NULL,
	tavsif TEXT
);

CREATE TABLE IF NOT EXISTS yetkazib_beruvchilar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	kompaniya_nomi TEXT NOT NULL,
	telefon TEXT CHECK(length(telefon) <= 16),
	manzil TEXT
);

CREATE TABLE IF NOT EXISTS mahsulotlar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nomi TEXT NOT NULL,
	kategoriya_id INTEGER REFERENCES kategoriyalar(id) ON DELETE CASCADE,
	yetkazuvchi_id INTEGER REFERENCES yetkazib_beruvchilar(id) ON DELETE CASCADE,
	narxi INTEGER
);

INSERT INTO kategoriyalar (nomi, tavsif) VALUES
('Meva', 'Yangi mevalar'),
('Sabzavot', 'Toza sabzavot'),
('Gosht', 'Halol gosht mahsulotlari'),
('Sut', 'Sut mahsulotlari'),
('Un', 'Donli mahsulotlar');

INSERT INTO yetkazib_beruvchilar (kompaniya_nomi, telefon, manzil) VALUES
('Toshkent Meva', '+998901234567', 'Toshkent'),
('Fargona Sabzavot', '+998951234567', 'Fargona'),
('Andijon Gosht', '+998881234567', 'Andijon'),
('Samarqand Sut', '+998971234567', 'Samarqand'),
('Qashqadaryo Un', '+9989751234567', 'Qarshi');

INSERT INTO mahsulotlar (nomi, kategoriya_id, yetkazuvchi_id, narxi) VALUES
('Olma', 1, 1, 5000),
('Sabzi', 2, 2, 3000),
('Mol goshti', 3, 3, 45000),
('Sut', 4, 4, 7000),
('Bugdoy uni', 5, 5, 4500);
