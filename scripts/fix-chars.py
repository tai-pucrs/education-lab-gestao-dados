#!/usr/bin/env python3
# -*- coding: utf-8 -*-
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

# Emojis como strings literais em formato unicode escape
emoji_map = {
    r'ðŸŒ™': '🌙',
    r'ðŸ"Š': '📊',
    r'ðŸ"š': '📚',
    r'ðŸ"‚': '📂',
    r'ðŸ'ª': '💪',
    r'ðŸ'¤': '👤',
    r'ðŸ"…': '📅',
    r'ðŸŽ¯': '🎯',
    r'ðŸ"¹': '🔹',
    r'ðŸ"': '📝',
    r'ðŸŽ¬': '🎬',
    r'ðŸ"‹': '📋',
    r'ðŸ"º': '🔺',
    r'ðŸ†': '🏆',
    r'ðŸ"¥': '🔥',
    r'ðŸ"„': '🔄',
    r'ðŸ"ˆ': '📈',
    r'ðŸ'¼': '💼',
    r'ðŸ¤–': '🤖',
    r'ðŸŽ‰': '🎉',
    r'ðŸš€': '🚀',
}

# Caracteres acentuados
accent_map = {
    'Ã­': 'í',
    'Ã©': 'é',
    'Ã§': 'ç',
    'Ã£': 'ã',
    'Ãº': 'ú',
    'Ã³': 'ó',
    'Ã¡': 'á',
    'Ã': 'à',
    'Ãª': 'ê',
    'Ã´': 'ô',
    'Ã¢': 'â',
}

print('🔧 Corrigindo encoding...\n')

for html_file in html_dir.glob('*.html'):
    try:
        # Ler com error handling
        with open(html_file, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()

        # Aplicar correções de emoji
        for old, new in emoji_map.items():
            content = content.replace(old, new)

        # Aplicar correções de acentos
        for old, new in accent_map.items():
            content = content.replace(old, new)

        # Escrever de volta
        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(content)

        print(f'✅ {html_file.name}')
    except Exception as e:
        print(f'❌ {html_file.name}: {e}')

print('\n✨ Concluído!')
