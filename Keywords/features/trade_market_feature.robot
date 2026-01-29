*** Keywords ***
Get coin name and verify first 4 coin
    [Arguments]        ${coin_data}
    [Documentation]    Get name of first 4 coin 
    ${coin_list}    trade_market_page.Get coin name 
    trade_market_page.Verify coin name display    ${coin_list}   ${coin_data}

Verify coin price 
    [Arguments]    ${coin_name}        ${verify_price}        ${errormessage}
    [Documentation]    Get name of coin
    ${coinprice_dict}    trade_market_page.Get coin price     ${coin_name}           
    trade_market_page.Verify coin price    ${coinprice_dict['${coin_name}']}         ${verify_price}        ${errormessage}