# Junu Kim (김준우)

[![Role](https://img.shields.io/badge/Role-Cloud%20%26%20DevOps%20Architect-blue?style=flat-square&logo=amazonaws)](https://www.linkedin.com/in/junu-kim)
[![Experience](https://img.shields.io/badge/Experience-12%2B%20Years-success?style=flat-square)](https://github.com/itsjunukim)
[![Email](https://img.shields.io/badge/Email-Contact%20Me-gray?style=flat-square&logo=gmail)](mailto:gazi6024@gmail.com)
[![Tech Stack](https://img.shields.io/badge/Written%20in-Typst-239DAD?style=flat-square&logo=typst)](https://typst.app/)

> **"Solving business problems with solid engineering capabilities."** > 12년간 통신사 코어망부터 퍼블릭 클라우드까지, 구조적 문제를 해결해 온 Cloud & DevOps 전문가입니다.

## 🚀 About This Repository
This repository contains the **source code** for my professional Resume and Portfolio.  
As a DevOps Engineer, I believe in **"Everything as Code."** Even my career history is version-controlled, modularized, and compiled using **Typst**.

### 📂 Documents
최신 버전의 PDF는 아래 링크에서 확인하실 수 있습니다.

| Document | Description | Type | Actions |
| :--- | :--- | :---: | :---: |
| **Resume** | 경력 기술서, 기술 스택, 자격증 상세 | `Main` | [📄 View PDF](./resume.pdf) |
| **Portfolio** | 주요 프로젝트 아키텍처 다이어그램 및 성과 | `Sub` | [📄 View PDF](./portfolio.pdf) |

<br/>

## 🛠 Tech Stack & Core Competencies
My expertise focuses on building scalable infrastructure and optimizing costs.

| Domain | Skills |
| :--- | :--- |
| **Cloud & Architecture** | ![AWS](https://img.shields.io/badge/AWS-232F3E?style=flat-square&logo=amazon-aws&logoColor=white) `EKS` `Lambda` `Bedrock` `Private Cloud` |
| **DevOps & IaC** | ![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white) ![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=flat-square&logo=kubernetes&logoColor=white) `ArgoCD` `Jenkins` `GitOps` |
| **Observability & FinOps** | ![Datadog](https://img.shields.io/badge/Datadog-632CA6?style=flat-square&logo=datadog&logoColor=white) `CloudWatch` `Cost Explorer` `HyperBilling` |
| **OS & Scripting** | ![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat-square&logo=linux&logoColor=black) `Rocky Linux` `SUSE` `Python` `Bash` |

<br/>

## 🗂 Project Highlights (Portfolio Preview)
포트폴리오에 포함된 주요 프로젝트의 요약입니다. (자세한 내용은 [Portfolio PDF](./portfolio.pdf) 참조)

* **Cloud Cost Optimization (FinOps):** 운영 데이터 분석 및 아키텍처 최적화를 통해 월 클라우드 비용 **58% 절감** 달성
* **GenAI Chatbot for Cost Analysis:** AWS Bedrock & Lambda 기반의 사내 비용 분석 챗봇 구축 (AWS \$40k 크레딧 확보)
* **Legacy Infrastructure Migration:** Windows Server/CentOS EOL 대응을 위한 대규모 하이브리드 마이그레이션 및 컨테이너 전환
* **Serverless CI/CD Pipeline:** Terraform 기반의 AWS Fargate & Jenkins 구축으로 배포 프로세스 완전 자동화

<br/>

## 📦 Directory Structure
This project follows a monorepo structure to share common design modules.

```bash
.
├── common/           # Shared modules (fonts, layouts, utils)
├── resume/           # Resume specific source code
│   └── main.typ
├── portfolio/        # Portfolio specific source code & assets
│   ├── assets/       # Architecture diagrams
│   └── main.typ
└── README.md
