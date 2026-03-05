*** Variables ***
${NUMERO}    1

*** Tasks ***
Retornar número
    IF    ${NUMERO} > 0
        Log To Console     \nNúmero Positivo
    ELSE IF     ${NUMERO} < 0    
        Log To Console    \nNúmero Negativo
    ELSE
        Log To Console    \nNúmero Igual a 0    
    END
    