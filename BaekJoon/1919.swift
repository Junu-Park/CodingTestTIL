// 애너그램 만들기(1919)

let aWord = readLine()!
let bWord = readLine()!

var dict = [Character: Int]()

for a in aWord {
    dict[a, default: 0] += 1 
}

for b in bWord {
    dict[b, default: 0] -= 1 
}

let answer = dict.values.map { abs($0) }.reduce(0, +)

print(answer)