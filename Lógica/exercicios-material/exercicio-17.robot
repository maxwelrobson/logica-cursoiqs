*** Settings ***
Library    Dialogs

*** Variables ***
${PÃO}    0.50
${BROA}    5.0

*** Tasks ***
Cálculo dos pães e 10%
    
    ${quantidade_pao}    Get Value From User    Total de pães vendidos:
    ${quantidade_broa}    Get Value From User    Total de broas vendidas:

    ${total_pao}    Evaluate    ${PÃO} * ${quantidade_pao}
    ${total_broa}    Evaluate    ${BROA} * ${quantidade_broa}
    ${valor_total}    Evaluate    ${total_pao} + ${total_broa}
    ${poupanca}    Evaluate    ${valor_total} / 10

    Log To Console    \nTotal de vendas de pães: ${total_pao}
    Log To Console    \nTotal de vendas de broas: ${total_broa}
    Log To Console    \nValor total: ${valor_total}
    Log To Console    \nValor para guardar na poupança(10%): ${poupanca}


