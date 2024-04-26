Algoritmo "LOJA_DE_ROUPAS"

Var
   itemRoupa: vetor[1..4] de caracter
   preco: vetor[1..4] de real
   valor_total_item: vetor[1..4] de real
   quantidade: vetor [1..4] de inteiro
   qnt_item: inteiro
   i, opcao, opcaoItem, continuar: inteiro
   soma_total, desconto: real
   nomeCliente : caracter
   telefone: caracter
   pagamento: inteiro

Inicio

   //definindo valores dos vetores
   itemRoupa[1] <- "Camisa"
   preco[1] <- 29.99
   quantidade[1] <- 10
   itemRoupa[2] <- "Calça"
   preco[2] <- 69.99
   quantidade[2] <- 10
   itemRoupa[3] <- "Bermuda"
   preco[3] <- 39.99
   quantidade[3] <- 10
   itemRoupa[4] <- "Boné"
   preco[4] <- 19.99
   quantidade[4] <- 10

   Escreval("Loja de Roupas:")

   //repita para validar o menu
   Repita
      Escreval("")
      Escreval("1 - Consultar Estoque")
      Escreval("2 - Realizar vendas do Item")
      Escreval("3 - Fazer o recebimento da venda")
      Escreval("4 - Sair")
      Leia(opcaoItem)
      Escreval("")

      //caso a opção 1 for selecionada
      Se(opcaoItem=1) Entao
         Escreval("Estoque: ")

         //para : para percorrer todos os vetores e listar o estoque
         Para i de 1 ate 4 faça
            Escreval(itemRoupa[i], "   ", quantidade[i], "   ", preco[i])
         Fimpara
      Fimse

      //caso a opção 2 for selecionada
      Se(opcaoItem=2)Entao

         //escreval pede as informações do cliente
         Escreval("Informe o seu nome: ")
         Leia(nomeCliente)
         Escreval("Informe o seu telefone: ")
         Leia(telefone)
         Escreval("")

         //repita para continuar comprando
         Repita

            //repita para validar os itens comprados
            Repita
               Escreval("Informe o número do item que deseja.")
               Escreval("1. Camisa - R$29.99")
               Escreval("2. Calça - R$69.99")
               Escreval("3. Bermuda - R$39.99")
               Escreval("4. Boné - R$19.99")
               Leia(opcao)
            Ate (opcao > 0) E (opcao < 5)

            Escreval("")

            //pede a quantidade de itens
            Repita
               Escreval("Informe a quantidade de itens que deseja:")
               Leia(qnt_item)
               Escreval("")
               Se(qnt_item > quantidade[opcao])entao
                  Escreval("Quantidade de itens maior que o estoque, NÃO PODE!!!")
               Fimse
            Ate(qnt_item < quantidade[opcao])


            //cada se calcula o subtotal de cada item do vetor
            Se (opcao = 1) Entao
               valor_total_item[1] <- qnt_item * 29.99
               quantidade[1] <- quantidade[1] - qnt_item
            Senao
               Se (opcao = 2) Entao
                  valor_total_item[2] <- qnt_item * 69.99
                  quantidade[2] <- quantidade[2] - qnt_item
               Senao
                  Se (opcao = 3) Entao
                     valor_total_item[3] <- qnt_item * 39.99
                     quantidade[3] <- quantidade[3] - qnt_item
                  Senao
                     valor_total_item[4] <- qnt_item * 19.99
                     quantidade[4] <- quantidade[4] - qnt_item
                  Fimse
               Fimse
            Fimse
            //pergunta se quer comprar outro item
            Escreval("Continuar comprando?")
            Escreval("1. Sim")
            Escreval("2. Não")
            Leia(continuar)
            Escreval("")
         Ate(continuar = 2)
      Fimse

      //caso a opção 3 for selecionada
      Se(opcaoItem=3)Entao

         Escreval("_____________________________________________")
         Escreval("")

         //pergunta a forma de pagamento
         Escreval("Qual sua forma de pagamento?")
         Repita
            Escreval("1 - Cartão de Crédito")
            Escreval("2 - Cartão de Débito")
            Escreval("3 - Pix")
            Escreval("4 - Dinheiro (10% de DESCONTO)")
            Leia(pagamento)
         Ate(pagamento>0) e (pagamento<5)

         //caso forma de pagamento escolhida for dinheiro, calcula o desconto
         Se(pagamento=4)entao
            //percorre o subtotal de cada item e armazena em um acumulador
            para i de 1 ate 4 faca
               soma_total <- soma_total + valor_total_item[i]
            fimpara
            desconto <- soma_total * 0.1
            Escreval("")
            soma_total <- soma_total - desconto
         Fimse

         Escreval("_____________________________________________")
         //extrato mostra as informações do cliente e lista os itens
         Escreval("EXTRATO DA CONTA")
         Escreval("")
         Escreval("Nome: ", nomeCliente)
         Escreval("Telefone: ", telefone)
         Escreval("")
         Escreval("ITENS:")

         //percorre os vetores e lista o subtotal
         Para i de 1 ate 4 Faca
            Escreval(itemRoupa[i], "   R$",preco[i]:2:2, "   Subtotal R$",valor_total_item[i]:2:2)
         Fimpara

         Escreval("")
         Escreval("DESCONTO PARA PAGAMENTO EM DINHEIRO DE 10%: R$", desconto:2:2)
         Escreval("TOTAL: R$", soma_total:2:2)
         Escreval("")
      Fimse

   ate(opcaoItem=4)

Fimalgoritmo