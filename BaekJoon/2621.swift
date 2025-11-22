// 카드놀이(2621)

var nums: [Int] = []
var colors: [Character] = []

for _ in 0..<5 {
    let input = readLine()!.split(separator: " ")

    nums.append(Int(input[1])!)
    colors.append(contentsOf: input[0])
}

let numsSet = Set(nums)
let colorsSet = Set(colors)

nums.sort()

var isAllSameColor = colorsSet.count == 1

var isContinue = true
for i in 1...4 {
    if nums[i - 1] + 1 != nums[i] {
        isContinue = false
        break
    }
}

var dupli4 = 0
var dupli3 = 0
var dupli2 = 0
var dupli22 = 0
for n in numsSet {
    let tempCnt = nums.filter { $0 == n }.count
    if tempCnt == 4 {
        dupli4 = n
        break
    }

    if tempCnt == 3 {
        dupli3 = n
    }

    if tempCnt == 2 {
        if dupli2 != 0 {
            dupli22 = n
        } else {
            dupli2 = n
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