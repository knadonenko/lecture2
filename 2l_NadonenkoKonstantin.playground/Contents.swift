import Foundation

func oddNum(_ value: Int) -> Bool {
    return value % 2 == 0
}

func divideByThree(_ value: Int) -> Bool {
    return value % 3 == 0
}

var values = Array(0...100)

for i in values.reversed() {
    let val = values[i]
    if oddNum(val) || divideByThree(val) {
        values.remove(at: i)
    }
}

print(values)

var filtered = values.filter {
    !oddNum($0) && !divideByThree($0)
}
print(filtered)

func fib(_ val: Int) -> Double {
    guard val > 1 else { return Double(val) }
    var a: Double = 0
    var b: Double = 1
    for _ in 2...val {
        let temp: Double = b
        b = a + b
        a = temp
    }
    return b;
}

var fibArr: [Double] = []
for i in 0...100 {
    fibArr.append(fib(i))
}

print(fibArr)

func prime(_ val: Int) -> Bool {
    if val < 2 {
        return false;
    }

    for i in 2..<val {
        if val % i == 0 {
            return false;
        }
    }
    return true
}

func primeArr () -> [Int] {
    var results = [Int]()
    var p = 2
    while results.count < 100 {
        if prime(p) {
            results.append(p)
        }
        p += 1
    }
    
    return results
}
print(primeArr())
