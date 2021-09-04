# KTEEN
**_"학교 밖 청소년을 위한 복지 알림 서비스"_**

### 🚩 **기획배경**

- 약 40만명의 학교 밖 청소년이 존재
- 학교를 중심으로 시행되는 청소년 복지 정책으로 인하여 학교 밖 청소년은 복지에서 소외
- 재학 중인 청소년과 학교 밖 청소년의 연간 지원 금액은 약 20~30배의 차이
- 청소년 복지 정보는 파편화가 심각

### 🚩 **기획목표**

- 청소년 복지 정보를 하나의 플랫폼으로 확인할 수 있는 서비스 개발
- 청소년 복지 정보 제공과 알림을 통한 복지 사각지대 해소

### 🚩 **발전 가능성**

- 보건복지부 혹은 교육부와 협력을 통한 더 많은 복지 정보 제공
- UI/UX의 지속적인 개선과 기능 개선을 통한 서비스 런칭 준비

### 사용 오픈소스 API

[공공데이터 포털 | 경기도_청소년관련중앙부처복지서비스 현황](https://www.data.go.kr/data/15058937/openapi.do)

[공공데이터 포털 | 경기도_청소년 쉼터 현황](https://www.data.go.kr/data/15057986/openapi.do)

## Software Stack

`송영범` 애플리케이션 기획 및 개발

`권지한` 애플리케이션 기획 및 QA

`김진원` 애플리케이션 UI/UX 기획 및 설계

### 모바일 어플리케이션

`Flutter` 프레임워크를 기반으로 개발, `Google Maps API` 라이브러리를 사용

iOS: iOS 버전 9.0 이상

Android: Android 4.4W (minSDK 20) 이상

## How to build

1. Flutter 공식 문서를 참고하여 Flutter SDK 2.2.3을 설치한다.

    > 공식문서: [https://flutter-ko.dev/docs/get-started/install](https://flutter-ko.dev/docs/get-started/install)

2. Flutter 공식 문서를 참고하여 Android Studio/IntelliJ 혹은 VS CODE 설치 후 Flutter와 Dart 플러그인을 설치한다.

    > 공식문서: [https://flutter-ko.dev/docs/get-started/editor](https://flutter-ko.dev/docs/get-started/editor)

3. google_maps_flutter 문서를 참고하여 Google Maps API Key를 발급받아 프로젝트에 적용한다.

    >  google_maps_flutter 문서: [https://pub.dev/packages/google_maps_flutter](https://pub.dev/packages/google_maps_flutter)

4. 에디터에서 플러터 프로젝트 폴더(Flutter-Application/easy_yum)에 이동한 후 

    > $ flutter pub get

    명령을 실행하여 패키지를 다운로드 한다.

5. 에디터에서 실행할 Android 기기를 선택하여 'main.dart'를 Run한다.

## Demo Video

[![KTEEN 프로젝트 발표 영상](http://img.youtube.com/vi/TctfC9Y-smw/0.jpg)](https://youtu.be/TctfC9Y-smw)
