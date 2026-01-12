#import "@preview/modern-cv:0.9.0": *

#let resume-subsection(title, content) = {
  text(weight: "bold", title)
  v(-0.1em)
  pad(left: 1em, content)
}

#show: resume.with(
  author: (
    firstname: "Junu",
    lastname: "Kim",
    positions: (
      "Cloud & DevOps Architect",
      "Technical Project Lead",
    ),
  ),
  keywords: ("Enginee", "Architect"),
  description: "Junu complete portfolio",
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  show-address-icon: true,
  paper-size: "us-letter",
)

// Project Index
#let toc-card(title, subtitle, target, color) = {
  link(target)[
    #block(
      fill: color.lighten(90%),
      stroke: (left: 4pt + color),
      radius: 4pt,
      inset: (x: 10pt, y: 10pt),
      width: 100%,
    )[
      #set align(left)
      #text(weight: "bold", size: 10pt, fill: black)[#title] \
      #v(0.3em)
      #text(size: 8pt, fill: gray)[#subtitle]
    ]
  ]
}

#v(5em)
#align(center)[
  #text(size: 12pt, weight: "medium", style: "italic")[
    "Solving business problems with solid engineering capabilities."
  ]
  #v(0.5em)
  #text(size: 10pt)[
    12년간 통신사 코어망부터 퍼블릭 클라우드까지, 구조적 문제를 해결해 온 Cloud & DevOps 전문가입니다.
  ]
]

#v(10em)
#align(center)[ #text(size: 16pt, weight: "bold", fill: rgb("#333333"))[Project Highlights] ]
#v(1em)
#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  toc-card("차세대 영업관리플랫폼 비용 최적화", "FinOps & Architecture Refactoring", <ndrs>, rgb("#239DAD")),
  toc-card("Windows Server 마이그레이션", "Infra Modernization & License Opt.", <windows>, rgb("#0078D4")),
  toc-card("JSM 기반 ITSM 시스템 구축", "DevOps Pipeline & Cloud Native", <jsm>, rgb("#2684FF")),
  toc-card("CentOS EOL 대응 전략", "Hybrid Migration (Rocky & SUSE)", <centos>, rgb("#FCC624")),
  toc-card("GenAI 비용 분석 챗봇 구축", "AWS Bedrock & Serverless", <genai>, rgb("#FF9900")),
  toc-card("외국어교육플랫폼 비용 최적화", "Cost Optimization & Scheduling", <caihong>, rgb("#E34F26")),
  toc-card("통신사 코어 시스템 마이그레이션", "Legacy Modernization & HA", <uangel>, rgb("#7B42BC")),

)
#v(2em)



#colbreak()

//뉴드림스 비용 절감 프로젝트
= Projects <ndrs>
#resume-entry(
  title: "차세대 영업관리플랫폼 런칭 후 클라우드 비용 최적화 및 FinOps 체계 구축",
  date: "May 2025 - Jan 2026",
  description: "Cloud FinOps Engineer"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - 운영 데이터 분석을 통해 과다 프로비저닝된 리소스를 식별하고 아키텍처 최적화 및 RI/RN 구매 전략을 실행하여 6개월 만에 월 클라우드 비용 58%(4,700만원) 절감을 달성
  ]
  #resume-subsection("Background")[
    - Legacy 영업관리플랫폼을 AWS 기반으로 Cut-over 한 이후 Application 안정화 단계에서 월 클라우드 비용이 약 8,100만 원(AWS+Datadog)까지 급증하여 예산 초과 리스크 발생
  ]
  #resume-subsection("Tech Stack")[
    - AWS (EC2, EKS, RDS, ElastiCache, Lambda, EventBridge), Datadog, Jira
  ]
  #resume-subsection("Achievement")[
    - Datadog 메트릭 기반으로 EKS Pod 리소스를 2단계에 걸쳐 최적화
    - 공공데이터포털 API와 Lambda, EventBridge를 활용하여 국내 실정에 맞게 DEV/STG 리소스 Scheduling
    - DEV/STG 환경의 불필요한 Datadog Agent를 제거하고 CloudWatch 로그 수집량을 조정하여 비효율적인 로깅 비용 차단, Session Replay 설정을 최적화하여 모니터링 비용 64% 절감
    - 안정된 워크로드를 산정하여 RI/RN 구매를 실행
    - MZC HyperBilling 시스템 활용하여 불필요한 과금이 발생하는 리소스에 대해 Action Item 발굴
    - Jira를 활용해 '분석 → 실행 → 검증'의 최적화 파이프라인을 구축하고 Action Item을 체계적으로 관리
    - 25년 5월 서비스 오픈 대비 약 58%의 비용 절감을 달성
  ]
]

