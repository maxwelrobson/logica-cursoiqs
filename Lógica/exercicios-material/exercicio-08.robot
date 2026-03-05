*** Variables ***
${LARGURA}    12
${COMPRIMENTO}    20
${PRECO_METRO}    3.000

*** Tasks ***
Cálculo Áre de Terreno
    ${AREA}    Evaluate    ${LARGURA} * ${COMPRIMENTO}
    ${PRECO}    Evaluate    ${AREA} * ${PRECO_METRO}    
    Log To Console    \nÁrea do terreno: ${AREA}m²
    Log To Console    \nPreço: R$${PRECO}