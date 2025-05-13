# Usa uma imagem oficial do PHP
FROM php:8.2-cli

# Define a pasta onde o app vai rodar
WORKDIR /app

# Copia tudo do seu projeto para dentro do container
COPY . /app

# Expõe a porta que o Render exige (10000)
EXPOSE 10000

# Inicia o servidor PHP embutido, servindo arquivos da pasta atual
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]
