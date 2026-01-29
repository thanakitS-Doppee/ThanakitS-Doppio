*** Keywords ***
Click accept cookie
    seleniumlibrary.Click element       ${home_locator.lbl_accept_cookie}

Click dropdown market navigatorbar 
    seleniumlibrary.Click element      ${home_locator.ddl_market}
    seleniumlibrary.Wait until element is visible       ${home_locator.ddl_market_under_ddl}

Click market under navigatorbar
    seleniumlibrary.Click element   ${home_locator.ddl_market_under_ddl}
    seleniumlibrary.Wait until element is visible   ${trade_spot_locator.chart}