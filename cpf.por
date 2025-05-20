programa
{
    inclua biblioteca Texto
     inclua biblioteca Tipos
	
	funcao inicio()
	{
   //calcula os digitos verificadores do cpf : 123.456.789-09
    inteiro cpf[] = {1,2,3,4,5,6,7,8,9,0,9}
    inteiro cpf1[10], cpf2[11], mult1[] = {10,9,8,7,6,5,4,3,2,1},
    mult2[] ={11,10,9,8,7,6,5,4,3,2,1}
    inteiro soma = 0, resto, num1, num2, multiplicador

    //vamos calcular o digite do verificador 

    para(inteiro i =0; i < 9; i ++){
    	soma  +=  cpf[i] * mult1[i]
    } 
       resto = soma % 11 
       num1 = 11 - resto
       se(num1 >= 10){
       	num1 = 0
       }
       cpf[9] = num1
       soma = 0
     // vamos calcular segundo digito verificcador
     para(inteiro i = 0; i < 10; i++){
     	soma += cpf[i] * mult2[i]
     }
       resto = soma % 11
       num2 = 11 - resto 
       se(num2 >= 10){
       	num2 = 0
       } 
       cpf[10] = num2
     //monstra o cpf completo
     escreva("digite o numero do cpf eh : ")
     para(inteiro i = 0; i < 11; i++){
     	escreva(cpf[i])
     	se(i == 2 ou i == 5){
     		escreva(".")
     	}
     	se( i == 8){
     		escreva("-")
        }
  }
  }
}
