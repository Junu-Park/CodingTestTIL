// A+B - 5(10952)

while let input = readLine(), input != "0 0" {
    print(input.split(separator: " ").map { Int($0)! }.reduce(0, +))
}