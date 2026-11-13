*** Settings ***
Resource  resource.robot
Test Setup  Reset Counter
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero
    Go To  ${HOME_URL}
    Get Title  ==  Laskuri
    Get Text  body  *=  nappia painettu 0 kertaa

*** Keywords ***
Set Counter Value To Ten
    New Page  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  text=Aseta
    Get Text  div  ==  nappia painettu 10 kertaa