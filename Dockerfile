FROM netboxcommunity/netbox:v3.1-1.6.0

RUN apk --no-cache add xmlsec \
  && /opt/netbox/venv/bin/python3 -m pip install --upgrade \
    django3-auth-saml2 \
    netbox-plugin-auth-saml2