// 프로토콜
protocol AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double
}


// 사칙연산 클래스
class AddOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double { return a + b }
}

class SubstractOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double { return a - b }
}

class MultiplyOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double { return a * b }
}

class DivideOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        if b == 0 {
            print("0으로 나눴기 때문에 기본값 0을 반환합니다.")
            return 0
        }
        return a / b
    }
}

class RemainOperation: AbstractOperation {
    func execute(_ a: Double, _ b: Double) -> Double {
        if b == 0 {
            print("0으로 나눴기 때문에 기본값 0을 반환합니다.")
            return 0
        }
        return a.truncatingRemainder(dividingBy: b)
    }
}


// Calculator 클래스
class Calculator {
    
    private var op: AbstractOperation = AddOperation()
    
    func changeOp(_ op: AbstractOperation) {
        self.op = op
    }
    
    func calculate(_ a: Double, _ b: Double) -> Double {
        op.execute(a, b)
    }
    
    
}


// 테스트
let calculator = Calculator()
let a: Double = 0
let b: Double = 0


calculator.changeOp(AddOperation())
print("\(a) + \(b) = \(calculator.calculate(a, b))")

calculator.changeOp(SubstractOperation())
print("\(a) - \(b) = \(calculator.calculate(a, b))")

calculator.changeOp(MultiplyOperation())
print("\(a) × \(b) = \(calculator.calculate(a, b))")

calculator.changeOp(DivideOperation())
print("\(a) / \(b) = \(calculator.calculate(a, b))")

calculator.changeOp(RemainOperation())
print("\(a) % \(b) = \(calculator.calculate(a, b))")




