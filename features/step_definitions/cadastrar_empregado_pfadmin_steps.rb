Dado(/^que esteja logado no site ORANGEHRM com perfil admin$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
  fill_in('txtUsername',:with =>'Admin')
  fill_in('txtPassword',:with =>'admin')
  click_button('btnLogin')
end

Quando(/^cadastrar novo funcionário$/) do
	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_addEmployee')
	fill_in('firstName',:with => 'Iasmim')
	fill_in('lastName',:with => 'Eid')
	select('Canadian Regional HQ',:from =>'location')
	click_button('btnSave')
	
end

Então(/^sistema apresenta mensagem "([^"]*)"$/) do |arg1|
 has_content?("Successfully Saved")
  
end
