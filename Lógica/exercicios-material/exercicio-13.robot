*** Variables ***
${N1}    5
${N2}    7

*** Tasks ***
Valor máximo
    Log To Console    \nNúmero 1: ${N1}
    Log To Console    \nNúmero 2: ${N2}

    IF    ${N1} > ${N2}
    Log To Console    \nO número ${N1} é maior que o número ${N2}
    ELSE
    Log To Console    \nO número ${N2} é maior que o número ${N1}    
    END
    