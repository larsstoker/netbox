# Netbox

## Included plugins
- [netbox-plugin-auth-saml2](https://github.com/jeremyschulman/netbox-plugin-auth-saml2) by [Jeremy Schulman's](https://github.com/jeremyschulman)
- [netbox-topology-views](https://github.com/mattieserver/netbox-topology-views) by [Mattieserver](https://github.com/mattieserver)

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
PLUGINS = ['django3_saml2_nbplugin', 'netbox_topology_views']
```


#### SAML2 Authentication
Please refer to [this page](https://github.com/jeremyschulman/netbox-plugin-auth-saml2#netbox-configuration) for more information.

## Rename the example docker-compose file and run
```Bash
mv ./docker-compose.yml.example ./docker-compose.yml
docker-compose up
```