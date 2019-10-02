" Match TODO comments
syntax keyword frilTodos TODO XXX FIXME NOTE

" Match language specific keywords
syntax keyword frilKeywords
	\ ?
	\ !
	\ abort
	\ addcl
	\ and
	\ atomic
	\ cd
	\ cdict
	\ charof
	\ cl
	\ close
	\ complement
	\ con
	\ conj
	\ convert
	\ cos
	\ cprintf
	\ cputime
	\ create
	\ create_a
	\ create_r
	\ create_ra
	\ cscanf
	\ date
	\ ddict
	\ def
	\ def_dtype
	\ def_itype
	\ def_rel
	\ delcl
	\ dempdict
	\ dempster
	\ dict
	\ disj
	\ division
	\ dtype
	\ dtype_name
	\ dtype_to_freq
	\ dtype_to_list
	\ dynamic
	\ edict
	\ eq
	\ errm
	\ error
	\ err_han
	\ evlog
	\ exists
	\ exit
	\ exp
	\ expected_value
	\ export
	\ fail
	\ fdict
	\ file
	\ filebcopy
	\ filename
	\ filepos
	\ filesearch
	\ findall
	\ flush
	\ fmem
	\ forall
	\ fset
	\ fsetdict
	\ fset_name
	\ gen
	\ general
	\ gensym
	\ get
	\ getb
	\ getenv
	\ get_prior
	\ get_univ
	\ help
	\ help_example
	\ idict
	\ if
	\ import
	\ init_random
	\ int
	\ intersection
	\ intok
	\ isall
	\ itype
	\ itype_name
	\ itype_to_freq
	\ itype_to_list
	\ kb_garbage
	\ kill
	\ less
	\ less_eq
	\ list
	\ listfile
	\ lload
	\ load
	\ lreload
	\ match
	\ maximise_frame
	\ mdict
	\ module
	\ module_initialisation
	\ name
	\ neg
	\ negg
	\ nospy
	\ not
	\ num
	\ oh
	\ open
	\ or
	\ orr
	\ os
	\ osc
	\ ose
	\ osv
	\ p
	\ peek
	\ peekb
	\ point_match
	\ poss_match
	\ power
	\ pp
	\ ppq
	\ pq
	\ prlen
	\ pspaces
	\ putb
	\ qh
	\ qs
	\ qsc
	\ qse
	\ qsv
	\ r
	\ random
	\ rdict
	\ read
	\ read_suppterm
	\ reload
	\ remainder
	\ repeat
	\ sc
	\ se
	\ set
	\ setenv
	\ set_difference
	\ sh
	\ sin
	\ snips
	\ spy
	\ spying
	\ square
	\ statistics
	\ stricteq
	\ stringof
	\ str_to_list
	\ sum
	\ supp_collect
	\ supp_expect
	\ supp_query
	\ supp_value
	\ sv
	\ sys
	\ system_garbage
	\ tan
	\ tempfile
	\ times
	\ tq
	\ true
	\ truncate
	\ union
	\ univ
	\ univdict
	\ univ_name
	\ var
	\ visible
	\ w
	\ wh
	\ wq
	\ write
	\ writeq
	\ ws
	\ wse
	\ wsc
	\ wspaces
	\ wsv

" Match numbers
syntax match frilNumber "\v<\d+>"
syntax match frilNumber "\v<\d+\.\d+>"

" Match strings
syntax region frilString start=/"/ skip=/\\"/ end=/"/ oneline

" Match comments
syntax region frilComment start=/%/ end=/\n/ oneline
syntax region frilComment start="\/\*" end="\*\/"

" Match constants
syntax match frilConstants "\v<[A-Z][a-z][a-zA-Z0-9_]*>"

" Match variables
syntax match frilVariables "\v<[A-Z]>"
syntax match frilVariables "\v<[A-Z][A-Z0-9][a-zA-Z0-9_]*>"

" Match delimiters
syntax match frilDelimiters "\v[()]"

" Set highlights
highlight default link frilTodos Todo
" highlight default link frilShebang Comment
highlight default link frilComment Comment
" highlight default link frilMarker Comment

highlight default link frilString String
highlight default link frilNumber Number
highlight default link frilKeywords Keyword
highlight default link frilConstants Constant
highlight default link frilVariables Identifier
highlight default link frilDelimiters Delimiter
