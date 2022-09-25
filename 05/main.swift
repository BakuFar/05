import Foundation

// continue
for i in 0...50 {
    if i % 4 == 0 {
        continue // перепрыгивает
    }
    print(i)
}

// break
for i in 0...50 {
    if i == 15 {
        break // останавливает цикл
    }
    print(i)
}

var string = ""
for i in 0...100 {
    string += "\(i),"
}

print(string)

var string2 = ""
for i in string {
    if i == "," {
        print(string2)
        string2 = ""
        continue
    }
    else {
        string2 += "\(i)"
    }
}


// массивы, словари, Set, и работа с ними. foreach

var arrayInt: [Int] = [1,2,3,4,5]
var arrayString: [String] = [",", "-", "/", "*", "+"]

arrayInt.append(6)  // добавляет в конец массива
arrayString.append(";")
arrayString.insert(".", at: 0) // добавляет в массив где указано/ 0 -> началло
arrayInt.insert(7, at: 3)

print(arrayInt[3])
print(arrayString[5])

for (index,item) in arrayString.enumerated() {
    print("\(index + 1). \(item) - \(arrayInt[index])")
}
print("Введите")
var read: String = readLine()!
var a: [String] = []
var b: [String] = []
var d: [String] = []

for c in read {
    a.append(String(c))
    b.insert(String(c), at: 0)
}
print(a)
print(b)

for(index,item) in read.enumerated(){
    a.insert(String(item), at: index + index)
}
print(a)
