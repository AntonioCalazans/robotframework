***Settings***

Resource       base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Manipulando formularios
    Go To           ${url}/login
    Login With      stark   jarvis!
    Message Displayed After Logging     Tony Stark
    

Manipulando usando css
    Go To           ${url}/login
    Login With      stark   jarvis!
    Message Displayed After Logging     Tony Stark

Senha invalida
    [Tags]          senha_incorreta
    Go To           ${url}/login
    Login With      stark   123456
    Click Button    class:btn-login
    Validate Message    Senha é invalida!

Usuario nao existe
    [Tags]          user_naocadastrado
    Go To           ${url}/login
    Login With      Joey    123456
    Validate Message        O usuário informado não está cadastrado! 


***Keywords***

Login With
    [Arguments] ${usename}  ${pass}
    Input Text      css:input[name=username]        ${username}
    Input Text      css:input[name=password]        ${pass}
    Click Button    class:btn-login

Validate Message
    [Arguments] ${expected_message}
    ${message}=      Get WebElement                  id:flash
    Should Contain  ${message.text}                  ${expected_message}

Message Displayed After Logging
    [Arguments] ${user_name}
    Page Should Contain     Olá, ${user_name}. Você acessou a área logada!
    
