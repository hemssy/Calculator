# Swift로 계산기 만들기

엑스코드 플레이그라운드에서 Swift 문법을 응용해서 간소화된 버전의 계산기를 만들어보자!

---
## Stacks 🐈
### Environment
<img src="https://img.shields.io/badge/Xcode-1575F9.svg?style=for-the-badge&logo=Xcode&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">

### Development
<img src="https://img.shields.io/badge/Swift-F05138.svg?style=for-the-badge&logo=swift&logoColor=white">   

### OS
<img src="https://img.shields.io/badge/macOS-000000.svg?style=for-the-badge&logo=apple&logoColor=white">

### Communication
<img src="https://img.shields.io/badge/notion-000000?style=for-the-badge&logo=notion&logoColor=white">

---
## 구현 포인트

- 더하기/빼기/곱하기/나누기/나머지 연산을 각 클래스로 분리

- AbstractOperation 프로토콜로 공통 연산 정의

- 전략 패턴 활용해서 Calculator 클래스는 전략 객체 교체만으로 다양한 연산 가능
