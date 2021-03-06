FROM netboxcommunity/netbox:v3.2

COPY plugin-requirements.txt plugin-requirements.txt

RUN apk --no-cache add xmlsec \
  && /opt/netbox/venv/bin/python3 -m pip install --upgrade \
    -r plugin-requirements.txt

COPY docker-entrypoint.sh /opt/netbox/docker-entrypoint.sh
RUN ["chmod", "+x", "/opt/netbox/docker-entrypoint.sh"]