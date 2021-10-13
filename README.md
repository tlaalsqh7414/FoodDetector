# FoodDetector
FoodDetector

## Test id
아이디 : user0001

비밀번호 : pwd0000

## Contribute
### 1. git clone
git clone https://github.com/CD2FoodDetector/FoodDetector.git

### 2. 브랜치 만들기
git checkout -b [브랜치명]

### 3. 수정 / git add / commit
git add [파일명]

git commit
(수정 사항을 제목에 다 담기 힘들면 내용에라도 한글로 적어주세요)

### *4. 중간에 다른 사람의 작업으로 main이 수정되었을 때
git pull origin main

git checkout [본인브랜치]

git merge main (아니면 rebase)
-> git status로 conflict 생긴 파일 확인 후, 해당 파일 열어서 conflict 해결

(git rebase --continue)

합친 후에 본인 브랜치에서 계속 작업

### 5. push
git push origin [본인브랜치]

### 6. PR
github에서 pull request - 필요시 팀원들이 테스트 해보고 오류 없으면 merge