#align(center)[
  #image("ndrs_cost_trend.png", width: 80%)
  #v(-1em)
  #text(size: 7pt, style: "italic")[Figure 1. 월별 클라우드 비용 추이(25년 5월 오픈 후 우하향 추세 확인)]
]
#v(1em)
#align(center)[
  #image("ndrs_timeline.png", width: 80%)
  #v(-1em)
  #text(size: 7pt, style: "italic")[Figure 2. FinOps 실행 타임라인]
]







//Windows Server EOL 대응
#colbreak()
= Projects <windows>
#resume-entry(
  title: "Windows Server 인프라 마이그레이션 및 라이선스 최적화",
  date: "May 2024 - June 2025",
  description: "Lead Infrastructure Engineer"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - Windows Server 2012미만 노후 OS의 EOL 도래 및 대규모 라이선스 부족(366 copy) 리스크를 해소하기 위해 전사 189대 서버에 대한 마이그레이션 전략을 수립
    - 단순 라이선스 추가 구매 대신 DC 에디션 도입 및 VM 재배치를 통해 라이선스 비용을 절감하고 레거시 인프라를 최신 Windows Server 2022 환경으로 현대화하는 로드맵을 주도
  ]
  #resume-subsection("Background")[
    - 총 189대의 Windows Server 중 90대가 이미 EOL(2003/2008/2012)이 도래했거나 임박하여 보안 취약점 노출 및 ISMS 인증 결격 사유 발생
    - 라이선스 보유량이 366개 부족하여 단순 증설 시 많은 비용 발생이 예상되는 상황에서 컴플라이언스와 비용 효율성을 동시에 달성해야 하는 난제에 직면
  ]
  #resume-subsection("Tech Stack")[
    - Windows Server 2022/2019, Hyper-V, VMware, Jira
  ]
  #resume-subsection("Achievement")[
    - 라이선스 비용 최적화
      - 무제한 가상화를 지원하는 Windows Server 2022 Datacenter 에디션을 도입하여 라이선스 부족분(366ea)을 4개의 DC 라이선스(약 6천만 원)로 해결하여 비용 절감 달성.
      - 기존 분산된 VM들을 고사양 하이퍼바이저(DL380 G10 등) 4대에 집약시키되 Cluster 구성을 통한 HA 확보로 가용성 리스크를 해소
    - 레거시 마이그레이션
      - EOL 시점과 서비스 중요도를 분석하여 보안위협이 높은 Windows Server 2003/2008/2012 서버(67대)를 우선 업그레이드 대상으로 선정하고 10차수에 걸친 단계적 전환 계획 수립
      - 20년 이상 된 NT 4.0/2000 서버 등 초고령 레거시 서버까지 식별하여 폐기 또는 가상화 전환을 추진, 기술 부채를 제거

  ]
]

#align(center)[
  #image("windows server jira.png", width: 70%)
  
  #text(size: 7pt, style: "italic")[Figure 1. Jira를 활용한 마이그레이션 WBS 및 마일스톤 관리]
]












//Atlassian JSM 기반 ITSM 형상관리 시스템 구축
#colbreak()
= Projects <jsm>
#resume-entry(
  title: "Atlassian JSM 기반 ITSM 형상관리 시스템 구축",
  date: "May 2025 - August 2025",
  description: "DevOps Engineer / Project Owner"
)
#line(length: 100%, stroke: 0.5pt + gray)

