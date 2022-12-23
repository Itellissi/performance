## Intro

Folder structure
- DAPR.jmx : this file is JMeter scenario file used to test DAPR API perforamnce
- dapr : this folder contains dapr configuration files
- startDapr.bat : this script is used to start Dapr sidecar on port 8888
- docker-infra : this folder contains docker-compose infrastructure used for the test

## Prerequisits
- Jmeter (tested with Jmeter 5.4.3)
- Docker (tested with Windows docker desktop)

## Start docker test infra
Simply run the following command under docker-infra folder.
```
docker-compose up -d
```

## JMeter test
Jmeter test scenario has 5 variables:
- topic_name : the name of the topic to publish to
- sleep_time : the sleep interval between calls
- componentName : the component name to publish to
- dapr.address : the address of dapr sidecar
- dapr.port : the HTTP port for dapr sidecar
- loopCount : the loop count for the thread group
- threadCount : the number of parallel threads

The JMeter tests sends 2 "lorem ipsum" messages, one of size 30Kb and the other has 2Kb, with a configurable sleep time between each.

