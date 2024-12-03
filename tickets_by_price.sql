# Query de Análise de Tickets por Faixa de Preço 🎫

Este repositório contém uma consulta SQL que classifica os tickets em faixas de preço (baixo, médio e alto) e calcula a quantidade total de tickets em cada faixa. É uma demonstração prática do uso de **subconsultas**, **cláusulas CASE**, e **operações de agrupamento** no dia a dia de um analista de dados.

## 💡 Contexto

A consulta foi projetada para cenários em que é necessário:
- Classificar registros com base em regras definidas (ex.: faixas de preço).
- Obter uma visão agregada sobre os dados (ex.: quantos registros pertencem a cada categoria).

### Exemplo de uso:
- **Indústria de viagens**: análise de vendas de passagens.
- **E-commerce**: categorização de produtos por faixa de preço.
- **Financeiro**: segmentação de transações por valores.

---

## 📋 Estrutura da Query

A query realiza os seguintes passos:
1. **Classificação de Tickets**:  
   Usa uma subconsulta para classificar os valores dos tickets em três categorias: 
   - `low price ticket`: valor menor que 20.000.
   - `mid price ticket`: valor entre 20.000 e 150.000.
   - `high price ticket`: valor maior que 150.000.

2. **Contagem por Categoria**:  
   A consulta principal agrupa os tickets por categoria de preço e conta a quantidade total em cada uma.

---

## 🚀 Instruções para Uso

1. **Pré-requisitos**:
   - Banco de dados que contém uma tabela chamada `bookings`.
   - A tabela deve possuir as colunas:
     - `book_ref`: Referência única do ticket.
     - `total_amount`: Valor total do ticket.

2. **Execução**:
   - Copie o código SQL do arquivo [`tickets_by_price.sql`](tickets_by_price.sql).
   - Execute no seu banco de dados utilizando uma ferramenta como:
     - [DBeaver](https://dbeaver.io/),
     - [MySQL Workbench](https://dev.mysql.com/downloads/workbench/), ou
     - Interface de linha de comando SQL.

3. **Resultado esperado**:
   A query retornará uma tabela com duas colunas:
   - `ticket_price`: Categoria do ticket.
   - `ticket_count`: Número total de tickets em cada categoria.

---

## 📂 Estrutura do Repositório

- **`tickets_by_price.sql`**: Código SQL da consulta.
- **`README.md`**: Documento com explicação da lógica e instruções.

---

## 🛠️ Personalização

- **Alterar limites de preço**:  
  Atualize os valores nas condições do bloco `CASE` conforme necessário.
- **Adicionar novas categorias**:  
  Inclua novas condições no `CASE` para criar faixas adicionais.

---

## 📖 Referências

- [Documentação SQL CASE](https://www.w3schools.com/sql/sql_case.asp)
- [Operação GROUP BY](https://www.w3schools.com/sql/sql_groupby.asp)

---

## 📬 Contato

Caso tenha dúvidas ou sugestões, sinta-se à vontade para abrir uma **issue** ou enviar um **pull request**. 😊
