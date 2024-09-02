Scenario: Log in as a Good User
When I navigate to the SauceDemo website homepage
When I log in with username `standard_user` and password `secret_sauce`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `xpath(//*[@class='inventory_item'])` is equal to `6`
When I take screenshot