---
permalink: /
title: "Hi, I'm Ory Band"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I'm a Backend engineer and hands-on Tech Lead, specializing in data-intensive processing, distributed systems, and cloud infrastructure.

I love designing and implementing intricate systems, and take to heart deploying and maintaining them once they reach production.

I'm good with making sense of things: Understanding how applications behave, perform, exposing and analyzing key metrics, as well as deep dive into difficult to crack problems.

I'm a team player, and I get the job done.

## Things I Built

### Analytics ETL Pipeline
Implemented an event streaming and ETL pipeline. System was highly available, resilient, and with low response time. Written in Golang and deployed on Google Cloud. Peak load reached 1 billion req/day (= 700k req/m). Analytics were stored in various data stores including Google BigQuery, Elasticsearch, and Prometheus.

### Production Monitoring Infrastructure
Developed a distributed production monitoring infrastructure, spanning multiple cloud providers.

### Federated Blockchains
I [gave a talk](https://youtu.be/QSpG6a9bmu0) about Federated consensus networks, focusing on Stellar and Ripple, and discussed how they differ from other popular decentralized consensus solutions such as Proof-of-Work and Proof-of-Stake.

### Google BigQuery Open Source Library
Released [an open-source Go library](https://github.com/oryband/go-bqstreamer) for inserting data to Google BigQuery at scale. Project received ~130 GitHub stars, and was recognized by core Go and BigQuery team members at Google.

### Decentralized Networks
Deployed and maintained multiple decentralized networks for production, research, and testing on the cloud.

### Web MapReduce
I implemented a [proof of concept for a web-based MapReduce](https://github.com/oryband/go-web-mapreduce) in Go, proving it is possible to utilize available computing capabilities of web browsers (and mobile!) as MapReduce workers for distributing donation of idle computation projects like SETI@Home and Folding@Home. Master handled 100k/tasks/min.

## Things I Wrote

### [Collecting User Data and Usage](https://medium.com/@oryband/collecting-user-data-and-usage-ffa84c4dba34)
Knowing what our users are doing with our app is important — What they like, what they don't, quality of our video calls, etc. Gathering and storing this information however, is quite a task — especially when we have more than one million events reported every minute. At Rounds, we are using two data stores for live monitoring, search, and BI. One is indeed for immediate, live data, and the other for long-term data warehousing and long-term research.

### [Twitter Thoughts and Discussions](https://twitter.com/oryband)
I regularly share thoughts on software engineering, distributed systems, and technology trends on Twitter. Follow me for insights on backend engineering, system design, and industry observations.
