# BudgeTeer

<img src="https://raw.githubusercontent.com/rix1337/BudgeTeer/main/budgeteer/web_interface/vuejs_frontend/public/favicon.ico" data-canonical-src="https://raw.githubusercontent.com/rix1337/BudgeTeer/main/budgeteer/web_interface/vuejs_frontend/public/favicon.ico" width="64" height="64" />

Dies ist das offizielle Docker-Image von BudgeTeer.

Einfacher Überblick über das eigene Budget 

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/rix1337/docker-budgeteer)
![Docker Pulls](https://img.shields.io/docker/pulls/rix1337/docker-budgeteer)
[![PyPI - Downloads](https://img.shields.io/pypi/dm/budgeteer)](https://github.com/rix1337/BudgeTeer/releases)
[![Github Sponsorship](https://img.shields.io/badge/support-me-red.svg)](https://github.com/users/rix1337/sponsorship)
[![GitHub license](https://img.shields.io/github/license/rix1337/BudgeTeer.svg)](https://github.com/rix1337/BudgeTeer/blob/main/LICENSE.md)
[![GitHub stars](https://img.shields.io/github/stars/rix1337/BudgeTeer.svg)](https://github.com/rix1337/BudgeTeer/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/rix1337/BudgeTeer.svg)](https://github.com/rix1337/BudgeTeer/network)


# Starten

```
docker run -d \
  --name="BudgeTeer" \
  -p port:2808 \
  -v /path/to/config/:/config:rw \
  --log-opt max-size=50m \
  rix1337/docker-budgeteer
  ```
  
# Spezifische Version nutzen

Das Image `rix1377/docker-budgeteer` wird standardmäßig auf das `:latest`-Tag aufgelöst. Dieses wird mit jedem Release auf die neue Version aktualisiert. Mit jedem Release wird ebenfalls eine getaggte Version des Images erzeugt. Auf letztere kann man wechseln, um beispielsweise bei Fehlern in der neuen Version auf einen funktionierenden Stand zurück zu kehren.

Beispiel:

`docker pull rix1337/docker-budgeteer:0.0.2`
