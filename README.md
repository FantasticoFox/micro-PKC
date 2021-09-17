# micro-PKC (Personal Knowledge Container)
Author: FantasticoFox / 23. August 2021

Installation for Linux (Tested in Ubuntu 20.04) of your Personal Knowledge Container\
This should work for other environments like Windows and Mac if the dependancies are fullfilled.

## Pre-Installation:

Resolving dependencies:
1. install git: sudo apt-get install git
2. install docker. Follow: https://docs.docker.com/engine/install/ubuntu/
3. `git clone https://github.com/FantasticoFox/micro-PKC`

## Installation:
1. `cd micro-PKC`
2. Run `./pkc setup --wallet-address <your wallet address>`

**Test if deployment was successful:**\
Go to localhost:9352 and see if you can open your 'Personal Knowledge Container'\
If the special pages work, congratulations! You successfully deployed PKC!

## POST Installation (installation of remote verification tools):
* You have the choice to use the commandline verification tool or the online-chrome extension (recommanded) to verify your page.
* Visit https://github.com/FantasticoFox/data-accounting-external-verifier for hte command line tool.
* Visit https://github.com/FantasticoFox/VerifyPage for the chrome extension.

Keep in mind that this software is in alpha-release stage. Please report bugs and issues back to us.

## Repository Dependencies Github ##
- MediaWiki extension https://github.com/FantasticoFox/DataAccounting
  This contains all scripts and information for the 'Verified Page History' implementation.
  languages: PHP, JavaScript, Shell
- CLI page verifier https://github.com/FantasticoFox/data-accounting-external-verifier
  A CLI JavaScript client for verifying DataAccounting pages.
  languages: JavaScript
- Chrome extension https://github.com/FantasticoFox/VerifyPage
  This is used to remotely interface and verify with servers which integrate the verification protocol.
  languages: TypeScript, HTML
- Dockerized PKC https://github.com/FantasticoFox/micro-PKC
  For running the PKC MediaWiki including the DataAccounting extension via docker-compose.
  languages: Shell, PHP, JavaScript (and Docker of course)
- Content for population of a fresh installed pkc https://github.com/FantasticoFox/PKC-Content
  This contains all the content which is pulled into the PKC through the create of an initial set of pages.
- Smart Contract for Witnessing / Timestamping https://github.com/FantasticoFox/DataSymmetry
  This Smart Contract is part of the infrastructure required to interact with the Ethereum network for time-stamping 
  and 'proof of existance' of a set of verified page fiels.  
- Backup-Script for PKC https://github.com/rht/MediaWiki_Backup.git 
  This repository includes all backup and restore logic for the dockerized-mediawiki
- To install the OAuth2 Client in MW https://github.com/rht/MW-OAuth2Clien
  This is a modified fork which does no allow new user creation.
  
## Image Dependencies DockerHub ##
- Authentification server for ethereum wallets via OAUTH2 pelith/node-eauth-server
- Custom build mediawiki image based on the standard mediaw-wiki docker image fantasticofox/pkc
- A mariadb database container as a database endpoint for the above services xlp0/mariadb
