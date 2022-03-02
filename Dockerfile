FROM netboxcommunity/netbox:v3.1-1.6.0

COPY plugin-requirements.txt plugin-requirements.txt

RUN apk --no-cache add xmlsec \
  && /opt/netbox/venv/bin/python3 -m pip install --upgrade \
    -r plugin-requirements.txt