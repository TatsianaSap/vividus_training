GivenStories: story/demo/Homepage_Demo.story

Scenario: Log in as a Good User
When I click on element located by `xpath(//*[@id='user-name'])`
When I enter `standard_user` in field located by `xpath(//*[@id='user-name'])`
When I click on element located by `xpath(//*[@id='password'])`
When I enter `secret_sauce` in field located by `xpath(//*[@id='password'])`
When I click on element located by `xpath(//*[@id='login-button'])`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `xpath(//*[@class='inventory_item'])` is equal to `6`
When I take screenshot