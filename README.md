## Usage
The vagrant file includes the necessary set-up for all dev environment related to geonode and local development machine

The following will start build and start the stage geonode box
$ vagrant up stagegeonode --provider=aws


The following will start build and start the full geonode local dev vm on virtual box
$ vagrant up localgeonode

The following will start build and start the show & tell box in aws
$ vagrant up showgeonode --provider=aws