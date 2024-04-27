#!/data/data/com.termux/files/usr/bin/bash

# Fungsi untuk menampilkan pesan kesalahan dan keluar
display_error() {
    echo "Error: $1"
    exit 1
}

# Cek apakah Termux telah terinstal
if ! command -v termux-setup-storage &> /dev/null; then
    display_error "Termux tidak ditemukan. Harap instal Termux terlebih dahulu."
fi

# Menginstal dependensi yang diperlukan
echo "Memulai instalasi dependensi..."
pkg install -y python git || display_error "Gagal menginstal dependensi."

# Clone repositori bot Telegram
echo "Mengunduh bot Telegram..."
git clone https://github.com/kdsmedia/alto.git || display_error "Gagal mengunduh bot Telegram."
cd NAMA_REPO || display_error "Folder bot Telegram tidak ditemukan."

# Instal dependensi Python
echo "Memulai instalasi dependensi Python..."
pip install -r requirements.txt || display_error "Gagal menginstal dependensi Python."

# Menjalankan bot Telegram
echo "Menjalankan bot Telegram..."
python bot_telegram.py || display_error "Gagal menjalankan bot Telegram."

echo "Instalasi selesai."
