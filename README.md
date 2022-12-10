# Desafio Docker go

Nesse desafio, para geração da imagem final. 
Foi aplicado o processo de multistage, utilizando uma imagem scratch para conseguir o resultado esperado, que é uma imagem  menor que 2MB.

O dockerhub disponibiliza essa imagem vazia em :
**[Docker image scratch](https://hub.docker.com/_/scratch)**

## Ambiente
Para executar esse projeto é necessário possuir o Docker instalado e configurado.

## Construindo a imagem a partir do docker file
> docker build -f Dockerfile -t hello-go .

## Executando imagem criada
> docker run hello-go

A imagem gerada está disponivel em : 
**[devrsales/fullcycle](https://hub.docker.com/r/devrsales/fullcycle)**