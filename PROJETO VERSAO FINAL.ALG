algoritmo "Projeto"
// Fun��o :
// Autor : Maur�cio Marinho Mooura
// Data : 21/03/2018
// PROJETO de LPOO
var
   opcao, num1, num2, num3, num4, num5, num6, num7, num8, quantidade, idade:inteiro
   contador, x, primo, soma, cont, y:inteiro
   operacao, mediaf, mediam, media, masculino:real
   feminino, quantidadem, quantidadef, geral, mediag:real
   sexo:caracter
   z :caracter
   num, decimal :inteiro
   base:caracter
   b1, b2, b3, b4, b5, b6, b7, b8:real
   binario:real
   controle:caracter
   casos:inteiro

inicio
   repita // repeti��o para o usu�rio sempre voltar para o Menu

      escreval("Escolha uma op��o do menu")
      escreval("1.Soma")
      escreval("2.Subtra��o")
      escreval("3.Divis�o")
      escreval("4.Faixa et�ria")
      escreval("5.N�meros primos")
      escreval("6.Mudan�a de base")
      escreval("7.sair")
      leia(opcao)

      se (opcao=1)entao  //soma de dois n�meros
         escreval("Informe dois n�meros:")
         escreval("Informe o 1� n�mero:")
         leia(num1)
         escreval("Informe o 2� n�mero:")
         leia(num2)
         operacao<- num1 + num2
         escreval("A soma dos n�meros �:",operacao)
      fimse

      se(opcao=2)entao     //subtra��o de dois n�meros
         escreval("Informe dois n�meros:")
         escreval("Informe o 1� n�mero:")
         leia(num1)
         escreval("Informe o 2� n�mero:")
         leia(num2)
         operacao<- num1 - num2
         escreval("A subtra��o dos n�meros �:",operacao)
      fimse

      se(opcao=3)entao //divis�o de dois n�meros
         escreval("Informe dois n�meros:")
         escreval("Informe o 1� n�mero:")
         leia(num1)
         escreval("Informe o 2� n�mero:")
         leia(num2)
         repita
            se(num2=0) entao   // quando o N�mero (zero) e inserido como divisor trava o programa
                               //entao criei est� condi��o
               escreval("digite um valor diferente de -> 0")
               leia(num2)
            fimse
         ate(num2<>0) //fim da condi��o que n�o podera ser dividido nenhum n�mero por (zero)
         operacao<- num1/num2
         escreval("A divis�o dos n�meros �:",operacao)
      fimse

      se(opcao=4)entao
         //zerando as Vari�veis
         quantidadem <-0
         quantidadef <-0
         masculino <-0
         feminino <-0
         geral <-0
         escreval("Informe a quantidade de Pessoas!")
         leia(quantidade)
         para x de 1 ate quantidade passo 1 faca   //repeti��o para usu�rio inserir numero x de pessoas e ser feito o c�lculo da m�dia (masculina,feminina e geral).
            escreval("Informe a Idade")
            leia(idade)
            escreval (" DIGITE -> (m)  para Masculino ou -> (f)  para Feminino!")
            leia (sexo)
            se (sexo="m")entao
               quantidadem <- quantidadem + idade   //opere��o da media masculina
               masculino <- masculino + 1

               mediam <- quantidadem/masculino
            senao
               se(sexo="f") entao
                  quantidadef <- quantidadef + idade
                  feminino <- feminino + 1               //opera��o da media feminina
                  mediaf <- quantidadef/feminino
               fimse
            fimse
            geral <- idade + geral                  //opera��o da media geral
            mediag <- geral/ quantidade
         fimpara
         escreval ("A m�dia das idades �: ", mediag)
         escreval ("A m�dia das idades Masculinas �: ", mediam)
         escreval ("A m�dia das Idades Femininas �: ", mediaf)

      fimse
      se (opcao=5) entao
         escreval("digite um N�mero")
         leia(num1)
         escreval("os respectivos numeros primos sao")
         para y de 1 ate (num1) faca

            primo<-0   //zerando as vari�veis
            cont<-0
            para cont de 1 ate y faca
               se(y mod cont=0)entao //verificando se o N�mero � PRIMO
                  primo<-primo + 1
               fimse
            fimpara
            se (primo=2)entao
               Soma<- soma + y //somando os N�meros primos
               escreval("o n�mero primo �", y)
               escreval("")
               escreva("") //o programa n�o imprimia na tela corretamente tive de criar esses escrevas em branco
            fimse           //para imprimir corretamente
         fimpara
         escreval("A soma dos primos �", soma)
         escreval("")
         escreval("")
         soma<-0 // zerando a vari�vel para n�o acumular valor
      fimse
      se(opcao=6) entao

      escreval("Informe quantas vezes quer repetir")

             leia(casos)
             fimse
             para x de 1 ate casos passo 1 faca

            escreval("___________________________________________________")
            escreval("  Informe a Base que deseja fazer a convers�o")
            escreval(" -> d <- PARA (Decimal) e  -> b <- para (Binario)")
            escreval("___________________________________________________")
            leia(base)
            z<-controle  // vari�vel para n�o acumular valor nos resultados quando repitidos
            se (base="d") entao   // condi��o para tranformar n�meros decimais em binarios
               escreval("Entre com o N�mero decimal:")
               escreval("")

               leia(num)
               decimal <- num
               enquanto num > 0 faca    // repeti�ao para inserir um numero diferente de 0
                  se (num mod 2) = 0 entao  //condi��o para acrescentar resto 0 como caracter
                     z <- "0" + z
                  senao
                     z <- "1" + z       //condi�ao para acrescentar o resto 1 um como caracter
                  fimse
                  num <- num div 2

               fimenquanto

               escreval("A representa��o bin�ria de", decimal, " � ", z)

            fimse
            
         se (base="b") entao //condi�ao para transformar numeros binarios em decimais

            escreval("Informe o N�mero Binario ")
            escreval("")
            escreval("Caso o N�mero contenha menos de 8 digitos pressione Enter ")
            escreval("Para conter os espa�os em branco!! ")


            leia(num8)
            leia(num7)
            leia(num6)
            leia(num5)
            leia(num4)
            leia(num3)
            leia(num2)
            leia(num1)

            b1 <- num1 * 2^0
            b2 <- num2 * 2^1
            b3 <- num3 * 2^2
            b4 <- num4 * 2^3      //convers�o dos numeros binarios para decimal
            b5 <- num5 * 2^4
            b6 <- num6 * 2^5
            b7 <- num7 * 2^6
            b8 <- num8 * 2^7

            binario <- b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8

            escreval ("N�mero em decimal:", binario)
            fimse
           fimpara
   ate (opcao=7)  //fim da repeti��o do menu, o Usu�rio sai do programa.
   escreval(" end �_�")
fimalgoritmo



