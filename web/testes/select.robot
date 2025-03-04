***Settings***

Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***

Selecionando pelo texto
    Go To              ${url}/dropdown
    Select From List By Label       class:avenger-list     Scott Lang
    ${selected}=                     Get Selected List Value     class:avenger-list
    Should Be Equal                ${selected}                 7

Selecionando pelo valor e validando pelo texto
    Go To               ${url}/dropdown
    Select From List By Value       id:dropdown     6
    ${selected}=                    Get Selected List Label        id:dropdown
    Should Be Equal                 ${selected}                     Loki