*** Keywords ***
Get coin name
    [Arguments]    ${start_count}=1        ${end_count}=5
    [Documentation]     Top 4 Bitazza coin
    SeleniumLibrary.Wait Until Element Is Visible        ${trademarket_locator.coin_tbl}                   
    ${coin_list}                BuiltIn.Create List
        FOR    ${index}    IN RANGE     ${start_count}    ${end_count}   
            ${coin_locator}            String.Replace String        ${trademarket_locator.coin_name} 
            ...      ***replace***  ${index} 
            ${coin_name}               SeleniumLibrary.Get Text    ${coin_locator}
            ${coin_split}            String.Split String       ${coin_name}    \n
            Collections.Append To List    ${coin_list}    ${coin_split}[0]
        END
        RETURN    ${coin_list}


Verify coin name display 
    [Arguments]    ${coin_list}    ${coin_data}    
        FOR     ${coin_name}    IN    @{coin_data} 
            Collections.List Should Contain Value    ${coin_list}   ${coin_name} 
        END


Get coin price
    [Arguments]        ${coin_name}
    &{coinprice_dict}    BuiltIn.Create Dictionary 
        FOR    ${coin}    IN    ${coin_name}
            ${price_locator}    String.Replace String    ${trademarket_locator.coin_price}
            ...      ***replace***  ${coin} 
            Wait Until Element Is Visible    ${price_locator}    10s    
            ${coinprice}        Get Text     ${price_locator}
            ${coinprice}        String.Remove String   ${coinprice}    ,    THB    ${SPACE}
            Collections.Set To Dictionary    ${coinprice_dict}    ${coin}    ${coinprice}
        END
        RETURN    ${coinprice_dict}


Verify coin price 
    [Arguments]   ${price_on_screen}           ${verify_price}            ${errormessage}
    BuiltIn.Should Be True    ${price_on_screen} >= ${verify_price}        ${errormessage}