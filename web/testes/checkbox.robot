#Validação de checkbox

*** Settings    ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão       


*** Variables   ***
${url}      https://training-wheels-protocol.herokuapp.com/


*** Test Cases   ***
Validar title do browser
    Go To               ${url}/checkboxes
    Title Should Be     Training Wheels Protocol
    


Marcando um checkbox com id
    Go To               ${url}/checkboxes
    Select Checkbox     id:thor
    Checkbox Should be Selected     id:thor
    

Marcando um checkbox sem um id
    Go To               ${url}/checkboxes
    Select Checkbox     css:input[value='iron-man']
    Checkbox Should be Selected     css:input[value='iron-man']
    

Marcando um checkbox usando um xpath
    Go To               ${url}/checkboxes
    Select Checkbox     xpath://*[@id='checkboxes']/input[@value='the-avengers']
    Checkbox Should be Selected     //*[@id='checkboxes']/input[@value='the-avengers']
    



