# 피보나치 수

### **문제 설명**

피보나치 수는 F(0) = 0, F(1) = 1일 때, 1 이상의 n에 대하여 F(n) = F(n-1) + F(n-2) 가 적용되는 수 입니다.

예를들어

- F(2) = F(0) + F(1) = 0 + 1 = 1
- F(3) = F(1) + F(2) = 1 + 1 = 2
- F(4) = F(2) + F(3) = 1 + 2 = 3
- F(5) = F(3) + F(4) = 2 + 3 = 5

와 같이 이어집니다.

2 이상의 n이 입력되었을 때, n번째 피보나치 수를 1234567으로 나눈 나머지를 리턴하는 함수, solution을 완성해 주세요.

### 제한 사항

- n은 2 이상 100,000 이하인 자연수입니다.

### 입출력 예

<img width="345" alt="image" src="https://user-images.githubusercontent.com/45925685/192149325-3d0fbe82-23bb-4150-8e0d-4715a554d33f.png">



### 입출력 예 설명

피보나치수는 0번째부터 0, 1, 1, 2, 3, 5, ... 와 같이 이어집니다.

### 문제가 잘 안풀린다면😢

힌트가 필요한가요? [코딩테스트 연습 힌트 모음집]으로 오세요! → [클릭](https://school.programmers.co.kr/learn/courses/14743?itm_content=lesson12945)

---

# 문제 풀이

피보나치 수에 대한 개념은 처음 봤지만, 풀이를 고민하다가 `n = (n-1) + (n-2)` 를 보고 재귀함수를 떠올렸다.

재귀가 익숙하지 않아서 걱정했지만, 다른 방법이 떠오르지 않아서 우선 재귀로 시도해보았다.

## 재귀 시도

```swift
func solution(_ n:Int) -> Int {
    
    guard n >= 2 else {
        return n
    }
    
    let returnNum = solution(n - 1) + solution(n - 2)
    return returnNum % 1234567
}
```

F(0)과 F(1)의 값이 고정값으로 정해져 있고, F(0) 미만의 경우는 고려하지 않도록 되어있어서, 매개변수 n이 1 이하가 될 때까지 재귀를 호출하고, 최소 n인 2 (0 + 1)가 되었을 때 차례대로 재귀를 타고 올라오며 피보나치 수를 순차적으로 계산하도록 했다.

자 이제 테스트 케이스를 돌려보자.

두근두근…

<img width="545" alt="image" src="https://user-images.githubusercontent.com/45925685/192149342-704fef84-7d60-4116-8ce1-48949a4f3399.png">


구현 내용이 예상대로 잘 흘러간 것 같다.

기쁜 마음으로 제출을 해보았는데!

### 재귀 방식 → 시간 초과

<img width="546" alt="image" src="https://user-images.githubusercontent.com/45925685/192149364-6828e8d8-a5de-4005-a00a-fa7559d2bebb.png">



케이스 절반 이상이 시간 초과 되었다.

“2 미만 시 재귀 종료도 설정했고, 그게 문제라면 케이스 1 ~ 6도 실패했을텐데” 하고 고민하던 중에 제한 사항이 눈에 들어왔다.

<img width="544" alt="image" src="https://user-images.githubusercontent.com/45925685/192149384-11b9a8f8-197a-4be1-ac41-9494e0451c5c.png">


만약에 n이 10만이면 연산을 얼마나 하는건지에 대한 생각이 들면서 왜 시간 초과 케이스가 있는지 알게되었다.

다른 연산 방법이 필요할 것 같다.

## For문 시도

감이 오는 방법이 없어서 for문으로 시도해보기로 하였다.

어떻게 해야겠다는 생각이 바로 떠오른건 아니었지만, 0부터 n까지 순차 연산이 필요하기 때문에 활용할 수 있을 것 같았다.

```swift
func solution(_ n:Int) -> Int {
    
    var num1 = 0
    var num2 = 1
    var num3 = 0

    for _ in 2...n {
        num3 = num1 + num2
        num1 = num2
        num2 = num3
    }
    
    return num3 % 1234567
}
```

F(0)과 F(1)이 고정값이므로 각각 num1과 num2에 할당해두고, for문을 돌렸다.

직전 num1과 num2를 num3(이번 F(_)의 값)에 할당해두고, 다음 순서를 위해 num1과 num2를 갱신해주었다.

이렇게 n번 째까지 계산한 뒤, F(n)이 할당되어있는 num3에 1234567를 나눈 나머지를 리턴했다.

<img width="544" alt="image" src="https://user-images.githubusercontent.com/45925685/192149417-920eb419-27d9-44db-9d50-a132c5cabf81.png">

이번에도 같은 케이스에서 통과하지 못했다.

그런데 이번에는 시간 초과가 아니라 실패라고 나오게 되었다.

재귀 → for문으로 변경하면서, 연산량으로 인한 문제는 해결된 것 같았고, 다른 문제가 발생한 듯 하다.

케이스가 같은 것을 보니, n이 큰 숫자로 주어지는 케이스인 것 같은데 실패 원인을 알 수가 없었다.

그래서 playground로 옮겨가서 print 테스트를 하다가 한 가지를 알게 되었다.

<img width="543" alt="image" src="https://user-images.githubusercontent.com/45925685/192149457-cfcfdc2b-33dc-4198-b5cd-8cc6a5c190d6.png">


피보나치 수가 100도 되기전에 이미 자릿수가 19를 넘어갔고, 64bit 정수형인 Swift의 Int 타입으로는 저장할 수가 없었다.

### 나머지 연산자의 특징 - 분배 법칙

이를 해결하기 위해 구글링을 이것저것 해보다가 이런 내용을 발견했다.

[모듈러 산술(Modular Arithmetic)](https://sskl660.tistory.com/75)

어떤 수의 나머지를 활용한 모듈러 산술에 관한 내용으로, 이해가지 않을만큼 다양한 법칙이 있었지만 그 중에 분배 법칙에 대한 내용이 있었다.

<img width="546" alt="image" src="https://user-images.githubusercontent.com/45925685/192149479-51810c00-ebac-456e-902e-058c343132dd.png">


요약하면 두 수를 더하기, 빼기, 곱하기 한 것의 나머지 = 두 수의 각 나머지를 더하기, 곱하기, 빼기 한 것의 나머지라는 내용이었다.

이를 활용하면 num1과 num2를 64bit 이상으로 커지지 않도록 연산할 수 있을 것으로 예상되었다.

### 분배 법칙 적용 테스트

<img width="542" alt="image" src="https://user-images.githubusercontent.com/45925685/192149494-4782cfef-0b67-4ed1-9d2d-2fb491737697.png">


모든 단계에 % 연산을 추가하니, 오버플로우가 나지 않고 연산을 수행할 수 있게되었다!

이제 프로그래머스에도 적용해보자.

### 모든 케이스 성공

```swift
func solution(_ n:Int) -> Int {
    
    var num1 = 0
    var num2 = 1
    var num3 = 0
    
    for _ in 2...n {
        num3 = num1 + num2
        num1 = num2 % 1234567
        num2 = num3 % 1234567
    }
    
    return num3 % 1234567
}
```

<img width="543" alt="image" src="https://user-images.githubusercontent.com/45925685/192149519-a5397e1a-68ac-4060-a6c6-b487958a38ae.png">


제출 결과 무사히 통과하게 되었고, 이전 실패 원인이 오버플로우임을 알게 되었다.

## 다른 사람의 풀이

여러번 시행착오를 겪은 문제인만큼, 다른 사람들은 어떻게 풀었는지 궁금해서 한번 둘러보았다.

비슷한 방법으로 해결한 사람들이 대다수였는데, 그 중에 눈에 띄는 풀이 방식이 있었다.

> 닉네임 ‘TheVoid’ 님의 풀이 코드입니다.
> 

```swift
struct matrix2x2 {
    var _00, _01, _10, _11: Int

    init(_00: Int, _01: Int, _10: Int, _11: Int) {
        self._00 = _00 % 1234567
        self._01 = _01 % 1234567
        self._10 = _10 % 1234567
        self._11 = _11 % 1234567
    }

    init(m: matrix2x2) {
        self._00 = m._00 % 1234567
        self._01 = m._01 % 1234567
        self._10 = m._10 % 1234567
        self._11 = m._11 % 1234567
    }
}

func *(left: matrix2x2, right: matrix2x2) -> matrix2x2 {
    return matrix2x2(_00: left._00 * right._00 + left._10 * right._01,
                     _01: left._00 * right._10 + left._10 * right._11,
                     _10: left._10 * right._00 + left._11 * right._01,
                     _11: left._10 * right._10 + left._11 * right._11)
}

func solution(_ n:Int) -> Int {
    var m = matrix2x2(_00: 1, _01: 0, _10: 0, _11: 1)
    var fibo = matrix2x2(_00: 1, _01: 1, _10: 1, _11: 0)
    var val = n

    while val > 0 {
        if val % 2 == 1 {
            m = m * fibo
        }

        fibo = fibo * fibo
        val /= 2
    }

    return m._01
}
```

…

궁금해서 한참을 들여다봤는데, 구조체 이름과 매개변수명으로 행렬 활용인 것은 알 수 있었지만, 로직이 어떻게 돌아가는지는 이해하기가 어려웠다. 프로그래머보다는 수학자에 가까워 보이는 방식이었다.

그러면서 나중에는 이 정도 사고를 할 수 있어야하는걸까? 하는 생각도 들었던 것 같다.

시간이 지나서 다시 이 페이지에 왔을 때, 이 코드를 이해할 수 있는 날이 오길 기대해본다.
