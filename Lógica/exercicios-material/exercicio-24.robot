*** Variables ***
@{LISTA_IDADES}    15    22    12    30    17    18    45
${maiores}
${menores}

*** Test Cases ***
Maiores de Menores de Idade
    
    FOR    ${idade}    IN    @{LISTA_IDADES}
        IF    ${idade} >= 18
            ${maiores}    Evaluate    ${maiores} + 1
        ELSE    
            ${menores}    Evaluate    ${menores} + 1
        END
        
    END

    Log To Console    \nTotal de maiores: ${maiores}
    Log To Console    \nTotal de menores: ${menores}
    
    