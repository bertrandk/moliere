class Scanner
macro
	# Whitespace
	BLANK			\s+
	
	# Literals
	NUMBER			[0-9]+
	STRING			".*"

	KEYWORD			classe|déf|fin|si|ousi|vrai|faux|nul|pendant|continue|quand|arrêté|retourne|soi|pas|super|pour|dans|puis|et|suivant|prochain

	CONSTANT		[A-Z][a-zA-Z0-9_']*
	IDENTIFIER		[a-z_@][a-zA-Z0-9_']*
	OPEN_PAREN		\(
	CLOSE_PAREN		\)
	COMMA			,
	EQUAL			=
	OPERATOR		\|\||&&|==|!=|<=|>=
	TOKEN			.

rule
	{BLANK}			# not significant.

	{NUMBER}		{ [:NUMBER, text.to_i] }
	{STRING}		{ [:STRING, text.to_s] }

	{KEYWORD}		{ [text.upcase.to_sym, text] }
	{CONSTANT}		{ [:CONSTANT, text] }
	{IDENTIFIER}		{ [:IDENTIFIER, text] }
	{OPEN_PAREN}		{ [:OPEN_PAREN] }
	{CLOSE_PAREN}		{ [:CLOSE_PAREN] }
	{COMMA}			{ [:COMMA] }
	{EQUAL}			{ [:EQUAL] }
	{OPERATOR}		{ [text, text] }
	{TOKEN}			{ [text, text] }

end
