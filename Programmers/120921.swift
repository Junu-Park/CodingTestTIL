// 문자열 밀기(120921)

func solution(_ A:String, _ B:String) -> Int {
    var offset = 0
    var answer = -1
    let arr = Array(A)
    while offset < A.count {
        if offset != 0 {
            if String(arr[(A.count - offset)...] + arr[0..<A.count - offset]) == B {
                answer = offset
                break
            }
        } else {
            if A == B {
                answer = offset
                break
            }
        }
        offset += 1
    }

    return answer
}