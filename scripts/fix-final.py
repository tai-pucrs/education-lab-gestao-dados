#!/usr/bin/env python3
import glob
from pathlib import Path

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

# Mapeamento de emojis corrompidos para corretos
emoji_map = {
    'ðŸŒ™': '🌙',
    'ðŸ"Š': '📊',
    'ðŸ"š': '📚',
    'ðŸ"‚': '📂',
    'ðŸ'ª': '💪',
    'ðŸ'¤': '👤',
    'ðŸ"…': '📅',
    'ðŸŽ¯': '🎯',
    'ðŸ"¹': '🔹',
    'ðŸ"': '📝',
    'ðŸŽ¬': '🎬',
    'ðŸ"‹': '📋',
    'ðŸ"º': '🔺',
    'ðŸ†': '🏆',
    'ðŸ"¥': '🔥',
    'ðŸ"„': '🔄',
    'ðŸ"ˆ': '📈',
    'ðŸ'¼': '💼',
    'ðŸ¤–': '🤖',
    'ðŸŽ‰': '🎉',
    'ðŸš€': '🚀',
    'ðŸ"–': '📖',
    'ðŸ› ï¸': '🛠️',
}

# Outras correções
other_fixes = {
    'àšltima': 'Última',
}

print('🔧 Corrigindo caracteres nos arquivos HTML...\n')

for html_file in html_dir.glob('*.html'):
    with open(html_file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()

    original = content

    # Aplicar correções de emoji
    for old, new in emoji_map.items():
        content = content.replace(old, new)

    # Aplicar outras correções
    for old, new in other_fixes.items():
        content = content.replace(old, new)

    if content != original:
        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f'✅ {html_file.name}')
    else:
        print(f'⏭️  {html_file.name} (sem mudanças)')

print('\n✨ Correção concluída!')
