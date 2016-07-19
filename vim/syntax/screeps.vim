" Vim syntax file for Screeps. http://screeps.com
" Language: Screeps Javascript
" Maintainer: brandonio21
" Latest Revision: 13 August 2015

if exists("b:current_syntax")
	finish
endif

let b:current_syntax = "screep"

" Screeps Keywords
syn keyword screepGlobalKeywords ConstructionSite Creep Energy Flag Game Map
syn keyword screepGlobalKeywords Room RoomPosition Source Spawn Structure
syn keyword screepGlobalKeywords Memory

" Screeps constants
syn keyword screepConstants OK ERR_NOT_OWNER ERR_NO_PATH ERR_NAME_EXISTS
syn keyword screepConstants ERR_BUSY ERR_NOT_FOUND ERR_NOT_ENOUGH_ENERGY
syn keyword screepConstants ERR_INVALID_TARGET ERR_FULL ERR_NOT_IN_RANGE
syn keyword screepConstants ERR_INVALID_ARGS ERR_TIRED ERR_NO_BODYPART
syn keyword screepConstants ERR_NOT_ENOUGH_EXTENSIONS ERR_RCL_NOT_ENOUGH
syn keyword screepConstants ERR_GCL_NOT_ENOUGH

syn keyword screepConstants FIND_EXIT_TOP FIND_EXIT_RIGHT FIND_EXIT_BOTTOM
syn keyword screepConstants FIND_EXIT_LEFT FIND_EXIT FIND_CREEPS FIND_MY_CREEPS
syn keyword screepConstants FIND_HOSTILE_CREEPS FIND_SOURCES_ACTIVE FIND_SOURCES
syn keyword screepConstants FIND_DROPPED_ENERGY FIND_STRUCTURES
syn keyword screepConstants FIND_MY_STRUCTURES FIND_HOSTILE_STRUCTURES 
syn keyword screepConstants FIND_FLAGS FIND_CONSTRUCTION_SITES FIND_MY_SPAWNS
syn keyword screepConstants FIND_HOSTILE_SPAWNS

syn keyword screepConstants TOP TOP_RIGHT RIGHT BOTTOM_RIGHT BOTTOM BOTTOM_LEFT
syn keyword screepConstants LEFT TOP_LEFT

syn keyword screepConstants MOVE WORK CARRY ATTACK RANGED_ATTACK TOUGH HEAL

syn keyword screepConstants STRUCTURE_EXTENSION STRUCTURE_RAMPART
syn keyword screepConstants STRUCTURE_ROAD STRUCTURE_SPAWN STRUCTURE_LINK
syn keyword screepConstants STRUCTURE_WALL STRUCTURE_KEEPER_LAIR
syn keyword screepConstants STRUCTURE_CONTROLLER

syn keyword screepConstants COLOR_RED COLOR_PURPLE COLOR_BLUE COLOR_CYAN
syn keyword screepConstants COLOR_GREEN COLOR_YELLOW COLOR_ORANGE COLOR_BROWN
syn keyword screepConstants COLOR_GREY COLOR_WHITE

syn keyword screepConstants MODE_SIMULATION MODE_WORLD

" Highlight patterns
hi def link screepGlobalKeywords Type
hi def link screepConstants Constant


" Default javascript stuff

syn case ignore


syn keyword javaScriptCommentTodo      TODO FIXME XXX TBD contained
syn match   javaScriptLineComment      "\/\/.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  javaScriptComment	       start="/\*"  end="\*/" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptSpecial	       "\\\d\d\d\|\\."
syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc
syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc

syn match   javaScriptSpecialCharacter "'\\.'"
syn match   javaScriptNumber	       "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn region  javaScriptRegexpString     start=+/[^/*]+me=e-1 skip=+\\\\\|\\/+ end=+/[gi]\{0,2\}\s*$+ end=+/[gi]\{0,2\}\s*[;.,)\]}]+me=e-1 contains=@htmlPreproc oneline

syn keyword javaScriptConditional	if else switch
syn keyword javaScriptRepeat		while for do in
syn keyword javaScriptBranch		break continue
syn keyword javaScriptOperator		new delete instanceof typeof
syn keyword javaScriptType		Array Boolean Date Function Number Object String RegExp
syn keyword javaScriptStatement		return with
syn keyword javaScriptBoolean		true false
syn keyword javaScriptNull		null undefined
syn keyword javaScriptIdentifier	arguments this var
syn keyword javaScriptLabel		case default
syn keyword javaScriptException		try catch finally throw
syn keyword javaScriptMessage		alert confirm prompt status
syn keyword javaScriptGlobal		self window top parent
syn keyword javaScriptMember		document event location 
syn keyword javaScriptDeprecated	escape unescape
syn keyword javaScriptReserved		abstract boolean byte char class const debugger double enum export extends final float goto implements import int interface long native package private protected public short static super synchronized throws transient volatile 

if exists("javaScript_fold")
    syn match	javaScriptFunction      "\<function\>"
    syn region	javaScriptFunctionFold	start="\<function\>.*[^};]$" end="^\z1}.*$" transparent fold keepend

    syn sync match javaScriptSync	grouphere javaScriptFunctionFold "\<function\>"
    syn sync match javaScriptSync	grouphere NONE "^}"

    setlocal foldmethod=syntax
    setlocal foldtext=getline(v:foldstart)
else
    syn keyword	javaScriptFunction      function
    syn match	javaScriptBraces	   "[{}\[\]]"
    syn match	javaScriptParens	   "[()]"
endif

syn sync fromstart
syn sync maxlines=100

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink javaScriptComment		Comment
  HiLink javaScriptLineComment		Comment
  HiLink javaScriptCommentTodo		Todo
  HiLink javaScriptSpecial		Special
  HiLink javaScriptStringS		String
  HiLink javaScriptStringD		String
  HiLink javaScriptCharacter		Character
  HiLink javaScriptSpecialCharacter	javaScriptSpecial
  HiLink javaScriptNumber		javaScriptValue
  HiLink javaScriptConditional		Conditional
  HiLink javaScriptRepeat		Repeat
  HiLink javaScriptBranch		Conditional
  HiLink javaScriptOperator		Operator
  HiLink javaScriptType			Type
  HiLink javaScriptStatement		Statement
  HiLink javaScriptFunction		Function
  HiLink javaScriptBraces		Function
  HiLink javaScriptError		Error
  HiLink javaScrParenError		javaScriptError
  HiLink javaScriptNull			Keyword
  HiLink javaScriptBoolean		Boolean
  HiLink javaScriptRegexpString		String

  HiLink javaScriptIdentifier		Identifier
  HiLink javaScriptLabel		Label
  HiLink javaScriptException		Exception
  HiLink javaScriptMessage		Keyword
  HiLink javaScriptGlobal		Keyword
  HiLink javaScriptMember		Keyword
  HiLink javaScriptDeprecated		Exception 
  HiLink javaScriptReserved		Keyword
  HiLink javaScriptDebug		Debug
  HiLink javaScriptConstant		Label

  delcommand HiLink
endif
