*** Variables ***
${ANO_NASCIMENTO}    1998
${ANO_FUTURO}    2035

*** Tasks ***
Idade em 2035
    ${RESULTADO}    Evaluate    ${ANO_FUTURO} - ${ANO_NASCIMENTO}
    Log To Console     \nSua Idade em ${ANO_FUTURO} será: ${RESULTADO}