// 문자열 밀기(120921)

func solution(_ A:String, _ B:String) -> Int {
    let arr = Array(A)

    let count = A.count
    for offset in 0..<count {
        if String(arr[(A.count - offset)...] + arr[0..<A.count - offset]) == B {
            return offset
        }
    }

    return -1
}