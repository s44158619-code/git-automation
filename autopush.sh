#!/bin/bash

echo "Git 자동 커밋 & 푸시 스크립트 시작..."

git add .
echo "✅ 모든 변경사항을 Staging Area에 추가했습니다."

if [ -z "$1" ]; then 
  COMMIT_MESSAGE="Auto-commit on $(date +'%Y-%m-%d %H:%M:%S')" 
else 
  COMMIT_MESSAGE="$1" 
fi
echo "💬 커밋 메시지: '$COMMIT_MESSAGE'"

git commit -m "$COMMIT_MESSAGE"
if [ $? -ne 0 ]; then
  echo "❌ 커밋 실패! 변경사항이 없거나 오류가 발생했습니다."
  exit 1
fi
echo "✅ 커밋 완료!"

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "🌳 현재 브랜치: $CURRENT_BRANCH"

echo "🚀 원격 저장소(origin)의 '$CURRENT_BRANCH' 브랜치로 푸시합니다..."
git push origin "$CURRENT_BRANCH"
if [ $? -ne 0 ]; then
  echo "❌ 푸시 실패! 원격 저장소 연결 또는 권한을 확인하세요."
  exit 1
fi
echo "✅ 푸시 완료!"

echo "🎉 Git 자동화 스크립트 성공적으로 완료되었습니다."