*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    New Page  ${HOME_URL}
    Click  text=Paina
    Click  text=Paina
    Click  text=Nollaa
    Get Text  div  ==  nappia painettu 0 kertaa