#resume-item[
  #resume-subsection("Summary")[
    - Legacy 시스템을 Cloud Native 환경으로 현대화하고 DevOps 파이프라인의 E2E 라이프사이클을 주도적으로 설계/구현한 사례
  ]
  #resume-subsection("Background")[
    - Legacy 형상관리 시스템을 Cloud Native 환경으로 전환하여 배포 자동화와 내부회계 요건을 동시에 충족해야 했음
  ]
  #resume-subsection("Tech Stack")[
    - AWS (ECS Fargate, Lambda, VPC), Terraform, Jenkins, Docker, Atlassian JSM (Jira Service Management)
  ]
  #resume-subsection("Achievement")[
    - Terraform 기반 AWS ECS Fargate Jenkins 구축으로 관리 오버헤드 제거 및 비용 최적화(기존 VM 대비 운영 비용 약 40% 절감)
    - AWS Lambda 기반 Atlassian(Jira/Bitbucket) SaaS 동적 IP의 Security Group 자동 동기화 기능 개발
    - Jira와 CI/CD 파이프라인을 연동하여 '승인 → 배포 → 증적'의 전 과정을 시스템화하고 통제 리스크 해소
    - 기존 복잡한 결재선을 JSM의 multi picker 기능을 활용해 3단계에서 1단계로 단축
    - 개발팀, 보안팀, 비지니스파트너 등 다양한 이해관계자 사이에서 원활한 의사소통으로 기술적 요구사항을 직접 정의하고 조율
    - 현업/PI/개발자 대상 전사 온보딩 세션 주도
  ]
]

#align(center)[
  #image("JSM Jenkins.png", width: 80%)
  #v(-0.5em)
  #text(size: 7pt, style: "italic")[Figure 1. Serverless CI/CD Architecture on AWS Fargate managed by Terraform]
]








//CentOS EOL 대응
#colbreak()
= Projects <centos>
#resume-entry(
  title: "하이브리드 전략 기반의 CentOS EOL 대응 및 최적화",
  date: "Feb 2023 - March 2025",
  description: "Lead Infrastructure Engineer"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - CentOS 7 EOL 도래에 따른 보안 위협 및 ISMS 인증 결격 사유를 해소하기 위해 OS 마이그레이션 전략을 수립
    - 단기간 내 마이그레이션이 불가능한 대규모 Legacy 환경을 고려하여 'SUSE Liberty 도입'과 'Rocky Linux 전환'을 병행하는 하이브리드 전략을 설계하고 실행
  ]
  #resume-subsection("Background")[
    - 총 250여대(AWS, VM, NCP 등)의 서버가 CentOS 6/7 기반으로 운영 중이었으나 EOL 이후 보안 패치 중단으로 인해 외부 공격 노출 및 ISMS 인증 유지 불가 리스크 발생
  ]
  #resume-subsection("Tech Stack")[
    - Rocky Linux 9, SUSE Liberty Linux, SUSE Manager, AWS EC2, VMware, NCP, Jira
  ]
  #resume-subsection("Achievement")[
    - 하이브리드 마이그레이션 전략 수립 및 실행
      - 위험도 기반 분류를 통해 24대(CentOS 6)는 Rocky Linux로 즉시 전환하여 레거시 부채를 제거
      - 마이그레이션 검증 시간이 부족한 209대(CentOS 7)에 대해서는 SUSE Liberty 3년 계약을 체결하여 기존 OS 환경을 유지하면서 보안 패치를 지속 적용받도록 조치
    - 대규모 인프라 관리 체계 고도화
      - ELS 적용 전제 조건인 커널 버전(7.9) 업그레이드를 위해 155대 서버에 대한 커널 업데이트를 주도하여 시스템 안정성 확보
      - SUSE Manager를 구축하여 이기종 리눅스(CentOS, Rocky, SUSE, RHEL 등) 패치 관리를 중앙 집중화하고 전사 리눅스 패키지 관리 효율성 증대
    - TCO 최적화 및 로드맵 실행
      - SUSE Liberty, TuxCare, MVShield의 3개 ELS(Extended Lifecycle Support) 솔루션을 기술/비용 측면에서 비교 분석
      - 2027년까지 총 7차수에 걸친 단계적 Rocky Linux 전환 로드맵을 수립하고 Jira를 통해 일정 및 이슈 관리하여 3차 마이그레이션까지 성공적으로 완료
  ]
  
    #align(center)[
      #block(
        fill: rgb("#f0f8ff"), // 아주 연한 파란색 배경 (AliceBlue)
        stroke: (left: 4pt + blue), // 왼쪽에 파란색 강조선
        inset: 1em, // 내부 여백
        radius: 3pt, // 모서리 둥글게
        width: 90%,
      )[
        #align(left)[
          #text(weight: "bold")[🏆 SUSE Global Success Story & Media Feature]
          #v(0.1em)
          - 본 프로젝트는 비용 효율성과 안정성을 동시에 확보한 모범 사례로 선정되어 SUSE 공식 홈페이지 성공사례에 등재되었으며 디지털데일리 등 주요 언론에 보도됨
            - Case Study: #link("https://www.suse.com/ko-kr/success/daekyo/")[#text(fill: blue)[대교, SUSE Multi-Linux Support를 통해 CentOS 지원 종료에 대비하다]]  
            - Article: #link("https://www.ddaily.co.kr/page/view/2025041109581078611")[#text(fill: blue)[대교, 센트OS 종료 위기 수세 솔루션으로 극복...비용은 절반]]
        ]
      ]
    ]  
]

