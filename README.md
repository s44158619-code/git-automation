# 성윤오 포트폴리오

# Git 자동화 스크립트 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
**자주 반복되는 Git 커밋 및 푸시 작업을 자동화하는 Shell 스크립트입니다.** 단순한 명령 한 줄로 변경 사항을 커밋하고, 자동 메시지 생성과 원격 푸시까지 처리합니다.

---

## ✨ 주요 기능

- **원클릭 실행:** `git add`, `git commit`, `git push` 명령어를 한 번에 실행합니다.
- **자동 커밋 메시지:** 커밋 메시지를 입력하지 않으면 현재 날짜와 시간으로 자동 생성합니다. (`Auto-commit on YYYY-MM-DD HH:MM:SS`)
- **사용자 정의 메시지:** 스크립트 실행 시 원하는 커밋 메시지를 직접 지정할 수 있습니다.
- **오류 처리:** 커밋이나 푸시 과정에서 오류 발생 시 스크립트를 중단하고 메시지를 출력합니다.

---

## 🛠️ 사용 방법

1.  **스크립트 다운로드 또는 복제:**
    이 저장소를 로컬 컴퓨터로 복제합니다.

    ```bash
    git clone [https://github.com/s44158619-code/git-automation.git](https://github.com/s44158619-code/git-automation.git)
    cd git-automation
    ```

    또는 `autopush.sh` 파일을 직접 다운로드하여 Git으로 관리하는 프로젝트 폴더 안에 넣습니다.

2.  **실행 권한 부여 (최초 1회):**
    Git Bash 또는 유사한 터미널 환경에서 아래 명령어를 실행하여 스크립트에 실행 권한을 줍니다.

    ```bash
    chmod +x autopush.sh
    ```

3.  **스크립트 실행:**
    - **자동 메시지로 실행:**
      ```bash
      ./autopush.sh
      ```
    - **원하는 메시지로 실행:**
      ```bash
      ./autopush.sh "여기에 커밋 메시지를 입력하세요"
      ```

---

## 📝 사용 예시

```bash
# 변경사항 만들고 실행 (자동 메시지)
./autopush.sh

# 출력 결과:
# Git 자동 커밋 & 푸시 스크립트 시작...
# ✅ 모든 변경사항을 Staging Area에 추가했습니다.
# 💬 커밋 메시지: 'Auto-commit on 2025-10-25 17:45:17'
# ✅ 커밋 완료!
# 🌳 현재 브랜치: main
# 🚀 원격 저장소(origin)의 'main' 브랜치로 푸시합니다...
# ✅ 푸시 완료!
# 🎉 Git 자동화 스크립트 성공적으로 완료되었습니다.

# 다른 변경사항 만들고 실행 (사용자 메시지)
./autopush.sh "Update feature X"

# 출력 결과:
# Git 자동 커밋 & 푸시 스크립트 시작...
# ✅ 모든 변경사항을 Staging Area에 추가했습니다.
# 💬 커밋 메시지: 'Update feature X'
# ✅ 커밋 완료!
# ... (푸시 과정) ...
# 🎉 Git 자동화 스크립트 성공적으로 완료되었습니다.
```
