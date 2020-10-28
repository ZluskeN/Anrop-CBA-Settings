# Anrop CBA Settings

Contains default CBA Settings

## Build locally

Download HEMTT from https://github.com/BrettMayson/HEMTT/releases/tag/v0.6.1

Build with `hemtt build`.
The resulting built pbos are stored in the addons folder.
The project folder can be mounted into Arma and the pbos will be read from the addons folder.

## Build on Jenkins

Project uses Jenkinsfile to define build steps.
Add the repository or organization to Jenkins as a pipeline job and it should pick it up automatically.

It requires a node with the label "hemtt" and hemtt must be available in PATH
