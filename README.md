리드미 연습

# 프로젝트 소개
온라인 강의를 들을 수 있는 사이트를 구현한 프로젝트

    

## Member Service - Snowball Class
Spring Boot 기반 MSA 아키텍처에서 회원 인증 및 관리 기능을 담당하는 마이크로서비스입니다.  
JWT 인증, Spring Security를 포함한 보안 로직을 구현했습니다.

     
   
## 주요 기능

- 회원가입 / 로그인 / 로그아웃
- JWT Access & Refresh Token 발급 및 검증
- 회원 정보 조회 / 수정 / 삭제
- 이메일로 임시 비밀번호 발급

   
## 기술 스택

| 분류       | 사용 기술                           |
|------------|-------------------------------------|
| Language   | Java 17                             |
| Framework  | Spring Boot 3, Spring Security 6.2.1    |
| Database  | MySQL                                |
| Auth       | JWT (Access Token / Refresh Token)  |
| Docs       | Swagger                             |
| Infra      | Docker, GCP                         |

   
## 프로젝트 구조 요약
```
member/ 
  ├── config/ # Security, Feign 설정, 인증 필터 등 
  ├── controller/ # REST API 컨트롤러 
  ├── dto/ # 요청/응답 DTO 
  ├── service/ # 핵심 비즈니스 로직 
  ├── repository/ # 멤버/토큰 저장
  ├── util/ # JWT 유틸, 토큰 파서 등 
  └── Application.java
```
   
## 팀원 및 역할

| 이름     | 역할                |
|----------|-----------------------|
| 김남주  | Backend(member, review, view)|
| 안병현  | Backend(payment, cart, view)|
| 전찬의  | Infra, Deploy, Backend(lesson, admin, view) |
