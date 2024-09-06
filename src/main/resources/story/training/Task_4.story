GivenStories: story/demo/Homepage_Demo.story

Scenario: Login as broken user to the SauceDemo website homepage
When I log in as Broken User
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
Then number of elements found by `xpath(//*[@class='inventory_item'])` is equal to `6`
When I take screenshot