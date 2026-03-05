*** Settings ***
Library    Dialogs

*** Variables ***
${N1}
${N2}
${OP}

*** Tasks ***
Calculadora Simples
    ${N1}    Get Value From User    Primeiro Número:
    ${OP}    Get Value From User    Operação: soma (+), subtração (-), multiplicação (*), divisão (/)
    ${N2}    Get Value From User    Segundo Número: 

    IF    "${OP}" == "+"
    ${resultado}    Evaluate    ${N1} + ${N2}
    Log To Console    \n${N1} ${OP} ${N2} = ${resultado}
    ELSE IF       "${OP}" == "-" 
    ${resultado}    Evaluate    ${N1} - ${N2}
    Log To Console    \n${N1} ${OP} ${N2} = ${resultado}
    ELSE IF       "${OP}" == "*" 
    ${resultado}    Evaluate    ${N1} * ${N2}
    Log To Console    \n${N1} ${OP} ${N2} = ${resultado}
    ELSE IF       "${OP}" == "/" 
    ${resultado}    Evaluate    ${N1} // ${N2}
    Log To Console    \n${N1} ${OP} ${N2} = ${resultado}
    END
    
