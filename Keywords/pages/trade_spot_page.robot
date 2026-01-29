*** Keywords ***
Click market under spotpage
    [Documentation]     เปิดตลาดซื้อขาย หลังหน้า spot
    seleniumlibrary.Click element   ${trade_spot_locator.lbl_market}
    seleniumlibrary.Wait until element is visible   ${trade_market_locator.productlist}      5s