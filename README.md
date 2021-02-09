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

4. Exercicio:

* Calculo de IMC

  - Verifica se seu peso está normal.
  - Ex: `calc_imc(<nome>, <altura>, <peso>)`

5. Exercicio:

* Contagem regressiva
  - Faz uma Contagem regressiva entre 2 números.
  - Ex: `countdown(<inicio da contagem>, <término da contagem>)`

6. Exercicio:

* Contar vogais
  - Faz uma contagem das vogais existentes em uma string.
  - Ex: `count_vowels(<string>)`

7. Exercicio:

* Validar cpf
  - Função para ver se um cpf é valido.
  - Ex: `validate_cpf(<cpf entre aspas>)`

8. Exercicio:

* Validar cep
  - Função para ver se um cep é valido.
  - Ex: `validate_cep(<cep entre aspas>)`

9. Exercicio:

* Decodificador de som
  - Função para decodificar o som do dj. Desafio do [CodeWars](https://www.codewars.com/kata/551dc350bf4e526099000ae5)
  - Ex: `songdecoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")`
