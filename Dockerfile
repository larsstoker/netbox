FROM netboxcommunity/netbox:v3.2.0-1.6.1

COPY plugin-requirements.txt plugin-requirements.txt

RUN apk --no-cache add xmlsec \
  && /opt/netbox/venv/bin/python3 -m pip install --upgrade \
    -r plugin-requirements.txt

COPY docker-entrypoint.sh /opt/netbox/docker-entrypoint.sh