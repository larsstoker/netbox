# Netbox

## Included plugins
- [netbox-plugin-auth-saml2](https://github.com/jeremyschulman/netbox-plugin-auth-saml2) by [Jeremy Schulman's](https://github.com/jeremyschulman)
- [nextbox-ui-plugin](https://github.com/iDebugAll/nextbox-ui-plugin) by [Igor Korotchenkov](https://github.com/iDebugAll/)

## How to use

### Create the Netbox and NGINX folders
```Bash
mkdir netbox/ nginx/
```

### Clone the Netbox repo
```Bash
git clone -b release https://github.com/netbox-community/netbox-docker.git ./netbox/
```

### Copy the NGINX config to the NGINX folder
```Bash
cp ./proxy.conf ./nginx/
```

### Modify the Netbox configuration file
Edit the `Configuration.py` to enable and configure the plugins.

```Python
PLUGINS = ['django3_saml2_nbplugin', 'nextbox-ui-plugin']
```

#### SAML2 Authentication
Please refer to [this page](https://github.com/jeremyschulman/netbox-plugin-auth-saml2#netbox-configuration) for more information.

#### Topology Plugin
Please refer to [this page](https://github.com/iDebugAll/nextbox-ui-plugin#enable-the-plugin) for more information.

## Rename the example docker-compose file and run
```Bash
mv ./docker-compose.yml.example ./docker-compose.yml
docker-compose up
```