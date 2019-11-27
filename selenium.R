# start server in terminal
java -Dwebdriver.chrome.driver="D:\WebDriver\chromedriver.exe" -jar "d:/Selenium server/selenium-server-standalone-4.0.0-alpha-2.jar"

library(RSelenium)
test_selenium <- function(browser = "chrome") {
        remDr <- remoteDriver(remoteServerAddr = "localhost" 
                              , port = 4444L
                              , browserName = browser
        )
        remDr$open()
        remDr$navigate("https://www.imdb.com")
        print(remDr$getCurrentUrl())
        remDr$close()
}
test_selenium(browser = "chrome")