require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    #selenium - para utilização do firefox
    #selenium_chrome - para utilização do chrome
    #selenium_chrome_healess - para utilização do chrome sem a GPU, mais utilizado em ambientes ghenkis, onde não precisa do drive para testar
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com/' #site default por onde irá começar nossos testes
    config.default_max_wait_time = 5 #tempo que vai esperar para que o elemento, de acordo com a ação, apareça.

end