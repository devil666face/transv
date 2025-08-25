# 🎬 Скачать и перевести любое видео с YouTube на русский

Удобный инструмент для скачивания и автоматического перевода видео с YouTube на русский язык.

---

## 🚀 Быстрый старт

1. Клонируйте репозиторий:
   ```bash
   git clone https://github.com/devil666face/transv
   ```
2. Скопируйте файл переменных окружения:
   ```bash
   cp .env.example .env
   ```
3. Укажите прокси в файле `.env`:
   ```ini
   # Пример настройки прокси
   PROXY=socks5h://**********:**********@**.***.***.***:1080
   ```
4. Установите расширение [cookie-editor](https://cookie-editor.com/) для вашего браузера.
5. Откройте YouTube, экспортируйте cookies через cookie-editor в формате `Netscape`.
6. Сохраните cookies в файл `./db/cookies.txt`.
7. Скачайте и переведите видео командой:

   ```bash
   docker compose run --rm transv 'https://www.youtube.com/watch?v=6uB65PdasQI'
   ```
