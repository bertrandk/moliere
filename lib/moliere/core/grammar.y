class Parser

token CLASSE
token DéF
token FIN
token SI
token OUSI
token VRAI
token FAUX
token NUL
token PENDANT
token CONTINUE
token QUAND
token ARRÊTÉ
token RETOURNE
token SOI
token PAS
token SUPER
token POUR
token DANS
token PUIS
token ET
token SUIVANT
token PROCHAIN
token NUMBER
token STRING
token CONSTANT
token IDENTIFIER
token OPEN_PAREN
token CLOSE_PAREN
token COMMA
token EQUAL

prechigh
	left '.'
	right '!'
	left '*' '/'
	left '+' '-'
	left '>' '>=' '<' '<='
	left '==' '!='
	left '&&'
	left '||'
	right '='
	left ','
preclow

end

---- header
  require "moliere/core/scanner"
  require "moliere/core/nodes"