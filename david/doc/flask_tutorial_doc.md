1. Run Without Debugging vs Start Debugging 차이점

Visual Studio에서 애플리케이션 실행에는 두 가지 주요 방식이 있습니다. 디버깅 없이 실행하는 경우(Ctrl+F5)는 단순히 프로그램을 시작하는 반면, 디버깅과 함께 실행하는 경우(F5)는 디버거를 시작하고 Visual Studio의 UI를 완전히 변경하면서 상당한 지연이 발생합니다.

디버깅 없이 실행할 때는 다음과 같은 특징을 가집니다.

- 실행 속도가 훨씬 빠름
- 메모리 사용량이 적음
- 중단점 설정 불가능
- 변수 값 확인 불가
- 예외 발생 시 상세 정보를 볼 수 없음

반면 디버깅과 함께 실행하면 다음과 같은 기능을 활용할 수 있습니다.

- 코드 중간에 중단점을 설정하여 실행을 일시 정지 가능
- 현재 변수들의 값을 실시간으로 확인 가능
- 예외 발생 시 즉시 중단되어 상세한 오류 정보 제공
- 스택 트레이스를 통해 호출 흐름 추적 가능

2. Flask의 역할 요약

Flask는 웹 애플리케이션 개발을 위한 경량 프레임워크입니다. Flask는 다음과 같은 핵심 기능들을 제공합니다.

- 웹 서버 구현 및 관리
- 라우팅 시스템 제공
- 템플릿 엔진 통합
- 요청과 응답 처리
- 개발 서버 제공

특히 개발 과정에서 강력한 개발 서버와 인터랙티브 디버거를 포함하여 효율적인 개발 환경을 제공합니다.

3. 0.0.0.0으로 설정 시 의미와 장단점

모든 네트워크 인터페이스에서 접근을 허용하며, 다른 기기에서 애플리케이션을 테스트할 때 유용합니다.

장점:

- 모든 네트워크 인터페이스에서 접근 가능
- 다른 기기에서 테스트 용이
- 여러 IP 주소를 한 번에 처리 가능

단점:

- 보안 취약성 증가 - 개발 환경에서는 권장되지 않음

4. 127.0.0.1 접속 vs 내부 IP 접속 차이

127.0.0.1 (localhost)

- 로컬 머신 내부에서만 접근 가능한 특별한 IP 주소
- 외부 네트워크에서는 절대 접근 불가능
- 가장 높은 수준의 보안성을 제공
- 모든 운영체제에서 동일하게 작동

내부 IP (예: 192.168.0.x)

- 로컬 네트워크 내의 다른 장치에서 접근 가능한 IP 주소
- 라우터나 네트워크 설정에 따라 변경될 수 있음
- 동일 네트워크 내의 다른 기기에서 접근 가능
- 네트워크 설정에 따라 접근 권한이 달라질 수 있음

5. 포트 번호의 의미와 기본 충돌 시 해결 방안

포트 번호는 네트워크 서비스를 식별하기 위한 고유 번호로, 0부터 65535까지 사용할 수 있습니다. 포트 충돌이 발생할 때는 다른 포트를 사용합니다.