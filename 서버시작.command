#!/bin/bash

# 프로젝트 폴더로 이동
cd "$(dirname "$0")"

# 포트 설정
PORT=8888

# 이미 실행 중이면 종료
lsof -ti :$PORT | xargs kill -9 2>/dev/null

# 브라우저 열기 (서버 시작 후 1초 대기)
sleep 1 && open "http://localhost:$PORT" &

# 서버 시작
echo "서버 시작: http://localhost:$PORT"
echo "종료하려면 이 창을 닫으세요."
python3 -m http.server $PORT
