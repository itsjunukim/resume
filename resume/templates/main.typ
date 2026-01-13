/*
=== NOTICE ===
This template uses the Font Awesome 7 Desktop icons 
You can download the fonts here: https://fontawesome.com/download
You either need to install them on your system, or upload them
to your project folder if you use the Typst web app.
*/

#import "@preview/lavandula:0.1.1": *

#show: lavandula-theme

#set text(lang: "en")
#set document(
  title: "Junu Kim (CV)",
  author: "Junu Kim",
  date: datetime(year: 2026, month: 1, day: 10),
)

#let section-with-line(title, body) = section(
  title: grid(
    columns: (auto, 1fr),
    gutter: 0.7em,
    title,
    align(horizon, context line(length: 100%, stroke: 0.7pt + text.fill))
  ),
)[
  #v(-1.0em)
  #body
]

#cv(
  sidebar-position: "left",
  sidebar: [
    = Junu Kim
    ==== Cloud & DevOps Architect \ Technical Project Lead

    #contact-list((
      (icon: "at", icon-solid: true, text: link("mailto:gazi6024@gmail.com")[gazi6024\@gmail.com]),
      (icon: "linkedin", text: link("https://www.linkedin.com/in/junu-kim-087a39365/")[linkedin.com/in/junu-kim]),
      (icon: "phone", text: "010-4243-4994"),
    ))

    #sidebar-section(title: "About me")[
      #v(-0.5em)
      #set par(justify: true)
      #show par: it => block(width: 100%, it)
      #align(center, text(weight: "bold", tracking: -0.2pt)[
        #highlight["단단한 엔지니어링 역량으로 비즈니스 문제를 해결하는 Cloud & DevOps 전문가"]
      ])
      
      12년간 통신사 코어망부터 퍼블릭 클라우드까지 다양한 환경을 경험하며 시스템의 구조적 문제를 해결해왔습니다. 노후 인프라의 클라우드 전환과 컨테이너 기반 환경 구축을 주도하였으며 데이터 기반의 리소스 분석을 통해 최대 58%의 비용 절감 성과를 달성했습니다.

      기술적 이상과 비즈니스 현실 사이의 균형 잡힌 아키텍처 설계를 지향하며 현재는 GenAI를 통해 조직의 일하는 방식을 혁신하는데 관심을 가지고 있습니다.
    ]

    #sidebar-section(title: "Technical skills")[
      #v(-0.5em)
      #skill-group(
        name: "Cloud & Architecture",
        icon: "cloud",
        icon-solid: false,
        skills: (
          "AWS",
          "EKS",
          "Lambda",
          "Bedrock",
        )
      )

      #skill-group(
        name: "DevOps & IaC",
        icon: "infinity",
        skills: (
          "Terraform",
          "ArgoCD",
          "Jenkins",
          "Docker",
          "Kubernetes",
          "GitOps",
        )
      )

      #skill-group(
        name: "Observability & FinOps",
        icon: "chart-line",
        skills: (
          "Datadog",
          "CloudWatch",
          "HyperBilling",
          "Cost Explorer",
        )
      )

      #skill-group(
        name: "OS & System Engineering",
        icon: "server",
        skills: (
          "Linux",
          "CentOS",
          "Rocky Linux",
          "Windows Server",
          "VMware",
          "SUSE",
        )
      )

      #skill-group(
        name: "Tools",
        icon: "toolbox",
        skills: (
          "Git",
          "Python",
          "Bash",
          "Jira",
          "MySQL",
          "PostgreSQL",
          "Confluence"
        )
      )
    ]
  ],
