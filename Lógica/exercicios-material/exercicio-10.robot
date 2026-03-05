*** Variables ***
${SEGUNODS_TOTAIS}    25486

*** Tasks ***
Conversão se segundos para HMS
    #Conversão para as horas
    ${HORAS}    Evaluate    ${SEGUNODS_TOTAIS} //3600

    #Converçao para minutos
    ${RESTO}    Evaluate    ${SEGUNODS_TOTAIS} % 3600
    ${MINUTOS}    Evaluate    ${RESTO} // 60

    #Converçao para segundos
    ${SEGUNDOS}    Evaluate    ${RESTO} % 60 

    # Formatação (00:00:00)
    ${resultado}  Evaluate    "{:02d}:{:02d}:{:02d}".format(${horas}, ${minutos}, ${segundos})
    
    Log To Console    \nTempo total formatado: ${resultado}