# LOCAL PHP 환경 구성

해당 문서는 로컬 PHP 환경 구성에 대한 가이드를 제공합니다.

기본적으로 8.2 버전과 7.4 버전을 지원합니다.

## 설치

### GIT CLONE
```bash
git clone 
```

### .gitkeep 파일 삭제
```bash
find . -name .gitkeep -exec rm -f {} \;
```

## 실행

### 주의사항

실행 전 해당 REPOSITORY의 DATABASE COMPOSE 파일을 실행하여 데이터베이스 컨테이너를 먼저 생성합니다.

이 것은 PHP 컨테이너의 NETWORK를 DATABASE 컨테이너와 연결하기 위함입니다.

### Rocky Linux Pull
```bash
docker pull rockylinux:8
```

### COMPOSE 실행
```bash
docker-compose -f .docker/docker-compose.yaml up -d
```

버전별로 실행하고 싶을 경우 docker-compose 파일 내용 중 필요하지 않은 버전을 주석 처리하고 실행합니다.

COMPOSE 실행 실패 시 yaml 파일을 수정한 뒤 캐시를 무시하기 위해 빌드 후 실행합니다.

```bash
docker-compose -f .docker/docker-compose.yaml build --no-cache
```

## 접속

### PHPINFO 확인

PHP 7.4 버전의 경우 `http://localhost:8080/phpinfo.php` 경로로 접속하여 설치를 확인합니다.

PHP 8.2 버전의 경우 `http://localhost:8090/phpinfo.php` 경로로 접속하여 설치를 확인합니다.

### DATABASE 연결 확인

DATABASE 연결 확인은 아직 미구현 상태입니다.

### Quick Starter

`project` 디렉토리 내부의 `quick-starter` 디렉토리에 Shell Script 파일을 실행하여 빠르게 시작할 수 있습니다.

```bash
cd project/quick-starter

sh quick-starter.sh
```