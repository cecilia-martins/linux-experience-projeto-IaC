
#!/bin/bash
echo "Desafio de projeto: IaC - Script de criação de estrutura de usuarios, diretorios e permissões"
## echo "Excluir diretorios, arquivos"
## rm -rf /home/liah/*.txt  # excluir arquivos/pastas 
## echo "Excluir grupos e usuarios"
## userdel -r -f <usuario> # excluir usuario
## groupdel <group> # excluir grupo

## criando pasta do script
mkdir script && cd script
## criando diretorios do desafio
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
## criando grupos de  usuarios
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
## criando usuarios e já adicionando aos grupos
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd carlos -e -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd maria -e -G GRP_ADM
useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd joao -e -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passdw debora -e -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passdw sebastiana -e -G GRP_VEN
useradd Roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd roberto -e -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd josefina -e -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd amanda -e -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) passwd rogerio -e -G GRP_SEC

echo "root é o paizão :)"
## permissões do diretorio
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
