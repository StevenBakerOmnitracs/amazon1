*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
search for products
    go to   http://www.amazon.com
    wait until page contains    Select your address
    Input Text  id=twotabsearchtextbox  Ferrari 458
    click button    //*[@id="nav-search-submit-button"]
    wait until page contains    results for "Ferrari 458"

select product
    click button    //*[@id="add-to-cart-button"]
    wait until page contains    Related to items you've viewed

add to cart
    click button    //*[@id="add-to-cart-button"]
    wait until page contains    Related to items you've viewed

begin checkout
    click link  Proceed to checkout (1 item)
    wait until page contains    Sign-In


