*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    #create webdriver  chrome    executable_path="C:\Users\dell 6th\AppData\Local\Programs\Python\Python38\Scripts\chromedriver.exe"
    open browser  https://wynk.in/music/  chrome
    sleep  10s
    input text  id:searchinput  Tamil
    Press Keys  id:searchinput  ENTER
    sleep  5s
    Go To  https://wynk.in/music/playlist/tamil-top-20/bb_1518968652357
    sleep  5s
    Click link  xpath:/html/body/app-root/app-home/div[2]/div/app-package/div/div/div[3]/app-single-vertical-grid/div/ul/div[1]/li/div[1]/div[2]/a
    sleep  5
    #Click Element  xpath:/html/body/app-root/app-home/div[2]/div/song-info/div/div[1]/div[3]/div[2]/div[1]/button[1]
    @{results_on_page}=  Get WebElements  xpath:/html/body/app-root/app-home/div[2]/div

    FOR  ${element}  IN  @{results_on_page}
        ${text}=  Get Text  ${element}
    END
    sleep  5s
    input text  id:searchinput  R
    Press Keys  xpath://*[@id="searchinput"]  ENTER
    sleep  5s
    @{result}=  Get WebElements  xpath:/html/body/app-root/app-home/div[2]/div/app-listing/app-single-horizontal-grid/div
    FOR  ${i}  IN  @{result}
        Log  ${i}
        IF    ${i} == ${R}
        Pass Execution    "${i} == ${R}"
        END
    END
    input text  id:searchinput  A R Rahman Hits
    Press Keys  id:searchinput  ENTER
    sleep  5s
    Go To  https://wynk.in/music/album/a-r-rahman-hits/si_ARRahmanHits15926
    sleep  5s
    Click link  xpath:/html/body/app-root/app-home/div[2]/div/album-info/div/div/div[3]/app-single-vertical-grid/div/ul/div[2]/li/div[1]/div[2]/span/a
    sleep  5s
    #close browser
*** Keywords ***
#Test Keyword 1
    #Log To Console  Excuted Keyword1 - Found Items as Expected
    #Close Browser