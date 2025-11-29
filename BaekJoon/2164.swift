// 카드2(2164)

let n = Int(readLine()!)!

var cardQueue = Array(1...n)
var front = 0
while front + 1 < cardQueue.count {
    front += 1
    cardQueue.append(cardQueue[front])
    front += 1
}

print(cardQueue[front])