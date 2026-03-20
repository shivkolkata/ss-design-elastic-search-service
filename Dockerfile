FROM docker.elastic.co/elasticsearch/elasticsearch:8.10.0

# Essential environment variables
ENV discovery.type=single-node
ENV xpack.security.enabled=false
ENV node.store.allow_mmap=false

# Bypass the system checks that fail on Cloud Run
# -Ebootstrap.system_call_filter=false is CRITICAL
CMD ["elasticsearch", "-Ehttp.port=8080", "-Enetwork.host=0.0.0.0"]
