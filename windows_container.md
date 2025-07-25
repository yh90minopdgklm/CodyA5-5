# Windows의 Docker Desktop에서 리눅스 컨테이너와 윈도우 컨테이너의 차이점

## 기본 아키텍처 차이

### 리눅스 컨테이너

- 호스트에 내장된 리눅스 커널 네임스페이스와 cgroups를 활용
- Windows 호스트에서는 WSL 2(Windows Subsystem for Linux 2)를 백엔드로 사용하여 실제 리눅스 커널을 구동
- 이미지가 가벼우며, 대부분의 오픈소스·클라우드 네이티브 스택(예: Nginx, MySQL, Python 등)을 그대로 사용 가능
### 윈도우 컨테이너
- Windows 커널 기능(네임스페이스, Job 객체 등)을 이용
- Windows Server Core, Nano Server 같은 Windows 기반 이미지 사용
- .NET Framework(Full CLR)이나 Windows 전용 런타임(예: IIS) 애플리케이션에 최적화

## 호환성 및 이미지 생태계

### 리눅스 컨테이너
- Docker Hub 및 각종 레지스트리에 수만 개의 리눅스 기반 이미지
- 주로 오픈소스 생태계—Java, Go, Node.js, Python, Ruby, Postgres, Redis 등 풍부

### 윈도우 컨테이너
- Windows 전용 이미지 (mcr.microsoft.com/windows/servercore, mcr.microsoft.com/windows/nanoserver 등)
- .NET Framework 4.x, IIS 웹 서버, PowerShell Core 등 Microsoft 기술 스택에 집중

## 주요 제약사항

### 리눅스 컨테이너
- Windows 전용 API, GUI, .NET Framework Full CLR 지원 불가

### 윈도우 컨테이너
- 기존 리눅스 바이너리(ELF), 쉘 스크립트, 리눅스 네이티브 데몬 등 비지원
- 이미지 크기가 상대적으로 크고, 레이어 캐시 활용이 리눅스보다 덜 효율적
