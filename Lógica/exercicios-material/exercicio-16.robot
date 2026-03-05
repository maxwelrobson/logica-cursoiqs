*** Settings ***
Library    Dialogs

*** Variables ***
${NOME}
${IDADE}

*** Tasks ***
Categoria
    ${NOME}    Get Value From User    \nNome:    
    ${IDADE}    Get Value From User    \nIdade:

    IF    ${IDADE} > 10 and ${IDADE} <= 17
        ${categoria}    Evaluate    'Categorias de base'
    ELSE IF    ${IDADE} >= 18 and ${IDADE} <= 40
        ${categoria}    Evaluate    'Profissional'
    ELSE IF    ${IDADE} > 40
        ${categoria}    Evaluate    'Master'
    ELSE
        ${categoria}    Evaluate    'Escolhinha'            
    END
    
    Log To Console    \nNome: ${NOME}
    Log To Console    \nIdade: ${IDADE}
    Log To Console    \nCategoria: ${categoria}