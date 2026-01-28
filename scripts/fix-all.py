#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

print('🔧 Corrigindo caracteres...\n')

for html_file in html_dir.glob('*.html'):
    try:
        # Ler ignorando erros
        with open(html_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()

        # Emoji map - substituindo padrões corrompidos
        replacements = [
            ('ðŸŒ™', '\U0001F319'),  # 🌙
            ('ðŸ"Š', '\U0001F4CA'),  # 📊
            ('ðŸ"š', '\U0001F4DA'),  # 📚
            ('ðŸ"‚', '\U0001F4C2'),  # 📂
            ('ðŸ'ª', '\U0001F4AA'),  # 💪
            ('ðŸ'¤', '\U0001F464'),  # 👤
            ('ðŸ"…', '\U0001F4C5'),  # 📅
            ('ðŸŽ¯', '\U0001F3AF'),  # 🎯
            ('ðŸ"¹', '\U0001F539'),  # 🔹
            ('ðŸ"', '\U0001F4DD'),  # 📝
            ('ðŸŽ¬', '\U0001F3AC'),  # 🎬
            ('ðŸ"‹', '\U0001F4CB'),  # 📋
            ('ðŸ"º', '\U0001F53A'),  # 🔺
            ('ðŸ†', '\U0001F3C6'),  # 🏆
            ('ðŸ"¥', '\U0001F525'),  # 🔥
            ('ðŸ"„', '\U0001F504'),  # 🔄
            ('ðŸ"ˆ', '\U0001F4C8'),  # 📈
            ('ðŸ'¼', '\U0001F4BC'),  # 💼
            ('ðŸ¤–', '\U0001F916'),  # 🤖
            ('ðŸŽ‰', '\U0001F389'),  # 🎉
            ('ðŸš€', '\U0001F680'),  # 🚀
            # Acentos
            ('Ã­', 'í'),
            ('Ã©', 'é'),
            ('Ã§', 'ç'),
            ('Ã£', 'ã'),
            ('Ãº', 'ú'),
            ('Ã³', 'ó'),
            ('Ã¡', 'á'),
            ('Ã', 'à'),
            ('Ãª', 'ê'),
            ('Ã´', 'ô'),
            ('Ã¢', 'â'),
        ]

        for old, new in replacements:
            content = content.replace(old, new)

        # Escrever
        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(content)

        print(f'✅ {html_file.name}')
    except Exception as e:
        print(f'❌ {html_file.name}: {e}')

print('\n✨ Concluído!')
