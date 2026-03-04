*** Variables ***
${NOME}     Max
${IDADE}     27
${PESO}     90
${ALTURA}     1.80
${ESTADO_CIVIL}     Solteiro

*** Tasks ***
Exibir Informações
    Log To Console    \nNome: ${NOME}
    Log To Console    \nIdade: ${IDADE}
    Log To Console    \nPeso: ${PESO} kg
    Log To Console    \nAltura: ${ALTURA} m
    Log To Console    \nEstado Civil: ${ESTADO_CIVIL}