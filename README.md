# Exercicios de elixir.

Exercicios para estudo da linguagem elixir.

## Rodando projeto:

Clone o repositório em sua maquina local:

```git
git clone https://github.com/jpbrab0/exercicios-elixir.git
```

Instalando as dependencias do projeto:
```bash
mix deps.get
```

Dentro do diretorio do projeto, rode `iex -S mix` para entrar no "Elixir's Interactive Shell" com as depedencias do projeto.

Compile o arquivo "exercises.ex":
```elixir
iex(1)> c("lib/exercises.ex")
```

Depois rode:

```elixir
iex(2)> Exercises.<nome da função>(parametro)
```
---

## Testes

Rodando os testes:

```bash
mix test
```

## Funções executaveis:

1. Exercicio: 

* Conversor de Temperatura
  
  - Converte Celsius para fahrenheit e vice versa.
  - Ex: `celsius_to_fahrenheit(<numero>)` ou `fahrenheit_to_celsius(<numero>)`
2. Exercicio:

* Número par ou impar

  - Verifica se o número é par ou impar.
  - Ex: `number_odd_or_even(<numero>)`

3. Exercicio:

* Github Search

  - Busca um usuário no github, e retorna os dados de seu perfil.
  - Ex: `github_user_info(<nome do usuario no github>)`

