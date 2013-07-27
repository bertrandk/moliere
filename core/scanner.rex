class Scanner
macro
	# Whitespace
	BLANK			\s+
	
	# Literals
	NUMBER			[0-9]+
	STRING			".*"

	KEYWORD			classe|déf|fin|si|ousi|vrai|faux|nul|pendant|continue|quand|arrêté|retourne|soi|pas|super|pour|dans|puis|et|suivant|prochain

	IDENTIFIER		[a-zA-Z_@][a-zA-Z0-9_']*
	OPEN_PAREN		\(
	CLOSE_PAREN		\)
	COMMA			,
	EQUAL			=

rule
	{BLANK}			# not significant.

	{NUMBER}		{ [:NUMBER, text.to_i] }
	{STRING}		{ [:STRING, text.to_s] }

	{KEYWORD}		{ [text.upcase.to_sym, text] }
	{IDENTIFIER}		{ [:IDENTIFIER, text] }
	{OPEN_PAREN}		{ [:OPEN_PAREN] }
	{CLOSE_PAREN}		{ [:CLOSE_PAREN] }
	{COMMA}			{ [:COMMA] }
	{EQUAL}			{ [:EQUAL] }

end
