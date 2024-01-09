#!/bin/bash

CAMINHO_IMAGENS='./imagens-livros'

for imagem in $@ 
do
  convert ./$CAMINHO_IMAGENS/$imagem.jpg ./imagens-livros/$imagem.png
done