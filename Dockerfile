FROM docker.elastic.co/elasticsearch/elasticsearch:8.10.0

# Critical for Cloud Run: Disable memory mapping bootstrap check
ENV node.store.allow_mmap=false
ENV discovery.type=single-node
ENV xpack.security.enabled=false

# Cloud Run injects the PORT env var; we use it here
EXPOSE 8080

# Use a single CMD string to ensure arguments are passed correctly
CMD ["elasticsearch", "-Ehttp.port=8080", "-Enetwork.host=0.0.0.0"]
