#!/data/data/com.termux/files/usr/bin/bash

echo "🦠 Mise à jour de Termux..."
pkg update -y && pkg upgrade -y

echo "👾 Installation de Git et Python..."
pkg install git python -y

echo "👾 Clonage du projet Vendroz-Ai..."
git clone https://github.com/mikael-techDev/Vendroz-Ai.git
cd Vendroz-Ai || exit

echo "👾 Lancement du serveur local sur le port 8000..."
python3 -m http.server 8000 &

echo "🦠 Accède à mon projet ici : http://localhost:8000"
