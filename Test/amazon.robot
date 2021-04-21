*** Settings ***
Library  SeleniumLibrary
Documentation    Basic info
Resource    ../Resources/amazon.robot
Resource    ../Resources/common.robot

*** Variables ***


*** Test Cases ***
Gotta sign in
    [Documentation]    basic info
    [Tags]    smoke
    Common.Begin Web Test
    amazon.search for products
    amazon.select product
    amazon.add to cart
    amazon.begin checkout
    Common.End web test

