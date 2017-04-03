Dado(/^que possua perfil ADMIN e esteja logado no site ORANGEHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
  fill_in('txtUsername',:with =>'Admin')
  fill_in('txtPassword',:with =>'admin')
  click_button('btnLogin')
end

Quando(/^editar empregado existente$/) do
	click_link('menu_pim_viewPimModule')
	click_link('menu_pim_viewEmployeeList')
	find(:xpath,'//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').click
	click_button('btnSave')
	fill_in('personal[txtOtherID]',:with =>'22334679')
	click_button('btnSave')


end

Então(/^sistema exibe mensagem "([^"]*)"$/) do |arg1|
 has_content?("Successfully Saved")

end
