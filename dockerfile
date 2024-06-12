# Utiliza una imagen base con Java
FROM java:openjdk-8u111-jdk-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY dist/Biblio_Source.jar /app

# Comando para ejecutar la aplicación al iniciar el contenedor
CMD ["java", "-jar", "Biblio_Source.jar"]