#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

print('🔧 Corrigindo encoding UTF-8...\n')

for html_file in html_dir.glob('*.html'):
    # Ler como binário
    with open(html_file, 'rb') as f:
        data = f.read()

    # Tentar decodificar como Windows-1252 e recodificar como UTF-8
    try:
        text = data.decode('windows-1252')

        # Aplicar correções
        text = text.replace('Ã­', 'í')
        text = text.replace('Ã©', 'é')
        text = text.replace('Ã§', 'ç')
        text = text.replace('Ã£', 'ã')
        text = text.replace('Ãº', 'ú')
        text = text.replace('Ã³', 'ó')
        text = text.replace('Ã¡', 'á')
        text = text.replace('Ã', 'à')
        text = text.replace('Ãª', 'ê')
        text = text.replace('Ã´', 'ô')
        text = text.replace('Ã¢', 'â')

        # Escrever de volta como UTF-8
        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(text)

        print(f'✅ {html_file.name}')
    except Exception as e:
        print(f'❌ {html_file.name}: {e}')

print('\n✨ Concluído!')
