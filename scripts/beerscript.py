import random
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# This is a bot script for
# oispakaljaa.com

# Set driver variable to Firefox webdriver
driver = webdriver.Firefox()

# Arrow key variables
rightarrow = Keys.ARROW_RIGHT
leftarrow = Keys.ARROW_LEFT
uparrow = Keys.ARROW_UP
downarrow = Keys.ARROW_DOWN

# Space key variable
spacekey = Keys.SPACE

# Array of arrow keys
arrowkeys = [leftarrow, downarrow, rightarrow, uparrow]

# Open oispakaljaa.com
driver.get("http://oispakaljaa.com")

# Find html body xpath
game = driver.find_element_by_xpath("/html/body")

# Find try again button xpath
try_again = driver.find_element_by_xpath("/html/body/div[2]/div[2]/div[4]/div/a[2]")

# Find drunk count xpath
drunk_count = driver.find_element_by_xpath("/html/body/div[2]/div[1]/div/div[1]")

# Find drunk button xpath
drunk_button = driver.find_element_by_xpath("/html/body/div[2]/div[3]/div/div[1]")

# While process is alive
while True:

    # Press arrow keys in random oredr
    game.send_keys(random.choice(arrowkeys))

    # If game is over, start again
    if try_again.is_displayed():
        game.send_keys(spacekey)