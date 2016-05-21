Feature: Searching TV in Walmart Search and add in my cart.

  On Walmart site
  I as user, I could like to add TV products
  and I can see my product in my cart.  

  Scenario: I can view one item in the cart
    Given I am on Walmart page
      When I searching "TV"
      Then I should see "resultados"
      When I open product page
      Then I should see "Descrição do produto"
      When I press "Adicionar ao carrinho"
       And I press "Continuar"
       And I open my cart
      Then I should see "Meu carrinho (1 item)"