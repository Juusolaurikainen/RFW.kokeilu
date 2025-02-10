*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]        This is some basic info of the test
    [Tags]                 1006    Smoke    Contacts
    
    #Initialize Selenium
    Set Selenium Speed    .2s
    Set Selenium Timeout    10s
    
    
    #Open the browser
    
    Log                    Starting the test Case!
    Open Browser           https://automationplayground.com/crm/
    
    
    
    Click Link              id=SignIn
    Page Should Contain     Login
    
    Input Text               id=email-id    Admin@robotframeworktutorial.com
    Input Text               id=password    qwe
    
    Click Button             id=submit-id
    Page Should Contain      Our Happy Customers
    
    Click Link               new-customer
    Page Should Contain      Add Customer

    Input Text               id=EmailAddress    Jane@gmail.com
    Input Text               id=FirstName       Jane
    Input Text               id=LastName        Doe
    Input Text               id=City            Dallas
    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button      gender            female
    Select Checkbox          name=promos-name
    Click Button             Submit
    Wait Until Page Contains    Success! New customer added. 



    

    Sleep    3s
    Close All Browsers