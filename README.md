# tomcat8-instance

Création de plusieurs instances tomcat8 sur une Debian 8.

## Création du livrable

```shell
dpkg-deb --build tomcat8-instance-8.0.28
```

## Installation du livrable

```shell
dpkg -i tomcat8-instance-8.0.28.deb
```

## Creation d'une instance


Usage: `tomcat8-instance-create [options] <instancename>`

- Options:

    - `-h` --help       Display this help message"
    - `-p` httpport      HTTP port to be used by Tomcat (default is $HPORT)"
    - `-a` ajpport       AJP port to be used by Tomcat (default is $APORT)"
    - `-c` controlport   Server shutdown control port (default is $CPORT)"
    - `-w` magicword     Word to send to trigger shutdown (default is $CWORD)"

- instancename: name of the tomcat instance to create

Exemple :

```shell
tomcat8-instance-create -p 8181 -a 8011 -c 9001 tomcat8-1
tomcat8-instance-create -p 8182 -a 8012 -c 9002 tomcat8-2
tomcat8-instance-create -p 8183 -a 8013 -c 9003 tomcat8-3
tomcat8-instance-create -p 8184 -a 8014 -c 9004 tomcat8-4
tomcat8-instance-create -p 8185 -a 8015 -c 9005 tomcat8-5
tomcat8-instance-create -p 8186 -a 8016 -c 9006 tomcat8-6
```

## tomcat8-build.sh

```shell
./tomcat8-build.sh
```

Lance la construction de 3 instances :
- Clean des instances
- Construction du deb
- Installation du deb
- Création des instances
- Démarrage des instances

## tomcat8-clean.sh

```shell
./tomcat8-build.sh tomcat8-1
```

Permet de supprimer une instance du serveur.


## Licence

`tomcat8-instance` est sous [licence cecill 2.1](./LICENCE.md).

Site web : [http://www.cecill.info](http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.html)

