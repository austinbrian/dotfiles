" Exempt from spell check the things that are not prose.
"
" This is the half that actually fixes spell check being unusable in a daylog.
" Adding every offender to the dictionary does not scale — KOR-2286 and KOR-2287
" are different "words" — so match the shapes instead and mark them @NoSpell.
"
" Two kinds of rule below, and the distinction matters:
"
"   transparent  for shapes that are ordinary prose text (ticket refs, acronyms,
"                snake_case). The match inherits whatever colour encloses it, so
"                nothing changes visually.
"
"   hi link      for spans vim-markdown already colours (code, URLs). These must
"                NOT be transparent: `contains=@NoSpell` replaces the contains
"                list, so nothing can match inside and the original group never
"                gets a chance to apply. Declaring the colour explicitly is what
"                keeps inline code salmon instead of falling back to body text.
"
" Run from after/syntax/ so vim-markdown has already defined its groups.
" Verify with :echo synIDattr(synID(line('.'),col('.'),1),'name')

" --- prose shapes: exempt, but leave the colour alone -----------------------

" Ticket references: KOR-2286, REP-12, ADR-016. The bare prefix is the problem —
" vim splits on the hyphen and then flags KOR, ADR, REP as misspellings.
syntax match mdNoSpellTicket /\<\u\{2,}-\d\+\>/ contains=@NoSpell containedin=ALL transparent

" Acronyms and screaming-snake constants: BDX, ULR, SKIP_FIELD_VALIDATION.
syntax match mdNoSpellAcronym /\<\u\{2,}\>/ contains=@NoSpell containedin=ALL transparent
syntax match mdNoSpellConst /\<\u\+\%(_\u\+\)\+\>/ contains=@NoSpell containedin=ALL transparent

" Identifiers and anything carrying a digit or internal punctuation.
syntax match mdNoSpellSnake /\<\w\+\%(_\w\+\)\+\>/ contains=@NoSpell containedin=ALL transparent
syntax match mdNoSpellDotted /\<\w\+\%(\.\w\+\)\+\>/ contains=@NoSpell containedin=ALL transparent
syntax match mdNoSpellHasDigit /\<\w*\d\w*\>/ contains=@NoSpell containedin=ALL transparent
syntax match mdNoSpellHex /#\x\{3,8}\>/ contains=@NoSpell containedin=ALL transparent

" --- coloured spans: exempt, and restate the colour -------------------------

syntax match mdNoSpellCode /`[^`]\+`/ contains=@NoSpell containedin=ALL
highlight default link mdNoSpellCode mkdCode

syntax match mdNoSpellUrl /\<\w\+:\/\/\S\+/ contains=@NoSpell containedin=ALL
highlight default link mdNoSpellUrl mkdURL

syntax match mdNoSpellPath /\%(\~\|\.\{1,2}\)\/\S\+/ contains=@NoSpell containedin=ALL
highlight default link mdNoSpellPath mkdURL
