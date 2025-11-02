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

func solution2(_ A:String, _ B:String) -> Int {
    let full = B + B

    if let range = full.range(of: A) {
        return full.distance(from: full.startIndex, to: range.lowerBound)
    } else {
        return -1
    }
}