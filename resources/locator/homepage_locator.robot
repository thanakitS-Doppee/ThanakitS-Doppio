*** Variables ***
# ตัวอย่างเขียนแบบ Dict
&{home_locator}        lbl_accept_cookie=xpath=//p[text()="ยอมรับการใช้งานคุกกี้"]
...                     ddl_xxx=xxxx

# homepage_page_locators
${home_locator.lbl_accept_cookie}              //p[text()="ยอมรับการใช้งานคุกกี้"]

# homepage_page_locators navigatorbar
${home_locator.ddl_market}                     //div[contains(@class, "HeaderNav_NavBarMenu") and contains(., "ตลาดซื้อขาย")]
${home_locator.ddl_market_under_ddl}           (//div[contains(@class, "HeaderNav_ItemTitle") and contains(., "ตลาดซื้อขาย")])[1] 


