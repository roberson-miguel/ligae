# LIGAE

LIGAE é um projeto de uso das minhas habilidades pessoais. 
Não está concluido, aceito todo e qualquer feedback. Obrigado!

No projeto quero que um usuario de telefonia acesse o nosso site e conheça nossos planos, e que o usuário possa simular planos para suas ligações mais frequentes. 

Deixo algumas features prontas para a evolução do projeto, exemplo é que capturo os dados das simulações no banco de dados, pois quero em breve fazer analise dos dados e diponibilzar na plataforma!


## Configurações: 

* Ruby version: 2.6.3

* Rails version: 6.0.2


## Como iniciar o projeto

* Seu computador deve ter preferencialmente macOS ou O.S Linux;

* Você pode utilizar o comdando `bin/setup` para configurar o que for necessário ou pode seguir os passos abaixo

  * Instale as dependências necessárias  definidas no    arquivo  `GemFile`, rodando o comando `bundle install`. 

  * SQLite3 é utilizado nesse projeto e para criar os bancos de dados basta rodar o comando `rails db:migrate`.

* Como estou usando o `rails 6`, é preferivel utilizar o comando `yarn install --check-files` para a instalação de algumas dependências.

* Você já pode utilizar o comando `rails s` para ver a aplicação funcionando no endereço `localhost:3000` mas caso queira algum kit já cadastrado utilize o comando `rake db:seed`.

## Testes

  Nesse projeto foi utilizado `rspec` junto com `capybara`. Caso queira executar os testes, tendo seguido os passos acima, basta executar em seu terminal o comando `rspec` ou `bundle exec rspec`.

## Algumas Extras

* *Para fazer a autenticação(ainda não implementada) deixo já configurada a gem `Devise`.

* *Para ajudar com a estilização do site utilizamos o framework `Bootstrap`.

* * Manual para instalação do webpack:  
* * https://www.vic-l.com/setup-bootstrap-in-rails-6-with-webpacker-for-development-and-production/


### Para iniciar o Projeto usando Docker

* Requisitos

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

### Instalando Rails e Dependencias na Docker!

* * Talvez voce precise de permisão especial utilize: "sudo chown -R $USER:$USER ."

```
yarn install --check-files
``` 

```
rails db:seed
```

```
rails s -b 0.0.0.0
```

* * No seu navegador digite http://0.0.0.0:3000/