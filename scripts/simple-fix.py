#!/usr/bin/env python3
import sys
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

print('Fixing characters...')

for html_file in html_dir.glob('*.html'):
    with open(html_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()

    # Emojis
    content = content.replace(chr(0xC3B0) + chr(0xC5B8) + chr(0xE28093) + chr(0xC5A0), chr(0x1F4CA))

    # Simple char fixes
    content = content.replace('Ã­', 'í')
    content = content.replace('Ã©', 'é')
    content = content.replace('Ã§', 'ç')
    content = content.replace('Ã£', 'ã')
    content = content.replace('Ãº', 'ú')
    content = content.replace('Ã³', 'ó')
    content = content.replace('Ã¡', 'á')

    with open(html_file, 'w', encoding='utf-8') as f:
        f.write(content)

    print(f'Fixed: {html_file.name}')

print('Done!')
