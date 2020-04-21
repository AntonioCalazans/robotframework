***Settings***

Resource    base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Selecionando informação de uma tabela completa
    Go To           ${url}/tables
    Table Row Should Contain        id:actors   1      @robertdowneyjr

Selecionando outra linha de tabela
    Go To                        ${url}/tables
    ${selected}=                Get WebElement      xpath:.//tr[contains(., '@teamcevans')]
    Should Contain             ${selected.text}    $ 7.000.000
    Should Contain             ${selected.text}    Chris Evans