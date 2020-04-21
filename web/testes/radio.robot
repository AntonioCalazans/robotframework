***Settings***

Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão



***Test Cases***
Selecionando um radio button
    Go to               ${url}/radios
    Select Radio Button     movies      cap
    Radio Button Should Be Set To     movies  cap

Selecionando outro radio button
    Go To       ${url}/radios
    Select Radio Button     movies      iron-man
    Radio Button Should Be Set To   movies  iron-man