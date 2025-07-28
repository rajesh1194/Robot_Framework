from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Edge()

try:
    driver.get("https://www.makemytrip.com/")
    driver.maximize_window()
    time.sleep(5)

    try:
        close_popup = driver.find_element(By.XPATH, "//div/section/span[@class='commonModal__close']")
        close_popup.click()
    except:
        pass  

    time.sleep(3)

    from_city = driver.find_element(By.ID, "fromCity")
    from_city.click()
    time.sleep(3)

    from_input = driver.find_element(By.XPATH, "//input[@placeholder='From']")
    from_input.send_keys("Bengaluru")
    time.sleep(2)
    from_input.send_keys(Keys.ENTER)
    time.sleep(2)

    first_suggestion = driver.find_elements(By.XPATH, "(//div[@class='makeFlex column flexOne'])[1]")[0]
    first_suggestion.click()
    time.sleep(3)

    to_city = driver.find_element(By.ID, "toCity")
    to_city.click()
    time.sleep(1)

    to_input = driver.find_element(By.XPATH, "//input[@placeholder='To']")
    to_input.send_keys("Guwahati")
    time.sleep(2)
    to_input.send_keys(Keys.ENTER)
    time.sleep(1)

    first_suggestion = driver.find_elements(By.XPATH, "(//div[@class='makeFlex column flexOne'])[1]")[0]
    first_suggestion.click()
    time.sleep(2)


    date_element = driver.find_element(By.XPATH, "//div[@aria-label='Sun Jul 20 2025']")
    date_element.click()
    time.sleep(4)


    search_button = driver.find_element(By.XPATH, "//a[text()='Search']")
    search_button.click()
    time.sleep(20)

finally:
    driver.quit()
