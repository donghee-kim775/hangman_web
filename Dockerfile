# 베이스 이미지로 Python 3.8-slim-buster 사용
FROM python:3.8-slim-buster

# 이미지 유지 관리자 정보
LABEL Maintainer="ehdgml7755@gmail.com"

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 파일 복사
COPY app.py ./
COPY requirements.txt ./

# 필요한 패키지 설치
RUN pip3 install -r requirements.txt

# 컨테이너가 노출할 포트 설정
EXPOSE 4000

# 컨테이너 시작 시 실행할 명령어
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000"]
