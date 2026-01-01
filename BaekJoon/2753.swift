// 윤년(2753)

let year = Int(readLine()!)!

let multi4 = year % 4 == 0 
let multi100 = year % 100 == 0
let multi400 = year % 400 == 0

if multi400 {
    print(1)
} else if multi4 && !multi100 {
    print(1)
} else {
    print(0)
}