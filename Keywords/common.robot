*** Keywords ***
Open Bittazza website homepage
    seleniumlibrary.Open browser   ${URL}    ${Browser}
    seleniumlibrary.Maximize Browser Window


Open bitazza market
    [Documentation]    เปิดตาราง coin
    common.Open Bittazza website homepage
    homepage_feature.Open tradepage
    trade_spot_feature.Open trade market under spotpage
