*** Variables ***
${NOTA1}    4
${NOTA2}    8
${NOTA3}    10
${NOTA4}    5

*** Tasks ***
Cálculo de Média
    ${media}    Evaluate    (${NOTA1} + ${NOTA2} + ${NOTA3} + ${NOTA4}) / 4
    
    Log To Console    \nMédia: ${media}
    IF    ${media} > 7
    Log To Console    \nAprovado
    ELSE
    Log To Console    \nReprovado    
    END
    