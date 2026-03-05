*** Variables ***
${DIVIDENDO}    17
${DIVISOR}    6

*** Tasks ***
Quociente e Resto
    ${QUOCIENTE}    Evaluate    ${DIVIDENDO} // ${DIVISOR}
    ${RESTO}    Evaluate    ${DIVIDENDO} % ${DIVISOR}
    Log To Console    \nDividendo:${DIVIDENDO}
    Log To Console    \nDivisor:${DIVISOR}
    Log To Console    \nQuociente:${QUOCIENTE}
    Log To Console    \nResto:${RESTO}