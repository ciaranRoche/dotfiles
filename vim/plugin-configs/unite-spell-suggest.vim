"===============================================================================
" Plugin source
"===============================================================================
"'kopischke/unite-spell-suggest'

"===============================================================================
" Plugin Configurations
"===============================================================================
" N/A

"===============================================================================
" Plugin Keymappings
"===============================================================================
map z= :Unite spell_suggest<CR><ESC>

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Suggest correctly spelled word                                z=', 'normal z=']]
let g:unite_source_menu_menus.CustomKeyMaps.command_candidates += [['➤ Jumps to next bad spell word                                  ]s', 'normal ]s']]
