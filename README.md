# Dart

Estudos Em Dart Para utilizar o Dart vamos precisar da SDK
que podes baixar no site oficial do dart https://dart.dev/get-dart podendo baixar para Windows, Linux, MacOS, e lembrando se você tem flutter na sua maquina você já tem o SDK 

## Criando um Projeto em Dart
Para Criar um projeto em dart podemos dar esse comando:
~~~cmd
dart create (nome do Projeto)
~~~
ou criar um arquivo com a extenção .dart

e você pode passar um template para o seu projeto -t

Template:</br>
console</br>
package</br>
server-shelf</br>
web</br>

~~~cmd
dart create -t console (nome do Projeto)
~~~

o codigo principal está dentro da pasta bin para pode rodar o codigo prinpal em qualquer lugar do seu codigo vá para a pasta de configuração e coloque </br>
program": "bin/medio_dart.dart"


## Tipos de Dados

- Int: Numero Inteiros

- double: Numeros Flotuandes 

- String: Text

- bool: Verdadeiro ou Falso

- List e list<>: Lista arry e arry tipado

- Map - chave/valor: igual json

- constant: variavel que não altera o valor

- Dynamic: Variavel que não tem tipo especifico

- Date: que é data

### Função do Tipo Int

Essa função retorno verdadeiro se o numero for par (isEven)
~~~dart
print(numero.isEven);
~~~
Essa função retorno verdadeiro se o numero for impar (isOdd)
~~~dart
print(numero.isOdd);
~~~
Essa função retorno verdadeiro se o numero é finito (isFinite)
~~~dart
print(numero.isFinite);
~~~
Essa função retorno verdadeiro se o numero for infinito (infinity)
~~~dart
print(numero.infinity);
~~~
Essa função retorno verdadeiro se o numero é valido (isNaN)
~~~dart
print(numero.isNaN);
~~~
Essa função retorno verdadeiro se o numero é negativo (isNegative)
~~~dart
print(numero.isNegative);
~~~

Converte uma String para um numero (int.parse())
~~~dart
print(int.parse("10"));
~~~

e Caso tente converte um "string" para numero vc pode usar o (int.tryparce()) que se caso não consiga converte para inteiro vai retorno null
~~~dart
print(int.tryparse("Teste"));
~~~

### Função do Tipo bouble

Remover o ponto flutuante
~~~dart
print(numero.truncate());
~~~

Converte para Interio
~~~dart
print(numero.toInt());
~~~

Arredonda para Cima
~~~dart
print(numero.ciel());
~~~

Arredonda para Baixo
~~~dart
print(numero.floor());
~~~

Essa função retorno verdadeiro se o numero é finito (isFinite)
~~~dart
print(numero.isFinite);
~~~

Essa função retorno verdadeiro se o numero for infinito (infinity)
~~~dart
print(numero.infinity);
~~~

Essa função retorno verdadeiro se o numero é valido (isNaN)
~~~dart
print(numero.isNaN);
~~~

Essa função retorno verdadeiro se o numero é negativo (isNegative)
~~~dart
print(numero.isNegative);
~~~

Converte uma String para um numero (double.parse())
~~~dart
print(double.parse("10"));
~~~

e Caso tente converte um "string" para numero vc pode usar o (double.tryparce()) que se caso não consiga converte para inteiro vai retorno null
~~~dart
print(double.tryparse("Teste"));
~~~

### Função do Tipo String

Verificar se está vaziu(isEmpty)
~~~dart
print(text.isEmpty);
print("".isEmpty); True
print(" ".isEmpty); False
~~~

Obtem o Tamanho da String (length)
~~~dart
print(texto.length);
~~~

Converte para Maiuscula e Minuscula
~~~dart
print(texto.toUpperCase()); Maiuscula
print(texto.toLowerCase()); Minuscula
~~~

se um String está dentro da outro (contains)
~~~dart
print(texto.contains(texto1));
~~~

Obtem partes da String (substring())
~~~dart
print(texto.substring(5)); pega da posição 5 até o final
print(texto.substring(1,5)); pega a posição 1 até a 5
~~~

Obtem a Posição de um texto na String (indexOf("Texto")) retorna a posição que começa o texto
~~~dart
String texto = "Dart Linguagem";
print(texto.indexOf("Dart"));
print(texto.indexOf("@"));
~~~

