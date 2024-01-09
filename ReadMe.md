## Executar dentro de um container

docker run -it --mount type=bind,source=/app,target=/app ubuntu bash

## Instale o pacote ImageMagick

```shell 
sudo apt install -y imagemagick
```

## Explicações

1. Suponha que seu script precise receber apenas um parâmetro passado pelo usuário. Como fazer para pegar o conteúdo desse parâmetro?

*R:* Para que seja possível pegar o conteúdo do primeiro parâmetro devemos referenciá-lo com o número 1 no nosso script, sendo precedido do símbolo `$`, ficando `$1``

2. Um novo desenvolvedor júnior entrou em sua equipe e ao analisar um script ele encontra um símbolo `$@`. Curioso, ele pergunta para você o que seria esse símbolo. O que você responderia?

*R:* O símbolo `$@` é utilizado para referenciar todos os parâmetros passados por um usuário para nosso script, sem precisar ao certo quantos parâmetros são.

3. No nosso script nós removemos o símbolo `$@` e inserimos `*.jpg`. O que seria exatamente o símbolo `*` e qual sua função nesse código?

*R:* O símbolo `*` trata-se de um metacaractere que é utilizado quando deseja-se referenciar que nesse campo podem existir qualquer caractere (ou nenhum) em qualquer quantidade. No exemplo, estamos buscando todos arquivos que terminam com `*.jpg`, não importando a quantidade de caracteres que venham antes

4. Uma nova desenvolvedora entrou em sua equipe e ela encontrou um código na internet com o seguinte trecho:

```shell 
awk -F. '{ print $1 }'
```

Ela sabe que entre outras funções o awk pode ser usado para processamento de texto, porém ela não sabe o que seria essa opção -F., então ela pergunta a você o que essa opção faz. Qual é a sua resposta?

*R:* A opção -F é usado quando queremos especificar um campo delimitador do parâmetro de texto passado. Nesse nosso exemplo, estamos "cortando" o parâmetro de texto passado onde tivermos o .

5. Um novo desenvolvedor entrou para sua equipe e você passou para ele analisar um script que precisa de algumas modificações. Em um trecho do script, seu novo desenvolvedor viu o seguinte código:

```shell
if [ $? -eq 0 ]
```

Ele não sabe dizer o que esse trecho está fazendo, então ele pergunta para você. O que você responderia?

*R:* O trecho do código está analisando o status de saída do comando anterior, se for 0 é porque o comando anterior foi executado com sucesso.