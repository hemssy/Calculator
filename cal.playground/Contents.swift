class AddOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

class SubstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
}

class MultiplyOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
}

class DivideOperation {
    func execute(_ a: Double, _ b: Double) -> Double? {
        if b == 0 {
            return nil
        }
        return a / b
    }
}

class RemainOperation {
    func execute(_ a: Double, _ b: Double) -> Double? {
        if b == 0 {
            return nil
        }
        return a.truncatingRemainder(dividingBy: b)
    }
}

class Calculator {
    
    let addOp = AddOperation()
    let minusOp = SubstractOperation()
    let mulOp = MultiplyOperation()
    let divOp = DivideOperation()
    let remOp = RemainOperation()
    
    
    func add(_ a: Double, _ b: Double) -> Double {
        return addOp.execute(a,b)
    }
    
    func minus(_ a: Double, _ b: Double) -> Double {
        return minusOp.execute(a,b)
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return mulOp.execute(a,b)
    }
    
    func divide(_ a: Double, _ b: Double) -> Double? {
        if b == 0 {
            print("0으로 나눠서 nil을 출력합니다.")
            return nil
        }
        return divOp.execute(a,b)
    }
    
    func remain(_ a: Double, _ b: Double) -> Double? {
        if b == 0 {
            print("0으로 나눠서 nil을 출력합니다.")
            return nil
        }
        return remOp.execute(a,b)
    }
    
}


let calculator = Calculator()

let a: Double = 0
let b: Double = 0

print("\(a) + \(b) = \(calculator.add(a, b))")
print("\(a) - \(b) = \(calculator.minus(a, b))")
print("\(a) × \(b) = \(calculator.multiply(a, b))")
print("\(a) / \(b) = \(calculator.divide(a, b) ?? 0)")
print("\(a) % \(b) = \(calculator.remain(a, b) ?? 0)")