main-content: [
    #section-with-line("Experience")[
      #section-element(
        title: [Cloud & DevOps Architect @ #link("https://www.daekyo.com")[(주)대교]],
        info: [_2023.09 --- Current_],
        [
          IT기획팀 인프라 파트장으로 전사 클라우드 전략 수립 및 레거시 인프라 현대화 리딩
          #set text(size: sizes.text-s2)
          #icon-list((
            (icon: "handshake", text: [*클라우드 전환 전략 수립 및 파트너십 총괄*
          - AWS PPA(Private Price Agreement) 계약 체결 주도
          #text(tracking: -0.3pt)[
          - 97개 온프레미스 워크로드 대상 TCO/ROI 분석 기반의 클라우드 전환 로드맵 수립 및 C-Level 보고 수행]]),
            (icon: "piggy-bank", text: [*전사 Cloud 비용 절감*
          - AWS 리소스 아키텍처 개선 및 인스턴스 최적화를 통해 주요 서비스별 최대 58%(평균 40% 이상) 인프라 비용 절감 달성
          #text(tracking: -0.1pt)[
            - Datadog 에이전트 최적화, Cloudwatch 로그 수집 정책 튜닝으로 Observability 비용 약 60% 절감]]),
          (icon: "infinity", text: [*외국어 교육 플랫폼 인프라 DevOps 운영*
          - AWS EKS 기반 MSA 워크로드 운영 및 트러블 슈팅을 전담하여 가용성 확보
          - Jenkins 및 ArgoCD를 활용한 정기/비정기 배포 파이프라인 관리 및 배포 프로세스 최적화
          - #text(tracking: -0.1pt)[실시간 모니터링(Datadog, Cloudwatch) 및 로그 분석을 통한 서비스 장애 사전 감지 및 신속 복구 체계 확립]]),  
          (icon: "robot", text: [*GenAI 기반 사내 비용 분석 챗봇 구축*
            - AWS Bedrock을 활용한 자연어 기반 비용 분석 도구 자체 개발 및 \$40,000 크레딧 확보]),
          (icon: "shield-halved", text: [*노후 인프라 리스크 관리*
          - #text(tracking: -0.2pt)[CentOS EOL 도래 서버 233대에 대한 하이브리드 마이그레이션 전략으로 보안 취약점 및 ISMS 인증취소 리스크 해소]
          - Windows Server 189대 전수 조사 기반, 노후 서버 90대 업그레이드 및 VM 재배치를 통해 인프라 건전성 확보]),
            (icon: "list-check", text: [*전사 ITSM 체계 고도화 및 프로세스 표준화*
          - 노후화된 사내 형상 관리 시스템을 SaaS 기반의 JSM 표준 프로세스로 통합 및 대개체 완수
          - #text(tracking: -0.5pt)[중앙 집중형 Jenkins 서버 구축 및 Bitbucket/ArgoCD 파이프라인 연동을 통해 CI/CD 배포 프로세스 일원화]
          - 현업, 서비스 PI, 개발자 간의 소통 채널을 단일화하여 조직 생산성 향상 및 협업 효율 개선]),
            (icon: "lock", text: [*ISMS 인증 심사 대응 및 취약점 조치*
          - ISMS 인증 유지를 위한 인프라 취약점 진단 및 보안 패치 스케줄링]),
          (icon: "file-signature", text: [*내부회계관리제도(ICFR) IT 감사 대응*
          - 상장사 기준에 부합하는 IT 일반 통제(ITGC) 증적 관리 및 감사 수검 지원]),
          (icon: "file-contract", text: [*IT 외주 용역 관리*
          - 인프라 운영 및 개발 외주 업체 계약 관리, 월 용역 회의 및 커뮤니케이션])
          ))
        ],
      )
    #v(-0.5em)
    #section-element(
        title: [Senior Infrastructure Engineer @ #link("http://www.uangel.com/kr/")[유엔젤(주)]],
        info: [_2013.09 --- 2023.09_],
        [
          국내 주요 통신사(SKT, SKB 등)의 코어망 시스템 엔지니어로서 대규모 트래픽 처리 시스템의 운영부터 마이그레이션 총괄까지 수행하며 인프라 생명주기 전반을 경험
          
          #set text(size: sizes.text-s2)
          *Lead Engineer (2019.01 --- 2023.09 | 대리 \~ 과장)*
          #v(-0.3em)
          #icon-list((
            (icon: "network-wired", text: [*SKB-SK Telink 지능망 서비스 통합*
            #text(tracking: -0.5pt)[
            - 지능망 서비스 통합 프로젝트의 메인 엔지니어로 참여하여 이기종 DB 및 서비스 마이그레이션 설계 및 수행]
            - SIPP 시뮬레이터를 활용한 CallFlow 검증
            - 1,000만 건 이상의 가입자 DB 무중단 마이그레이션 달성]),
            (icon: "server", text: [*삼성SDS 레거시 시스템 현대화*
            #text(tracking: -0.5pt)[- NPDB(번호이동성 DB) 노후 장비 및 OS 환경 재구성 작업 수행, 2,000만 건 대용량 DB 마이그레이션 완료]
            - 120개 부하 테스트 시나리오 검증을 통해 Cut-over 이후 장애 발생 0건 기록]),
          ))
          
          *System Engineer (2013.09 --- 2018.12 | 사원 \~ 대리)*
          #set text(size: sizes.text-s2)
          #v(-0.3em)
          #icon-list((
            (icon: "signal", text: [*SK Telecom 로밍 한도 요금제 구축 및 연동*
            - 해외 통신사(Docomo, Softbank)와 현지 연동 테스트 및 SIP/Diameter 프로토콜 정합성 검증 지원
            - 180여 가지 Call 시나리오 테스트를 통해 국제 로밍 서비스 결함 3건 사전 발견 및 조치]),
            (icon: "terminal", text: [*대용량 트래픽 처리 시스템 운영*
            #text(tracking: -0.5pt)[
            - 30여 식의 Mission-Critical한 Linux 기반 상용망 서버 운영 (솔루션 패치 및 검증, OS 패치, 보안 취약점 조치)]
            - Wireshark 패킷 분석 및 시스템 로그 분석을 통한 트러블 슈팅 전담]),
          ))
        ],
      )
    ]
    #v(-1.0em)
    #section-with-line("Certification")[
      #let certs = (
        (title: "AWS Certified Solutions Architect - Professional", year: "2025.03", issuer: "AWS"),
        (title: "AWS Certified Security - Specialty", year: "2025.05", issuer: "AWS"),
        (title: "AWS Certified AI Practitioner", year: "2025.12", issuer: "AWS"),
        (title: "정보처리기사", year: "2012.11", issuer: "한국산업인력공단"),
      )
      #for cert in certs {
        section-element-advanced(
          title: cert.title,
          info-top-left: cert.year,
          info-top-right: cert.issuer,
          []
        )
        v(-2.5em)
      }
    ]
    
#v(-1.0em)
    #section-with-line("Education")[
      #section-element-advanced(
        title: "한성대학교",
        info-top-left: "2013.02",
        info-top-right: "서울",
        icon: none,
        [
          #set text(size: sizes.text-s2)
          _B.S. in Computer Engineering_ (#highlight[3.44/4.5])
        ],
      )
    ]   
  ],
)