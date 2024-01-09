## Executar dentro de um container

docker run -it --mount type=bind,source=/app,target=/app ubuntu bash

## Instale o pacote ImageMagick

```shell 
sudo apt install -y imagemagick
```

## Explicações

Suponha que seu script precise receber apenas um parâmetro passado pelo usuário. Como fazer para pegar o conteúdo desse parâmetro?
R: Para que seja possível pegar o conteúdo do primeiro parâmetro devemos referenciá-lo com o número 1 no nosso script, sendo precedido do símbolo $, ficando $1

Um novo desenvolvedor júnior entrou em sua equipe e ao analisar um script ele encontra um símbolo $@. Curioso, ele pergunta para você o que seria esse símbolo. O que você responderia?
R: O símbolo $@ é utilizado para referenciar todos os parâmetros passados por um usuário para nosso script, sem precisar ao certo quantos parâmetros são.