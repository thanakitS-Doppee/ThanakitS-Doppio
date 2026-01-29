*** Settings ***
# Library
Library    SeleniumLibrary
Library    String
Library    Collections

# Common keyword
Resource    ${CURDIR}/../../Keywords/common.robot

# pages
Resource    ${CURDIR}/../../Keywords/pages/homepage_page.robot
Resource    ${CURDIR}/../../Keywords/pages/trade_market_page.robot
Resource    ${CURDIR}//../../Keywords/pages/trade_spot_page.robot

# features
Resource    ${CURDIR}/../../Keywords/features/homepage_feature.robot
Resource    ${CURDIR}/../../Keywords/features/trade_market_feature.robot
Resource    ${CURDIR}/../../Keywords/features/trade_spot_feature.robot

# Locators
Resource    ${CURDIR}/../locator/homepage_locator.robot
Resource    ${CURDIR}/../locator/trademarket_locator.robot
Resource    ${CURDIR}/../locator/tradespot_locator.robot