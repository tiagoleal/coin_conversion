<p align="center">
  <a href="https://onebitexchange-tleal.herokuapp.com/">
   <img alt="Coin Convertion" src="https://github.com/tiagoleal/coin_conversion/blob/master/public/logo_novo2.png?raw=true" width="250">
  </a>
</p>
<p align="center">  Easily convert your currencies to any currency in the World! </p>

<p align="center">
<a href="https://github.com/tiagoleal/coin_conversion">
	<img alt="Current Version" src="https://img.shields.io/badge/version-1.0.0 -blue.svg">
</a>
 <a href="https://www.codeship.io/projects/318900">
  <img alt="Codeship Status" src="https://app.codeship.com/projects/8cf882a0-e2b7-0136-b148-5e3361b0d88e/status?branch=master" target="_blank">
  </a>
  <a href="https://ruby-doc.org/core-2.5.1/">
	<img alt="Ruby Version" src="https://img.shields.io/badge/Ruby-2.5.1 -green.svg" target="_blank">
</a>
<a href="https://guides.rubyonrails.org/5_2_release_notes.html">
	<img alt="" src="https://img.shields.io/badge/Rails-~> 5.2.2-blue.svg" target="_blank">
 </a>
  
  </p>

Performs the conversion of an amount X of one currency (for example BRL) into a corresponding amount of another (for example EUR).


## Screenshot
<p align="center">
  <a href="https://onebitexchange-tleal.herokuapp.com/"><img alt="Coin Convertion" src="https://github.com/tiagoleal/coin_conversion/blob/master/public/app.png?raw=true" width="720px"></a>
</p>

## Stack the Project

* **Yarn**
* **Rest-client**
* **Postgresql**
* **Codeship**
* **Rspec**
* **PWA**
* **Heroku**

## Features

* **Convert to Bitcoin:** Realize the conversion of the selected coin for bitcoin.
* **Mobile App:** The app has support a Progressive Web App(PWA).

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites 
You must have installed on your machine:
- Docker
- Docker Compose

### Installing
First step is to install the docker service:
```bash
#Linux: ubuntu,Mint
$ sudo apt-get update
$ sudo apt-get install docker-ce
$ sudo apt install docker-compose

# Fedora(27,28,29)
$ sudo dnf update -y
$ sudo dnf install docker-ce
$ sudo dnf -y install docker-compose
```
For test if the service was installed with succeed, you can run the command for to check de version of docker:
```bash
$ docker --version
#Must be have the docker version: Docker version 18.06.0-ce 
$ docker-compose --version
#Must be have the docker-compose version: docker-compose version 1.22.0
```

## First steps
Follow the instructions to have a project present and able to run it locally.
After copying the repository to your machine, go to the project's root site and:
1.  Construct the container
```
docker-compose build
```
2.  Create of Database
```
docker-compose run --rm app bundle exec rails db:create
```
3.  Up the project
```
docker-compose up
```
4. Without turning off the server, open a new window and run the migrations
```
docker-compose run --rm app bundle exec rails db:migrate #if necessary populate database
```

## Running the tests
To run the tests, you must run the docker container through the command:
```
docker-compose run --rm app bundle exec rspec
```
## Authors
<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
[<img src="https://avatars1.githubusercontent.com/u/5727529?s=460&v=4" width="100px;"/><br /><sub><b>Tiago Leal</b></sub>](https://github.com/tiagoleal)<br />
