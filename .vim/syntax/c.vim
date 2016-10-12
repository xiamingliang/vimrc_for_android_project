" Highlight All Function
syn match UserFunction "\<[a-zA-Z_][a-zA-Z_$0-9]*\>\s*("me=e-1
"syn match UserFunction "\<[a-zA-Z_][a-zA-Z_$0-9]*\>\s*("me=e-1 contained containedin=cParen,cCppParen,cBracket,cCppBracket
" highlight UserFunction in desert_based.vim

" Highlight All Math Operator
" C math operators
"syn match cMathOperator display "[-+\*/%=]"
" C pointer operators
"syn match cPointerOperator display "->\|\."
" C logical operators - boolean results
"syn match cLogicalOperator display "[!<>]=\="
"syn match cLogicalOperator display "=="
" C bit operators
"syn match cBinaryOperator display "\(&\||\|\^\|<<\|>>\)=\="
"syn match cBinaryOperator display "\~"
"syn match cBinaryOperatorError display "\~="
" More C logical operators - highlight in preference to binary
"syn match cLogicalOperator display "&&\|||"
"syn match cLogicalOperatorError display "\(&&\|||\)="
" Math Operator
"hi cMathOperator guifg=#82D682  "lightgreen brightness -9
"hi! link cPointerOperator cMathOperator
"hi! link cLogicalOperator cMathOperator
"hi! link cBinaryOperator cMathOperator
"hi! link cBinaryOperatorError Error
"hi! link cLogicalOperatorError Error
" My Own DataType
"syn keyword cType My_Type_1 My_Type_2 My_Type_3
