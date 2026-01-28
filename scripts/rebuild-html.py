#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Script para reconstruir arquivos HTML com encoding UTF-8 correto
"""
from pathlib import Path
import re

# Mapeamento completo de correções
FIXES = {
    # Título e bullets
    'â€¢': '•',

    # Palavras completas (fazer primeiro)
    'MÃ³dulo': 'Módulo',
    'GestÃ£o': 'Gestão',
    'PÃ³s-GraduaÃ§Ã£o': 'Pós-Graduação',
    'EstratÃ©gica': 'Estratégica',
    'ProduÃ§Ã£o': 'Produção',
    'EdiÃ§Ã£o': 'Edição',
    'GravaÃ§Ã£o': 'Gravação',
    'ProjeÃ§Ã£o': 'Projeção',
    'VÃ­deos': 'Vídeos',
    'InÃ­cio': 'Início',
    'submÃ³dulo': 'submódulo',
    'SubmÃ³dulo': 'Submódulo',
    'IntroduÃ§Ã£o': 'Introdução',
    'priorizaÃ§Ã£o': 'priorização',
    'ComunicaÃ§Ã£o': 'Comunicação',
    'transiÃ§Ã£o': 'transição',
    'àšltima': 'Última',
    'atualizaÃ§Ã£o': 'atualização',
    'papÃ©is': 'papéis',

    # Caracteres individuais (fazer depois)
    'Ã©': 'é',
    'Ã¡': 'á',
    'Ã­': 'í',
    'Ã³': 'ó',
    'Ãº': 'ú',
    'Ã§': 'ç',
    'Ã£': 'ã',
    'Ãµ': 'õ',
    'Ã': 'à',
    'Ãª': 'ê',
    'Ã´': 'ô',
    'Ã¢': 'â',

    # Emojis (padrões corrompidos para emojis corretos)
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
    'â­': '⭐',
}

def fix_content(content):
    """Aplica todas as correções de encoding"""
    for old, new in FIXES.items():
        content = content.replace(old, new)
    return content

def rebuild_html_files():
    """Reconstrói todos os arquivos HTML"""
    html_dir = Path(__file__).parent.parent / 'assets' / 'html'

    print('🔧 Reconstruindo arquivos HTML com encoding correto...\n')

    files = list(html_dir.glob('*.html'))

    for html_file in files:
        try:
            # Ler conteúdo ignorando erros
            with open(html_file, 'r', encoding='utf-8', errors='ignore') as f:
                content = f.read()

            # Verificar se tem conteúdo
            if not content or len(content) < 100:
                print(f'⚠️  {html_file.name} - arquivo vazio ou muito pequeno, pulando')
                continue

            # Aplicar correções
            fixed_content = fix_content(content)

            # Salvar se houver mudanças
            if fixed_content != content:
                # Criar backup
                backup_file = html_file.with_suffix('.html.backup')
                with open(backup_file, 'w', encoding='utf-8') as f:
                    f.write(content)

                # Salvar versão corrigida
                with open(html_file, 'w', encoding='utf-8') as f:
                    f.write(fixed_content)

                print(f'✅ {html_file.name} (backup: {backup_file.name})')
            else:
                print(f'⏭️  {html_file.name} (sem mudanças)')

        except Exception as e:
            print(f'❌ {html_file.name}: {e}')

    print(f'\n✨ Reconstrução concluída! ({len(files)} arquivos processados)')

if __name__ == '__main__':
    rebuild_html_files()
