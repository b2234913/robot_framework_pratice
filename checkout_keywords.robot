*** Settings ***
Library    checkout_steps.py

*** Keywords ***
the price of a "${item}" is ${selling_price}c
    the_price_of_a_is_c    ${item}    ${selling_price}


I checkout ${purchase_quantity} "${item}"
    i_checkout    ${purchase_quantity}    ${item}


the total price should be ${expected_total_price}c
    the_total_price_should_be    ${expected_total_price}


Reset
    reset_variable
