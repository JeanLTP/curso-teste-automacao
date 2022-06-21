class Mapping_elements < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
        
    def preencher
        nome.set 'Teste'
        find('input[type="submit"]').click
    end
end