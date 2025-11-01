// 다항식 더하기(120863)

import Foundation

func solution(_ polynomial:String) -> String {
    // components 메서드 사용을 위해서는 Foundation 프레임워크 import 필수
    let arr = polynomial.components(separatedBy: " + ")
    var varResult = 0
    var constResult = 0
    for a in arr {
        let tmp = Array(a)
        let lastIdx = tmp.count - 1

        if tmp[lastIdx] == "x" {
            if lastIdx == 0 {
                varResult += 1
            } else {
                varResult += Int(String(tmp[0..<lastIdx]))!
            }
        } else {
            constResult += Int(String(tmp))!
        }
    }

    var answer = ""

    if varResult > 0 {
        answer += varResult == 1 ? "x" : "\(varResult)x"
    }
    
    if constResult > 0 {
        answer += answer == "" ? "\(constResult)" : " + \(constResult)"
    }

    return answer
}