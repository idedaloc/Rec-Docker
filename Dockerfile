FROM centos

RUN yum install -y java

VOLUME /tmp/sdf
ADD /restful-web-services-0.0.1-SNAPSHOT.jar myapp.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/myapp.jar"]
