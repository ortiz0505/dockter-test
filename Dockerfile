#PARTIR DE UNA IMAGEN
FROM node:14

#ESPACIO DE TRABAJO
WORKDIR /dockertest

#AÑADIR EL PACKAGE
ADD package.json package-lock.json /dockertest/
#INSTALAR DEPENDECIAS
RUN npm install
#COLOCAR EL CODIGO
ADD . /dockertest
#EXPOSE
EXPOSE 5000
#CORRER EL CONTENEDOR
CMD ["node", "app.js"]
