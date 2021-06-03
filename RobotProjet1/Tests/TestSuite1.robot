*** Settings ***
Library    SeleniumLibrary

Suite Setup       Log    I am inside Test Suite Setup    
Suite Teardown    Log    I am inside Test Suite Teardown      
Test Setup        Log    I am inside Test Setup    
Test Teardown     Log    I am inside Test Teardown  

Default Tags    sanity    

   
*** Test Cases ***
FirstTest
    [Tags]    smoke
    Log    First Test  
    
SecondTest
    Log    Second Test
    Set Tags    Regression1
    Remove Tags    Regression1
    
ThirdTest
    Log    Third Test
    
# FirstSeleniumTest
   # Open Browser    https://google.com    chrome
   # Set Browser Implicit Wait    5s
   # Input Text      name=q                Ayoub Nadir
   # Press Keys      name=q                ENTER
   # Click Button    name=btnK    
   # Sleep    16s 
   # Close Browser
   # Log    Done    
    
# SampleLoginTest
  #  [Documentation]    This is a Sample Login Test
  #  Open Browser          ${URL}                chrome
  #  Set Browser Implicit Wait    5s
  # LoginKWD
  # Click Element    id=welcome
  # Click Element    link=Logout
  # Sleep    6s
  #  Close Browser 
  #  Log              Test Completed  
   # Log    This Test Was Executed By %{username} On  %{os}.       
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin             admin123
&{LOGINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKWD 
    Input Text            id=txtUsername        @{CREDENTIALS}[0]    
    Input Password        id=txtPassword        &{LOGINDATA}[password]
    Click Button    id=btnLogin
        
    