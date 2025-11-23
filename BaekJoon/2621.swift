// 카드놀이(2621)

var nums: [Int] = []
var colorsSet: Set<Character> = []

for _ in 0..<5 {
    let input = readLine()!.split(separator: " ")

    nums.append(Int(input[1])!)
    colorsSet.insert(input[0].first!)
}

var numsDict: [Int: Int] = [:]
for num in nums {
    numsDict[num, default: 0] += 1
}

nums.sort()

var isAllSameColor = colorsSet.count == 1

// 함수형, allSatisfy 메서드 사용
let isContinue = (1..4).allSatisfy { nums[$0] == nums[$0 - 1] + 1 }

var dupli4 = 0
var dupli3 = 0
var dupli2 = 0
var dupli22 = 0
for (num, count) in numsDict {
    if count == 4 {
        dupli4 = num
        break
    }

    if count == 3 {
        dupli3 = num
    }

    if count == 2 {
        if dupli2 != 0 {
            dupli22 = num
        } else {
            dupli2 = num
        }
    }
}

var answer = 0
let maxNum = nums.last!

answer = 100 + maxNum

if dupli2 != 0 {
    if dupli22 != 0 {
        let bigger = max(dupli2, dupli22)
        let smaller = min(dupli2, dupli22)
        answer = 300 + (bigger * 10) + smaller
    } else {
        answer = 200 + dupli2
    }
}

if dupli3 != 0 {
    answer = 400 + dupli3
}

if isContinue {
    answer = 500 + maxNum
}

if isAllSameColor {
    answer = 600 + maxNum
}

if dupli3 != 0 && dupli2 != 0 {
    answer = 700 + (dupli3 * 10) + dupli2
}

if dupli4 != 0 {
    answer = 800 + dupli4
}

if isAllSameColor && isContinue {
    answer = 900 + maxNum
}

print(answer)