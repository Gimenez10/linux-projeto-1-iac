#!/bin/bash

echo "Criando diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios."

useradd carlos -c "Carlos Nascimento" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_ADM
useradd maria -c "Maria dos Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_ADM
useradd joao -c "Joao Nascimento Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_ADM

useradd debora -c "Debora Da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_VEN
useradd sebastiana -c "Sebastiana Silva Santos" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_VEN
useradd roberto -c "Roberto Da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_VEN

useradd josefina -c "Josefina Alcantara" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_SEC
useradd amanda -c "Amanda Roberta Alcantara" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_SEC
useradd rogerio -c "Rogério Alcantara" -m -s /bin/bash -p $(openssl passwd -crypt Senha1230) -G GRP_SEC


echo "Especificando permissões dos diretórios.."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando .."
