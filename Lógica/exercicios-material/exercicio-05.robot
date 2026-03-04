*** Variables ***
${HORA_NORMAL}    10.0
${HORA_EXTRA}    15.0
${HORA_TRABALHADA}    1760
${HORA_EXTRA_TRABALHADA}    400

*** Tasks ***
Cálculo de Salário anual
    Log To Console    \nHoras trabalhadas no ano: ${HORA_TRABALHADA}
    Log To Console    \nHoras extras trabalhadas no ano: ${HORA_EXTRA_TRABALHADA}
    ${SALARIO_ANUAL}    Evaluate    ${HORA_TRABALHADA} * ${HORA_NORMAL} + ${HORA_EXTRA_TRABALHADA} * ${HORA_EXTRA}
    Log To Console    \nSeu salário anual é de: R$:${SALARIO_ANUAL}