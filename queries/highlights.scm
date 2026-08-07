["scalar"
"table"
"view"
"enum"
"struct"
"role"
"default"
"@mixin"
"@default"
"@check"
"@initialize_as"
"@primary_key"
"@unique"
"@index"
"@external"
"@inline"
"@rls"
"@rls.owner"
"@role"
"@policy"
"@security_definer"
"@!schema_version"
"!!!SETUP"
"!!!TEST"
"!!!UPDATE"
"!!!RESULT"] @keyword
["opclass"
"using"
"with"
"materialized"
"for"
(permission)
(on_update)] @keyword.modifier

[";"
","
"."
":"] @punctuation.delimiter
["{"
"}"
"("
")"
] @punctuation.bracket
["?"
"~"] @punctuation.special
["||"
"&&"
"=="
"==="
"!="
"!=="
"::"
"="
"!"
"+"
"-"
"*"
"/"
"%"
">"
">="
"<"
"<="
"~~"] @operator

["if" "then" "else"] @keyword
["#"] @keyword

(placeholder) @variable.builtin
(null_literal) @constant.builtin
(boolean_literal) @constant.builtin
(number) @number
(decl (["sql\"\"\""
"sql\""
"\""
"\"\"\""] @string.special))
(string) @string
(string_escape) @string.escape
(type_identifier) @type
(role_identifier) @type
(field_identifier) @property
(variant_identifier) @property
(function_identifier) @function
(attribute_identifier) @keyword
(attribute_field_identifier) @property
(comment) @comment
(test_explaination) @comment
