Given /^I open email$/ do
	wd = Selenium::WebDriver.for :firefox

wd.get "https://temp-mail.org/pt/"
wd.find_element(:link_text, "Alterar").click
#wd.find_element(:id,'mail').text
#wd.find_element(:id,'mail').send_keys 'testeemail'
#wd.find_element(:id,'mail').send_keys [:control, 'c']
wd.find_element(:xpath,'/html/body/header/div/div/div/div[2]/div/div[1]/div/input').click
wd.find_element(:xpath,'/html/body/header/div/div/div/div[2]/div/div[1]/div/input').send_keys [:control, 'c']
#wd.find_element(:xpath,'/html/body/div[1]/div/div/div[2]/div[1]/div[2]/div/form/div[1]/div/input').send_keys 'teste'
#wd.find_element(:xpath,'//html/body/header/div/div/div/div[2]/div/div[1]/div/input').send_keys [:control, 'v']
wd.get "https://the-internet.herokuapp.com/forgot_password"
wd.find_element(:xpath,'/html/body/div[2]/div/div/form/div/div/input').click
wd.find_element(:xpath,'/html/body/div[2]/div/div/form/div/div/input').send_keys [:control, 'v']
wd.find_element(:xpath,'/html/body/div[2]/div/div/form/button').click

wd.get "https://temp-mail.org/pt/"
wd.find_element('/html/body/div[1]/div/div/div[1]/ul/li[2]/a').click
wd.find_element('/div/table/tbody/tr/td[1]/a').click
###pegar and use the following credentials: username: tomsmith password: SuperSecretPassword! 
wd.find_element('/html/body/div[1]/div/div/div[2]/div[1]/div[1]/div[3]/div/div/a[3]').click
wd.find_element('/html/body/div[2]/div/div/form/div[1]/div/input').send_keys 'tomsmith'
wd.find_element('/html/body/div[2]/div/div/form/div[2]/div/input').send_keys 'SuperSecretPassword!'
wd.find_element('/html/body/div[2]/div/div/form/button').click
var fieldValue = this.getFieldValue('You logged into a secure area!');
wd.assert.equal(fieldValue, email, 'You logged into a secure area!' + email).then(callback, callback);
wd.find_element('/html/body/div[2]/div/div/a/i').click
end

When /^I recovery pass$/ do
end

Then /^I make login$/ do
end