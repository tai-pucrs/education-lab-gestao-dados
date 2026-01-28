#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import glob
from pathlib import Path

REPLACEMENTS = {
    # Pontuação e símbolos
    'â€¢': '•',
    'â€"': '—',
    'â€"': '–',
    'â€œ': '"',
    'â€': '"',
    'â­': '⭐',

    # Acentos e cedilha
    'Ã©': 'é',
    'Ã¡': 'á',
    'Ã­': 'í',
    'Ã³': 'ó',
    'Ãº': 'ú',
    'Ã¢': 'â',
    'Ãª': 'ê',
    'Ã´': 'ô',
    'Ã§': 'ç',
    'Ã£': 'ã',
    'Ãµ': 'õ',
    'Ã': 'à',
    'Ã': 'Á',
    'Ã‰': 'É',

    # Palavras compostas (devem vir antes dos acentos isolados)
    'MÃ³dulo': 'Módulo',
    'GestÃ£o': 'Gestão',
    'PÃ³s-GraduaÃ§Ã£o': 'Pós-Graduação',
    'EstratÃ©gica': 'Estratégica',
    'submÃ³dulo': 'submódulo',
    'ProduÃ§Ã£o': 'Produção',
    'SubmÃ³dulo': 'Submódulo',
    'EdiÃ§Ã£o': 'Edição',
    'GravaÃ§Ã£o': 'Gravação',
    'ProjeÃ§Ã£o': 'Projeção',
    'VÃ­deos': 'Vídeos',
    'InÃ­cio': 'Início',
}

# Emojis separadamente com decode/encode
EMOJI_REPLACEMENTS = [
    ('ðŸ"Š', '📊'),
    ('ðŸ"š', '📚'),
    ('ðŸ"‚', '📂'),
    ('ðŸ'ª', '💪'),
    ('ðŸ'¤', '👤'),
    ('ðŸ"…', '📅'),
    ('ðŸŽ¯', '🎯'),
    ('ðŸ"¹', '🔹'),
    ('ðŸ"', '📝'),
    ('ðŸŽ¬', '🎬'),
    ('ðŸ"‹', '📋'),
    ('âœ‚ï¸', '✂️'),
]

html_dir = Path(__file__).parent.parent / 'assets' / 'html'

print('🔧 Corrigindo encoding nos arquivos HTML...\n')

for html_file in html_dir.glob('*.html'):
    with open(html_file, 'r', encoding='utf-8') as f:
        content = f.read()

    original = content

    # Aplicar substituições de texto
    for old, new in REPLACEMENTS.items():
        content = content.replace(old, new)

    # Aplicar substituições de emoji
    for old, new in EMOJI_REPLACEMENTS:
        content = content.replace(old, new)

    if content != original:
        with open(html_file, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f'✅ {html_file.name}')
    else:
        print(f'⏭️  {html_file.name} (sem mudanças)')

print('\n✨ Concluído!')