#align(center)[
  #image("SUSE Global Recognition.png", width: 70%)
  
  #text(size: 7pt, style: "italic")[Figure 1. SUSE 공식 홈페이지에 등재된 CentOS EOL 대응 성공사례 인터뷰 발췌]
]






// Chatbot
#colbreak()
= Projects <genai>
#resume-entry(
  title: "GenAI(AWS Bedrock) 기반 클라우드 비용 분석 챗봇 구축",
  date: "Dec 2025",
  description: "AI & Cloud Solutions Architect"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - 자연어 대화로 즉각적인 비용 조회 및 분석이 가능한 GenAI 챗봇을 구축.
    - \$40,000의 AWS 크레딧을 확보하여 실질적인 비용 절감에 기여
  ]
  #resume-subsection("Background")[
    - MSP사로부터 GenAI PoC 진행 시 크레딧 제공 제안을 받았으나 타 부서의 리소스 부족으로 무산될 위기에서 직접 IT기획팀 주도의 자체 개발 프로젝트로 전환하여 추진
  ]
  #resume-subsection("Tech Stack")[
    - AWS (Bedrock Agent, ECS Fargate, ALB, ECR, Lambda), Streamlit, MZC API, Docker, Selenium
  ]
  #resume-subsection("Achievement")[
    - AWS Bedrock Agent를 활용해 사용자 의도 파악 → 파라미터 추출 → API 호출(Action Group)로 이어지는 에이전트 워크플로우를 설계
    - 자연어를 API 규격으로 변환하여 MZC HyperBilling API를 호출하고 반환된 JSON 데이터를 다시 자연어로 요약해주는 Backend Lambda(Python) 로직 개발
    - 프롬프트 엔지니어링을 통해 비용 조회 외의 불필요한 질문을 사전에 차단하는 보안 가드레일 적용
    - 챗봇 호스팅을 위해 AWS ECS Fargate(Graviton)를 적용하여 운영 비용을 최소화
    - API 연동부를 AWS Lambda로 구현하여 이벤트 드리븐 아키텍처 완성
    - 성공적인 서비스 구현 및 PoC 완료를 통해 벤더사(MZC)로부터 \$40,000 규모의 AWS 서비스 크레딧을 확보
  ]
]

#v(2em)
#align(center)[
  #image("Serverless GenAI Agent Architecture.png", width: 70%)
  
  #text(size: 7pt, style: "italic")[Figure 1. Serverless GenAI Agent Architecture]
]







