## Challenge 3 - Loadbalancing VMs and Containers with NGinx

Le livrable doit être pushé sur votre dépôt personnel GitHub/GitLab en m'envoyant une invitation me donnant le droit d'y accéder.

**Objectifs du challenge :**
-   S'initier aux fonctionnalités de Nginx : loadbalancing, SSL    
-   Savoir configurer une infra à base VM ainsi que son équivalent à base de Conteneurs Docker    
-   Configurer TLS/SSL sur Nginx
-----

#### Task1:

Configurer une infrastructure composée de 3 VMs Linux:

1 VM jouera le rôle du loadbalanceur Nginx et les deux autres joueront le rôle d'agents backends.
Utiliser Hashicorp Vagrant pour créer toute l'infra et son provisionnement.

Estimation de la durée de réalisation : 1 heure.

Indications :
[https://youtu.be/SpL_hJNUNEI](https://youtu.be/SpL_hJNUNEI),
[https://redgreenrepeat.com/2018/06/01/nginx-load-balancer-configuration/](https://redgreenrepeat.com/2018/06/01/nginx-load-balancer-configuration/)

Mise en place de l'exercice: 
- Télécharger le dossier Task1, créer 3 dossiers vides à l'intérieur:  loadBalancer, agent-1-backend, agent-2-backend
- Au niveau du Vagrantfile, faites un `vagrant up` dans la console.
- Lorsqu'il à terminé, effectuer les tests du loadbalancer à l'aide de la console:  
-- Lancer une commande: `vagrant ssh balancer -c 'curl 192.168.100.11; curl 192.168.100.12;'` ou vous verrez les 2agents: agent1 et agent2 s'afficher. 
-- Entrer plusieurs x de suite `curl localhost:8081` et vous verrez s'afficher successivement  agent1, agent2, agent1, agent2 qui prouve que loadbalancing à bien été mis en place sur la machine 'balancer' et que le driver par défaut est bien le round-robin (qui change successivement d'un serveur à l'autre). 
-- Dans un navigateur, ouvrez l'url: http://localhost:8081 et faite 'entrée' plusieurs fois d'affilés

-----
#### Task2:
Recréer l'infrastructure de la Task 1 en utilisant, cette fois ci, des conteneurs Docker.

Il faut donc 3 conteneurs, l'un jouant le rôle de loadbalancer et les deux autres le rôles d'agents de backend.
Faire le travail, dans une première étape, sans docker-compose,
Puis le faire avec docker-compose.
Estimation de la durée de réalisation : 1 heure.

Indications :
[https://www.bogotobogo.com/DevOps/Docker/Docker-Compose-Nginx-Reverse-Proxy-Multiple-Containers.php](https://www.bogotobogo.com/DevOps/Docker/Docker-Compose-Nginx-Reverse-Proxy-Multiple-Containers.php)

Mise en place de l'exercice:
- sans Docker-compose: 

#### EN COURS
          
- Avec Docker-compose: 

Copier le dossier dans le dossier Task2-DockerCompose: à l'intérieur se trouve le Python_project,  en faisant un git clone dans un répertoire en local. 
Lancer votre Docker-Desktop
Dans le répertoire du projet: click droit > open in vscode pour ouvrir le projet dans VSCode , CTRL + J pour ouvrir le terminal ** 

** si vous n'avez pas vscode, ouvrez juste une console à la racine du projet.

Dedans,  entrez `docker-compose build`  pour compiler le code. Ensuite, faites un `docker-compose up` , RV dans votre navigateur et entrer : http://localhost:8080 et faites plusieurs F5 d'affilé pour voir le loadbalancer en action et voir le message de la page changer: 'This is App2 :)' - 'This is App2 :)'. 
Vous pouvez aussi voir le load balancer dans Docker Destop

---
#### Task3:
Ajouter la fonctionnalité SSL avec des clés auto-signés au nœud Loadbalanceur NGinx
Estimation de la durée de réalisation : 1 heure

Indications :
 [https://youtu.be/X3Pr5VATOyA](https://youtu.be/X3Pr5VATOyA)
[https://www.johnmackenzie.co.uk/posts/using-self-signed-ssl-certificates-with-docker-and-nginx/](https://www.johnmackenzie.co.uk/posts/using-self-signed-ssl-certificates-with-docker-and-nginx/)
[https://www.youtube.com/watch?v=SpL_hJNUNEI](https://www.youtube.com/watch?v=SpL_hJNUNEI)


Mise en place de l'exercice:
 
 --  Cloner le fichier task3 et dans ce même folder, faites un `vagrant up` depuis la console. 3 VM sont chargées. 

#### EN COURS
 
 





