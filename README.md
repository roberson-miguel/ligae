# LIGAE

LIGAE é um projeto teste de aplicação das minhas habilidades pessoais. Não está concluido, aceito todo feedback. Obrigado!

No projeto quero que um usuaruo de telefonia acesse o nosso site e conheça nossos planos e possa simular se existem planos para suas ligações mais frequentes. 

Deixo algumas features já prontas para a evoliução, pois quero além de simular para o cliente em breve fazer analise dos futuros planos já pesquisados, e quem sabe disponibilizar na plataforma!


## Configurações: 

* Ruby version: 2.6.3

* Rails version: 6.0.2


## Como iniciar o projeto

* Seu computador deve ter preferencialmente macOS ou O.S Linux;

* Você pode utilizar o comdando `bin/setup` para configurar o que for necessário ou pode seguir os passos abaixo
{
  * Instale as dependências necessárias  definidas no    arquivo  `GemFile`, rodando o comando `bundle install`. 

  * SQLite3 é utilizado nesse projeto e para criar os bancos de dados basta rodar o comando `rails db:migrate`.
}

* Como uso utilizando o `rails 6`, é preferivel utilizar o comando `yarn install --check-files` para a instalação de algumas dependências.

* Você já pode utilizar o comando `rails s` para ver a aplicação funcionando no endereço `localhost:3000` mas caso queira algum kit já cadastrado utilize o comando `rake db:seed`.

## Testes

  Nesse projeto foi utilizado `rspec` junto com `capybara`. Caso queira executar os testes, tendo seguido os passos acima, basta executar em seu terminal o comando `rspec` ou `bundle exec rspec`.

## Algumas Extras

* Para fazer a autenticação foi utilizada a gem `Devise`.

* *Para ajudar com a estilização do site utilizamos o framework `Bootstrap`.

* *Manual para instalação do webpack:  
* * https://www.vic-l.com/setup-bootstrap-in-rails-6-with-webpacker-for-development-and-production/

### Docker Requisitos:

 - Docker
 - Editor

 ### Criando a imagem inicial


```
docker-compose build
```

* * Entre no container da aplicação

```
docker-compose run --service-ports web bash
```


* * Talvez voce precise de permisão especial utilize: "sudo chown -R $USER:$USER ."


```
rails s -b 0.0.0.0
```

* * No seu navegador digite http://0.0.0.0:3000/