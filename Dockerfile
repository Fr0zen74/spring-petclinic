# Базовый образ Tomcat с поддержкой JDK 17
FROM tomcat:10.1-jdk17

# Удаляем стандартные веб-приложения, чтобы не мешали
RUN rm -rf /usr/local/tomcat/webapps/*

# Копируем .war-файл в Tomcat (имя petclinic.war → будет доступно на /petclinic)
COPY petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Указываем порт, который будет слушать контейнер
EXPOSE 8080

CMD ["catalina.sh", "run"]