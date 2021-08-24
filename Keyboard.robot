*** Settings ***
Library  SeleniumLibrary
Library  Telnet
Library  Screenshot
*** Variables ***
${scroll_to_element}  xpath://*[@id="mantle_skin"]/div[3]/div/div[1]/section[2]/ol/li[1]/div[1]/div[2]/p[1]/a
*** Test Cases ***
login last
    Open Browser  https://www.last.fm/  chrome
    maximize browser window
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  ENTER
    sleep  5s
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  TAB
    #input text  id:id_username_or_email    rajeshmani191@gmail.com
    press keys  None  rajeshmani191@gmail.com
    sleep  2s
    #press keys  None  TAB
    press keys  None  CTRL+a
    press keys  None  CTRL+c
    sleep  2s
    press keys  None  TAB
    press keys  None  CTRL+v
    #press keys  None  rajeshmani191@gmail.com
    press keys  None  ENTER
    sleep  1s
    press keys  None  TAB
    press keys  None  TAB
    press keys  None  ENTER
    press keys  None  Tamil Songs
    press keys  None  ENTER
    sleep  1s
    ${x}=    Get Horizontal Position  ${scroll_to_element}
    ${y}=    Get Vertical Position    ${scroll_to_element}
    sleep  3
    Execute Javascript  window.scrollTo(${x},${y})
    click element    ${scroll_to_element}
    sleep  3s
    #Scroll Element Into View  xpath://*[@id="mantle_skin"]/div[4]/div/div[1]/section[4]/ol/li[1]/div/h3/a
    sleep  3s
    #Mouse Down On Link  xpath://*[@id="mantle_skin"]/div[5]/section/div/ol/li[2]/div/h3/a
    Mouse Down  xpath://*[@id="mantle_skin"]/header/div[1]/div[2]/div/div/button
    sleep  10s
    Mouse Up  xpath://*[@id="mantle_skin"]/header/div[1]/div[2]/div/div/button
    sleep  10s
    #Mouse Over  xpath://*[@id="mantle_skin"]/div[2]/div/div/div[2]/div[1]/div[4]/div/section/ul/li[2]/a
    #sleep  5s
    #Mouse Out  xpath://*[@id="mantle_skin"]/div[2]/div/div/div[2]/div[1]/div[4]/div/section/ul/li[2]/a
    #sleep  5s
    Mouse Down On Link  xpath://*[@id="mantle_skin"]/div[4]/div/div[1]/section[2]/div/ol[1]/li[1]/div/h3/a
    close browser
*** Keywords ***
