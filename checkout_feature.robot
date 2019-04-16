*** Settings ***
Documentation    Checkout feature
Resource  checkout_keywords.robot
Suite Setup
Suite Teardown

*** Test Cases ***
Checkout a banana
    [Tags]    Should be success
    [Teardown]    Reset
    Given the price of a "banana" is 40c
     When I checkout 1 "banana"
     Then the total price should be 40c


Checkout a apple but price is wrong
    [Tags]    Should be fail
    [Teardown]    Reset
    Given the price of a "apple" is 30c
    When I checkout 1 "apple"
    Then the total price should be 30c
