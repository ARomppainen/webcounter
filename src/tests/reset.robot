*** Settings ***
Resource  resource.robot
Suite Setup  Configure Suite
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
   Go To  ${HOME_URL}
   Click Button  Paina
   Page Should Contain  nappia painettu 1 kertaa
   Click Button  Nollaa
   Page Should Contain  nappia painettu 0 kertaa
