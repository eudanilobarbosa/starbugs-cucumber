
require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/components.rb'
require_relative './pages/order.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @popup = Popup.new
    @order = OrderPage.new
end

After do |scenario|

    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(screenshot, "image/png", "Screenshot")

    # if (scenario.failed?)
    #     screenshot = page.save_screenshot("logs/screenshots/temp.png")
    #     attach(screenshot, "image/png", "Screenshot")
    # end
end