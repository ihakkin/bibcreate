*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset References

*** Test Cases ***

After adding a reference, site displays it
    Go To  ${HOME_URL}
    Click Link  Create a new reference
    Input Text  title  The Hitchhiker's Guide to the Galaxy
    Input Text  author  Douglas Adams
    Input Text  year  1978
    Input Text  publisher  Harmony Books
    Input Text  ISBN  9789510218440
    Click Button  Add
    Page Should Contain  Douglas Adams

    