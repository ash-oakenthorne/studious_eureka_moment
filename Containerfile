FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN studious_eureka_moment create-db
RUN studious_eureka_moment populate-db
RUN studious_eureka_moment add-user -u admin -p admin
EXPOSE 5000
CMD ["studious_eureka_moment", "run"]
