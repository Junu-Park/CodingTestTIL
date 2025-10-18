// 한 번만 등장한 문자(120896)

func solution(_ s:String) -> String {
    var result: [Character: Int] = [:]

    for char in s {
        result[char, default: 0] += 1
    }

    return String(result.filter { $0.value == 1 }.map { $0.key }.sorted())
}