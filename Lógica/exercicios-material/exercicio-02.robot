*** Variables ***
${NUMERO}    17

*** Tasks ***
Sucessor e Antecessor
    ${SUCESSOR}     Evaluate     ${NUMERO} + 1
    ${ANTECESSOR}    Evaluate    ${NUMERO} - 1
    Log To Console    \nO Sucessor de ${NUMERO} é ${SUCESSOR}
    Log To Console    \nO Antecessor de ${NUMERO} é ${ANTECESSOR}