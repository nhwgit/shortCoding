# shortCoding
<img width="1142" height="377" alt="image" src="https://github.com/user-attachments/assets/e9493ccc-b281-4043-b1fc-f0cec9b48f24" />

<img width="1146" height="389" alt="image" src="https://github.com/user-attachments/assets/fc42f3c0-b942-45f1-acd2-dc65a7aa6e5e" />



10350번 문제: https://www.acmicpc.net/short/status/10350

1006번 문제: https://www.acmicpc.net/short/status/1006

백준 프로필: https://www.acmicpc.net/user/life_is_choice

solved.ac 프로필: https://solved.ac/profile/life_is_choice

# BOJ 1006, 10350 Short Coding 1st Place 🏆
백준 온라인 저지(BOJ) 최상위 난이도 및 유명 문제인 **1006번, 10350번 문제 숏코딩 1위** 달성 코드 및 회고록입니다.

### ⚡ 1. 극한의 최적화와 Side-Effect
숏코딩은 극한의 예술이자 스포츠입니다. 1위를 달성하기 위해 일반적인 방식을 버리고, 문법의 Side-effect를 적극 활용하며 알고리즘 자체를 비틀어 접근했습니다. 

### ⏱️ 2. 바이트(Byte)와 밀리초(ms)의 줄타기
가장 어려웠던 것은 시간 제한의 압박이었습니다. 
- **코드 단축의 함정:** `(i+=1)%n`을 `i=-~i%n`으로 변경하면 코드는 짧아지지만, 1억 번의 루프에서는 미세한 오버헤드가 누적되어 시간 초과가 발생합니다.
- **Short-circuit 활용:** `a && b` 연산 시 `a`가 `false`면 `b`가 평가되지 않는다는 점을 이용해 불필요한 연산을 건너뛰는 등 내부 동작을 극한으로 통제했습니다.

### 🚧 3. 언어 성능의 아쉬움
컴파일러 성능이 우수한 메이저 언어였다면 시간 제한에서 훨씬 자유로웠을 것입니다. 백준 플랫폼 자체의 시간 보정이 존재하지만, Ruby의 성능적 한계를 극복하기 위해서는 코드 레벨에서의 뼈를 깎는 최적화가 필수적이었습니다.

### 🐍 Python vs 💎 Ruby : 복리의 마법
작업을 진행하며 약 20년 전 경쟁 관계였던 Python과 Ruby의 엇갈린 행보를 떠올렸습니다. 두 언어 모두 빈약한 생태계와 낮은 성능으로 출발했지만, 모종의 이유로 파이썬이 얻은 미세한 우위(1.01)는 엄청난 나비효과를 만들었습니다.

* `1.01` (약간의 우위) ^ 1000 = **20,959**
* `0.99` (약간의 아쉬움) ^ 1000 = **0.00004**

Python은 이 복리 효과를 통해 생태계 성장과 성능 개선의 선순환을 이뤄냈고, Ruby는 그 흐름에 탑승하지 못했습니다. 기술의 세계에서 미세한 차이가 얼마나 무서운 결과를 낳는지 보여주는 대표적 사례라 생각합니다.

### 🏁 Conclusion
비록 지금은 비주류의 길을 걷고 있지만, Ruby만의 아름다운 문법과 매력은 여전히 유효합니다. 매우 어려울 것 같지만, 언젠가 다시 **Ruby 붐이 오기를 진심으로 바랍니다.**
