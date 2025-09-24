# Ma'lumotlar bazasi loyihasi

Ushbu loyihada **mahsulotlar**, **kategoriyalar** va **yetkazib beruvchilar** bilan ishlash uchun SQL jadvallar yaratilgan.

## Jadval tuzilmalari

### `kategoriyalar`
- `id` – Birlamchi kalit (INTEGER, AUTOINCREMENT)  
- `nomi` – Kategoriya nomi (TEXT, NOT NULL)  
- `tavsif` – Qo‘shimcha izoh (TEXT)  

### `yetkazib_beruvchilar`
- `id` – Birlamchi kalit (INTEGER, AUTOINCREMENT)  
- `kompaniya_nomi` – Kompaniya nomi (TEXT, NOT NULL)  
- `telefon` – Telefon raqami (TEXT, uzunligi 16 belgidan oshmasligi kerak)  
- `manzil` – Manzil (TEXT)  

### `mahsulotlar`
- `id` – Birlamchi kalit (INTEGER, AUTOINCREMENT)  
- `nomi` – Mahsulot nomi (TEXT, NOT NULL)  
- `kategoriya_id` – Tashqi kalit (`kategoriyalar.id`)  
- `yetkazuvchi_id` – Tashqi kalit (`yetkazib_beruvchilar.id`)  
- `narxi` – Mahsulot narxi (INTEGER)  

## Dastlabki ma'lumotlar

- **Kategoriyalar**: Meva, Sabzavot, Go‘sht, Sut, Un  
- **Yetkazib beruvchilar**: Toshkent Meva, Farg‘ona Sabzavot, Andijon Go‘sht, Samarqand Sut, Qashqadaryo Un  
- **Mahsulotlar**: Olma, Sabzi, Mol go‘shti, Sut, Bug‘doy uni  

## Foydalanish
1. Jadval tuzish uchun `CREATE TABLE` buyruqlaridan foydalaning.  
2. Dastlabki ma’lumotlarni kiritish uchun `INSERT INTO` buyruqlaridan foydalaning.  
3. Loyihani SQL konsolida yoki SQLite bilan ishlaydigan dasturlarda sinab ko‘rish mumkin.  
