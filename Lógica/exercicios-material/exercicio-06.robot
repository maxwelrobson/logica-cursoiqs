*** Variables ***
${C}    25

*** Tasks ***
Conversão para Fahrenheit
    ${F}     Evaluate    ${C} * 1.8 + 32
    Log To Console    \n${F}