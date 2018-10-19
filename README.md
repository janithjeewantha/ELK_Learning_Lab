# ELK_Learning_Lab
An effort to setup ELK stack with the intention of studying the feasibility, effectiveness of implementing a central log management system for the product of my current workplace; and for fun.

## Getting Started

Since I had to work within a Windows environment, I chose to implement the whole stack on docker containers. Actually, I used one container for all 3 applications - Elasticsearch, Kibana and Logstash.
I haven't started deploying log shipping mechanisms like filebeat since the lack of permissions in this R&D stage. So some static log file was used for testing. BTW, I identified that rsyslog is more suitable for an environment such as the one I work in because of the variety of platforms we use.
