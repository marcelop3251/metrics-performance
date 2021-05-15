# metrics-performance
This project only collect metrics about jvm, to analyze and evaluate the behavior of the applications

In this project we have two applications.

1. The first application uses javalin, exposed, koin and we have only two endpoint one for create one register e other for get.
2. The second application use spring boot and has same endpoint.

### How metrics were collected?
- The metrics was collected with [Prometheus JMX EXPORTER](https://github.com/prometheus/jmx_exporter) 
- After collected that metrics the [prometheus server](https://prometheus.io/docs/introduction/overview/) scrapres and stores time series data

### And how are these metrics presented?
- We choose the [grafana](https://grafana.com/) as our observability and plug it into prometheus.

### Architecture

![system](https://github.com/marcelop3251/metrics-performance/blob/main/architecture.png)
          

## How to execute the first project and collect and display these metrics?

Attention, before executing these commands it is necessary to have installed docker-compose

1. Run the following command to start applications.

    ` sh up-project-javalin.sh `
2. Open your browser and access the following url http://localhost:3000/ and log in with user=admin and password=admin
3. Wether all it is ok, so you can see the metrics \o/

If you want to generate a little more inputs, we have the file HTTP_Request_defaults.jmx tha can be imported at [Jmeter](https://jmeter.apache.org/)

## How to stop this project.
1. Run the following command to stop applications.
`sh down-project-javalin.sh`
   
## How to execute the second project?
The instructions are the same, only change of javalin to spring.
1. Run the following command to start applications.

   `sh up-project-spring.sh`
2. Run the following command to stop applications.
   `sh down-project-spring.sh`
