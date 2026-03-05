*** Variables ***
${DISTANCIA}    200
${TOTAL_COMBUSTIVEL}    8

*** Tasks ***
Média de consumo
    ${MEDIA}    Evaluate    ${DISTANCIA} / ${TOTAL_COMBUSTIVEL}
    Log To Console    \nConsumo médio do carro: ${MEDIA}