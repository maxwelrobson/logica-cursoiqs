*** Settings ***
Library    Dialogs

*** Variables ***
${PREÇO}    6.19

*** Tasks ***
Cálculo de litros para gasolina
    ${total_real}    Get Value From User    Quantos R$ deseja colocar de gasolina?
    ${total_litros}    Evaluate    ${total_real} / ${PREÇO}
    ${resultado}    Evaluate    "{:02.2f}".format(${total_litros})

    Log To Console    \nTotal de litros: ${resultado}
