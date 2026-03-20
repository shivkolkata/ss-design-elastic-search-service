FROM docker.elastic.co/elasticsearch/elasticsearch:8.10.0
ENV discovery.type=single-node
EXPOSE 8080
CMD ["elasticsearch", "-Ehttp.port=8080", "-Enetwork.host=0.0.0.0", "-Expack.security.enabled=false"]