//차이홍플랫폼 비용 절감 프로젝트
#colbreak()
= Projects <caihong>
#resume-entry(
  title: "외국어교육플랫폼 인프라 비용 최적화",
  date: "Nov 2023 - June 2024",
  description: "Cloud FinOps Engineer"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - 운영 데이터 기반의 Rightsizing과 Scheduling, 불필요한 기술 지원 계약 해지를 통해 6개월 만에 월 클라우드 비용 약 40%를 절감하고 안정적인 운영 환경을 정착
  ]
  #resume-subsection("Background")[
    - '23년 외국어교육플랫폼 고도화 프로젝트 종료 후 운영 조직으로 이관되었으나 비용 적합성 검토가 누락되어 월 \$16,000 이상의 과다 비용이 지속 발생되어 사업부 손익에 영향을 미침
  ]
  #resume-subsection("Tech Stack")[
    - AWS (EC2, EKS, RDS, ElastiCache, Lambda, EventBridge), Datadog, Jira
  ]
  #resume-subsection("Achievement")[
    - 트래픽 및 리소스 사용률(CPU, Memory)을 전수조사하여 DEV 인스턴스 13대, PRD 인스턴스 7대에 대한 다운사이징(t3.medium → small 등)을 수행
    - AWS Lambda와 EventBridge를 활용하여 주말 및 야간에 DEV 리소스를 자동 중지시키는 Scheduling 스크립트 개발 및 적용
    - 실효성이 낮은 EKS MSP(기술지원) 계약을 과감히 해지하여 매월 고정비 250만원을 즉시 절감
    - 최적화가 완료된 최종 리소스에 맞춰 SP 적용 및 RI 구매하여 추가 할인율 확보
    - 3rd Party 솔루션(교육 콘텐츠 관리 시스템, 보안 등)의 스펙 다운사이징 불가 이슈를 식별하고 향후 솔루션 도입시 최소 권장 사양 검토 프로세스를 정립
    - '23년 하반기 평균 청구액 대비 약 40%의 비용 절감을 달성
  ]
]

#align(center)[
  #image("caihong_cost_trend.png", width: 80%)
  #v(-0.5em)
  #text(size: 7pt, style: "italic")[Figure 1. 비용 절감 및 사용량 추이(24년 11월 FinOps 착수 후 우하향 추세 확인)]
]
#v(1em)
#align(center)[
  #image("caihong_timeline.png", width: 80%)
  #v(-0.5em)
  #text(size: 7pt, style: "italic")[Figure 2. FinOps 실행 타임라인]
]



#colbreak()
= Projects <uangel>
#resume-entry(
  title: "Telecommunication Core System Migration & Modernization",
  date: "Sep 2013 - Sep 2023",
  description: "Senior Infrastructure Engineer"
)
#line(length: 100%, stroke: 0.5pt + gray)
#resume-item[
  #resume-subsection("Summary")[
    - 국내 주요 통신사(SKT, SKB, Samsung SDS)의 대규모 코어망 시스템 운영 및 레거시 인프라 마이그레이션 프로젝트를 총괄하며 데이터 정합성 보장 및 무중단 서비스를 실현
  ]
  #resume-subsection("Background")[
    - SKB-SK Telink 합병에 따른 이기종 지능망 시스템 및 대규모 가입자 DB(1,000만 건) 통합 필요
    - 삼성SDS 번호이동성(NPDB) 시스템의 노후화(EOL)로 인한 성능 저하 및 운영 리스크 해소 필요
  ]
  #resume-subsection("Tech Stack")[
    - Linux (RHEL, CentOS), Oracle, Altibase, SIPP, Seagull, Wireshark, HP ProLiant DL380 Gen10
  ]
  #resume-subsection("Achievement")[
    - *[SKB 지능망 통합]* 이기종 DB 간 데이터 정합성 검증 프로세스 설계 및 SIPP 시뮬레이션을 통해 1,000만 가입자 DB 무중단 이관 성공 (예정 기한 5일 단축)
    - *[삼성SDS 레거시 현대화]* 노후 서버를 최신 고성능 장비로 전면 교체하고 OS 최적화를 수행하여 인프라 처리 성능 2배 향상
    - *[안정성 확보]* 120개 이상의 극한 부하 테스트 시나리오를 수행하여 컷오버(Cut-over) 후 장애 발생 0건 기록
  ]
]