*** Settings ***
Library     app.py

*** Test Cases ***
Para realizar um primeiro teste de validação
    ${result} =         Welcome     Antonio
    Should be Equal     ${result}   Olá Antonio,bem-vindo ao mundo do Robot utilizando python