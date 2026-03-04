*** Variables ***
${NOME}    Maxwel
${DISCIPLINA}    Algoritmos
${NOTA1}    7
${NOTA2}    10
${NOTA3}    6
${NOTA4}    8

*** Tasks ***
Cálculo de Média
    Log To Console     \nAluno: ${NOME}
    Log To Console    \nDisciplina: ${DISCIPLINA}
    Log To Console    \nNota 1: ${NOTA1}
    Log To Console    \nNota 2: ${NOTA2}
    Log To Console    \nNota 3: ${NOTA3}
    Log To Console    \nNota 4: ${NOTA4}
    ${MEDIA}    Evaluate    (${NOTA1} + ${NOTA2} + ${NOTA3} + ${NOTA4}) // 4
    Log To Console    \nMédia das notas: ${MEDIA}