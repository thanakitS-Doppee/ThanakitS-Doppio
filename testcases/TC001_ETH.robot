*** Settings ***
Resource   ${CURDIR}/../resources/settings/imports.robot

Library    DebugLibrary
Suite Setup      Open bitazza market
Suite Teardown   Close All Browsers

Variables    ${CURDIR}/../resources/test_data/common_data.yaml
Variables    ${CURDIR}/../resources/test_data/testcases_data.yaml


*** Test Cases ***
TC001 Verify that "Bitcoin" "Ethereum" "Moo Deng" "Usd tether" displayed correctly
    [Tags]       TC001    Marketpage
    [Documentation]    Check coin list
    trade_market_feature.Get coin name and verify first 4 coin    ${TC001.Verify.coin_display}

TC002 Verify that "Bitcoin" price is not less than 300000 thb
    [Tags]       TC002   Marketpage
    [Documentation]    Check coin price Bitcoin
    trade_market_feature.Verify coin price        ${TC002.Verify.coin.name}      ${TC002.Verify.coin.price}     errormessage=ราคาต่ำกว่าเกณท์

TC003 Verify that "ETH" price is not less than 30000 thb
    [Tags]       TC003   Marketpage
    [Documentation]    Check coin price ETH
    trade_market_feature.Verify coin price        ${TC003.Verify.coin.name}      ${TC003.Verify.coin.price}     errormessage=ราคาต่ำกว่าเกณท์

TC004 Verify that "Moo Deng" price is not less than 100000 thb
    [Tags]       TC004   Marketpage
    [Documentation]    Check coin price Moo Deng
    trade_market_feature.Verify coin price        ${TC004.Verify.coin.name}      ${TC004.Verify.coin.price}     errormessage=ราคาต่ำกว่าเกณท์


TC005 Verify that "UST Tether" price is not less than 390000 thb
    [Tags]       TC005   Marketpage
    [Documentation]    Check coin price USD Tether
    trade_market_feature.Verify coin price        ${TC005.Verify.coin.name}      ${TC005.Verify.coin.price}     errormessage=ราคาต่ำกว่าเกณท์
