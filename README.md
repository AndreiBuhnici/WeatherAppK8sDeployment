Membrii echipei: Andrei-George Buhnici, Ion-Irinel Dinu, Nicanor Mihaila
Proiectul deployat: https://github.com/rohitv0909/weather-app/tree/main

1. Descriere proiect deployat:
- contine 4 api-uri: User, Dashboard Meteo, Locatii meteo favorite si Frontend;
- baza de date folosita este mysql;
- am modificat putin proiectul, deoarece am avut probleme legate de dependinte
 si versiuni vechi, dar overall e la fel;

2. Descriere pasi urmati:
- am facut Dockerfiles pentru toate api-urile, pentru a crea imagini si le-am dat
push in registry-urile noastre de pe docker hub;
- pentru java am folosit ca imagine de baza openjdk:18, iar pentru frontend(angular)
am folosit node:16.20.0;
- pentru mysql, phpmyadmin si portainer existau deja imagini deci doar le-am 
folosit;
- inainte de a crea imaginile a trebui sa modificam adresele folosite pentru
conexiunea endpoint-urilor cu numele pe care le-am pus la servicii in 
clusterul de k8s;
- dupa ce am creat imaginile ne-am apucat de template-urile pentru k8s;
- template-urile de backend constau in 2 componente, deployment si un service 
de tip clusterIP pentru a expune port-urile folosite intre poduri;
- mysql si portainer au avut nevoie de un PV si PVC pentru stocarea datelor in
cazul in care se inchid podurile;
- la frontend, phpmyadmin si portainer am folosit un service de tip LoadBalancer
pentru a putea accesa pod-urile din exteriorul clusterului, si folosesc security
group-ul control plane-ului;
- dupa ce am testat local ca template-urile sunt valide(service de tip NodePort),
am luat fisierele pentru construirea clusterului in aws din laborator si am
modificat security group-urile astfel incat sa mearga conexiunile;

3. Impartirea task-urilor:
- ne-am impartit crearea de imagini si de template-uri k8s egal, iar partea de
terraform a fost luata din laborator;