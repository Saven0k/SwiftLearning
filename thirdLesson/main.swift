// 1. Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать).
// Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал, и стоимость).

let teaDictionary: [String: Int] = ["blackTea": 250, "greenTea": 260, "grossTea": 210, "FruitsTea": 300]
let teaLine: [String] = ["blackTea", "greenTea", "grossTea", "FruitsTea"]

for (index, element) in teaLine.enumerated() {
    if let price = teaDictionary[element] {
        print("Номер по порядку: " + (index + 1) + ", купленный вид чая: " + element + ", стоимость: " + price  + " рублей")
    }
     else { 
        print("Чай '"+element+"' не найден в словаре.")
    }
}

// 2. Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil].
// Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.

let arr: [Int] =    
for (index, element) in arr.enumerated() {
    if element == nil || element == 0 || element == 4 {
        arr.remove(at: index)
    }
}
var arr2 = arr.sorted(by: <)
 

print(arr2)

// 3. Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, 
// массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.

func a(value:Int) -> [Int]{
    var b: [Int] = []
    var firstTemp: Int = 1
    for _ in 1...value{
        b.append(firstTemp)
        firstTemp *= 2
    }
    return b
}
print(a(value:5))
