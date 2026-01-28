#!/usr/bin/env python3
import glob
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

# Lista de substituições (corrompido -> correto)
fixes = [
    (b'\xc3\xad', b'\xc3\xad'),  # í
    (b'\xc3\xa9', b'\xc3\xa9'),  # é
    (b'\xc3\xa7', b'\xc3\xa7'),  # ç
    (b'\xc3\xa3', b'\xc3\xa3'),  # ã
    (b'\xc3\xba', b'\xc3\xba'),  # ú
    (b'\xc3\xb3', b'\xc3\xb3'),  # ó
    (b'\xc3\xa1', b'\xc3\xa1'),  # á
]

print('Corrigindo arquivos HTML...\n')

for html_file in html_dir.glob('*.html'):
    # Ler como binário para preservar encoding
    with open(html_file, 'rb') as f:
        content = f.read()

    # Substituir padrões corrompidos
    content = content.replace(b'\xc3\x83\xc2\xad', b'\xc3\xad')  # Ã­ -> í
    content = content.replace(b'\xc3\x83\xc2\xa9', b'\xc3\xa9')  # Ã© -> é
    content = content.replace(b'\xc3\x83\xc2\xa7', b'\xc3\xa7')  # Ã§ -> ç
    content = content.replace(b'\xc3\x83\xc2\xa3', b'\xc3\xa3')  # Ã£ -> ã
    content = content.replace(b'\xc3\x83\xc2\xba', b'\xc3\xba')  # Ãº -> ú
    content = content.replace(b'\xc3\x83\xc2\xb3', b'\xc3\xb3')  # Ã³ -> ó
    content = content.replace(b'\xc3\x83\xc2\xa1', b'\xc3\xa1')  # Ã¡ -> á

    # Emojis corrompidos
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xc5\xa0', b'\xf0\x9f\x93\x8a')  # 📊
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xc5\xa1', b'\xf0\x9f\x93\x9a')  # 📚
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xe2\x80\x9a', b'\xf0\x9f\x93\x82')  # 📂
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x98\xc2\xaa', b'\xf0\x9f\x92\xaa')  # 💪
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x98\xc2\xa4', b'\xf0\x9f\x91\xa4')  # 👤
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xe2\x80\xa6', b'\xf0\x9f\x93\x85')  # 📅
    content = content.replace(b'\xc3\xb0\xc5\xb8\xc5\xa0\xc2\xaf', b'\xf0\x9f\x8e\xaf')  # 🎯
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xc2\xb9', b'\xf0\x9f\x94\xb9')  # 🔹
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c', b'\xf0\x9f\x93\x9d')  # 📝
    content = content.replace(b'\xc3\xb0\xc5\xb8\xc5\xa0\xc2\xac', b'\xf0\x9f\x8e\xac')  # 🎬
    content = content.replace(b'\xc3\xb0\xc5\xb8\xe2\x80\x9c\xe2\x80\x�', b'\xf0\x9f\x93\x8b')  # 📋

    # Escrever de volta
    with open(html_file, 'wb') as f:
        f.write(content)

    print(f'✓ {html_file.name}')

print('\n✅ Concluído!')
