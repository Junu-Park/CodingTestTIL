// 숫자야구(2503)

let n = Int(readLine()!)!

// 가능한 모든 조합 생성
var answer: Set<String> = []
for i in 111 ... 999 {
    let tempSet = Set(String(i).map { Int(String($0))! })
    if tempSet.count < 3 || tempSet.contains(0) {
        continue
    }
    answer.insert(String(i))
}

for _ in 0 ..< n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let numArr = input[0].map { Int(String($0))! }
    let stk = Int(input[1])
    let ball = Int(input[2])

    var result: Set<String> = []

    // 위치도 확인해야하니, 볼이거나 스트라이크인 숫자를 직접 뽑기 보다 인덱스로 뽑기

    // 0스, 0볼
    if stk == 0, ball == 0 {
        for a in answer {
            let aSet = Set(a.map { Int(String($0))! })

            if Set(numArr).intersection(aSet).count == 0 {
                result.insert(a)
            }
        }
        // 0스, 1볼
    } else if stk == 0, ball == 1 {
        for idx in 0 ..< 3 {
            let num = numArr[idx]

            for a in answer {
                let aArr = a.map { Int(String($0))! }

                if aArr[idx] == num { continue }
                if Set(aArr).contains(num), Set(numArr).intersection(Set(aArr)).count == 1 {
                    result.insert(a)
                }
            }
        }
        // 0스, 2볼
    } else if stk == 0, ball == 2 {
        for idx1 in 0 ..< 3 {
            let num1 = numArr[idx1]
            for idx2 in 0 ..< 3 {
                if idx1 == idx2 { continue }
                let num2 = numArr[idx2]

                for a in answer {
                    let aArr = a.map { Int(String($0))! }

                    if aArr[idx1] == num1 || aArr[idx2] == num2 { continue }
                    if Set(aArr).contains(num1), Set(aArr).contains(num2), Set(numArr).intersection(Set(aArr)).count == 2 {
                        result.insert(a)
                    }
                }
            }
        }
        // 0스, 3볼
    } else if stk == 0, ball == 3 {
        for idx1 in 0 ..< 3 {
            let num1 = numArr[idx1]
            for idx2 in 0 ..< 3 {
                if idx1 == idx2 { continue }
                let num2 = numArr[idx2]

                let idx3 = 3 - idx1 - idx2
                let num3 = numArr[idx3]

                for a in answer {
                    let aArr = a.map { Int(String($0))! }

                    if aArr[idx1] == num1 || aArr[idx2] == num2 || aArr[idx3] == num3 { continue }
                    if Set(aArr).contains(num1), Set(aArr).contains(num2), Set(aArr).contains(num3), Set(numArr).intersection(Set(aArr)).count == 3 {
                        result.insert(a)
                    }
                }
            }
        }
        // 1스, 0볼
    } else if stk == 1, ball == 0 {
        for idx in 0 ..< 3 {
            let num = numArr[idx]

            for a in answer {
                let aArr = a.map { Int(String($0))! }

                if aArr[idx] != num { continue }
                if Set(numArr).intersection(Set(aArr)).count == 1 {
                    result.insert(a)
                }
            }
        }
        // 1스, 1볼
    } else if stk == 1, ball == 1 {
        for stkIdx in 0 ..< 3 {
            let stkNum = numArr[stkIdx]

            for ballIdx in 0 ..< 3 {
                if stkIdx == ballIdx { continue }

                let ballNum = numArr[ballIdx]

                for a in answer {
                    let aArr = a.map { Int(String($0))! }

                    let notIdx = 3 - stkIdx - ballIdx

                    if aArr[stkIdx] != stkNum || aArr[notIdx] != ballNum { continue }
                    if Set(numArr).intersection(Set(aArr)).count == 2 {
                        result.insert(a)
                    }
                }
            }
        }
        // 1스, 2볼
    } else if stk == 1, ball == 2 {
        for stkIdx in 0 ..< 3 {
            let stkNum = numArr[stkIdx]

            for ballIdx in 0 ..< 3 {
                if stkIdx == ballIdx { continue }

                let ballNum = numArr[ballIdx]

                for a in answer {
                    let aArr = a.map { Int(String($0))! }

                    let otherBallIdx = 3 - stkIdx - ballIdx
                    let otherBallNum = numArr[otherBallIdx]

                    if aArr[stkIdx] != stkNum || aArr[otherBallIdx] != ballNum || aArr[ballIdx] != otherBallNum { continue }
                    if Set(numArr).intersection(Set(aArr)).count == 3 {
                        result.insert(a)
                    }
                }
            }
        }
        // 2스, 0볼
    } else if stk == 2, ball == 0 {
        for stk1Idx in 0 ..< 3 {
            let stk1Num = numArr[stk1Idx]

            for stk2Idx in 0 ..< 3 {
                if stk1Idx == stk2Idx { continue }

                let stk2Num = numArr[stk2Idx]

                for a in answer {
                    let aArr = a.map { Int(String($0))! }

                    if aArr[stk1Idx] != stk1Num || aArr[stk2Idx] != stk2Num { continue }
                    if Set(numArr).intersection(Set(aArr)).count == 2 {
                        result.insert(a)
                    }
                }
            }
        }
        // 3스, 0볼
    } else if stk == 3, ball == 0 {
        result.insert(numArr.map { String($0) }.joined())
    }

    answer = answer.intersection(result)
}

print(answer.count)
