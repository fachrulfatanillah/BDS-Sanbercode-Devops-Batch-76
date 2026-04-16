#!/bin/bash

# 1. Menampilkan teks
echo "Memulai backup log..."

# 2. Membuat folder baru bernama backup-log
mkdir -p backup-log

# 3. Menyalin file syslog.txt ke dalam folder backup-log
if [ -f "syslog.txt" ]; then
    cp syslog.txt backup-log/
    echo "Backup selesai! File telah disalin ke folder backup-log."
else
    echo "Error: File syslog.txt tidak ditemukan. Silakan buat filenya dulu."
fi