# tomcat8-instance

Création de plusieurs instances tomcat8 sur une Debian.

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
tomcat8-instance-create -p 8081 -c 8006 -a 8009 tomcat8-1
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

applitutoriel-service est sous [licence cecill 2.1](./LICENCE.md).

Site web : [![http://www.cecill.info](http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.html)](http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.html)