Trocar um texto por outro replaceAll("texto","Texto2")
~~~dart
String texto = "Dart Linguagem";
print(texto.replace("Dart", "Python")); vai trocar Dart por Python
~~~

Quebra a String por um caracter especifico(split(""))
~~~dart

print("nome;telefone;cep".split(";")); vai quebra toda vez que aparece ;
~~~

remove os Espaços (trim())
~~~dart
print("  texto  ").trim()
print("  texto  ").trimLeft()
print("  texto  ").trimRight()
~~~

### Função do Tipo Boolean

é False ou True por padrão ela vem false 

negação para inverter o valor Boolean
~~~dart
print(!true); vai printar false
~~~

### Função do Tipo List

Listas
~~~dart
List<String> lstString = [];
var ltsInt = [1,10,12];
List lstDynamic = [];
~~~

Ver o Tamanho da Lista (length)
~~~dart
print(ltsString.length);
print(ltsInt.length);
print(ltsDynamic.length);
~~~

Adicionar Item na Lista
~~~dart
ltsString.add("ABC");
ltsInt.add(1);
ltsDynamic.add("a");
ltsDynamic.add(10);
ltsDynamic.add(1.2);
ltsDynamic.add(true);
~~~

Remover Item da Lista
~~~dart
ltsString.remove("M");
ltsInt.remove(10);
lysDynamic.remove(1.2);
~~~

Ver se a a lista está vazia (isEmpty) e se não está vaziu (isNotEmpty)
~~~dart
print(ltsString.isEmpty);
print(ltsInt.isNotEmpty);
~~~

Verefica se tem um valor na lista (contains(valor))
~~~dart
print(ltsString.contains("ABC"));
print(ltsDynamic.contains(false));
~~~

função where na lista
~~~dart
var ltsInt = [10,90,50,12,23]
print(ltsInt); #Printa 10,90,50,12,23
print(ltsInt.where(x) => x > 9 && x < 50);
# vai printar somente os numero maior que 9 e menor que 50
# Exibindo 10,12,23
~~~

### Trabalhando com o Map

Map
~~~dart
Map<String, dynamic> map1 = Map<String, dynamic>();
var map = {"zero": 0 , "one":1 , "two": 2};

print(map1);
print(map);
~~~

Obtendo Valor do map
~~~dart
var map = {"zero": 0 , "one":1 , "two": 2};
print(map["one"])
#Vai printar 1 
~~~

Adicionar Varios Item de um vez no Map
~~~dart
map.addAll({"ten": 10 , "eleven": 11});
~~~

Verificar se Está Vaziu(isEmpty) ou não está Vaziu (isNotEmpty)
~~~dart
print(map.isEmpty);
print(map.isNotEmpty);
~~~

Retorno o tamanha do map(length)
~~~dart
print(mapp.length);
~~~

Verificar se tem um valor dentro no map Chaves (containsKey(valor))

~~~dart
print(map.containsKey("one"));
~~~

### Tipos de Dados Constantes


uma Contante é uma variavel que não muda o seu valor
~~~dart
const String nome = "Vitor";
~~~

### Tipos de Dados Dynamic

Dynamic é um tipo de variavel que pode receber qualquer tipo de falor

~~~dart
dynamic var1 = "abc";
var1 = 10;
var1 = 1.2;
var1 = true;
var1 = DateTime(2022, 11, 02);
var1 = [1, true, "Texto"];

~~~

### Tipos de Dados Date e DateTime

Varival do tipo dete é para amazenar datas

~~~dart
DateTime data1 = DateTime.now();#Obtem a data atual
data1 = DateTime.parse("2022-02-01 00:00:00");
~~~

Obtendo as Partes das Datas
~~~dart
print(data1); #Retorna a Data Toda
print(data1.day); #Retorna o Dia
print(data1.month); #Retorna o Mês
print(data1.year); #Retorna o Ano
print(data1.hour); #Retorna o Horas
print(data1.minute); #Retorna o Minutos
print(data1.second); #Retorna o Segundos

print(data1.weekday); #Retorna o o Dia da Semana
~~~

Soma de Datas
~~~dart
print(data1.add(Duration(days: 1))) # Adicona 1 dia na data
print(data1.subtract(Duration(hours: 1))); #Subtrai 1 hora
~~~

Comparação de Datas
~~~dart
var data2 = DateTime("2022-01-02 00:00:00")
print(data1.isAfter(data2)):
print(data1.isBefore(data2)):
print(data1.compareTo(data2));
~~~