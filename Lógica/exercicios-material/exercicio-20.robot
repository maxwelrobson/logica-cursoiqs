*** Settings ***
Library    Dialogs

*** Variables ***
${IMC}
${PESO}
${ALTURA}

*** Tasks ***
Cálculo IMC

    ${PESO}    Get Value From User    \nDigite o peso:
    ${ALTURA}    Get Value From User    \nDigite a altura:

    ${IMC}    Evaluate    ${PESO} / (${ALTURA} * ${ALTURA})

    ${imc_formatado}    Evaluate    "{:02.2f}".format(${IMC})
    Log To Console    \nSeu IMC é: ${imc_formatado}

    IF    ${IMC} <= 18.5
    Log To Console    \nAbaixo do peso
    ELSE IF    ${IMC} >= 18.6 and ${IMC} <= 24.9
    Log To Console    \nPeso ideal (parabéns)
    ELSE IF    ${IMC} >= 25.0 and ${IMC} <=29.9
    Log To Console    \nLevemente acima do peso
    ELSE IF    ${IMC} >= 30.0 and ${IMC} <= 34.9
    Log To Console    \nObesidade grau I
    ELSE IF    ${IMC} >= 35.0 and ${IMC} <= 39.9
    Log To Console    \nObesidade grau II (severa)
    ELSE
    Log To Console    \nObesidade III (mórbida)    
    END
    