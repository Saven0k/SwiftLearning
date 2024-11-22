// 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент это годовой процент, 
// третий аргумент это срок Функция возвращает сколько денег получит пользователь по итогу.

func calculateDepositAmount(initialAmount: Double, annualInterestRate: Double, years: Int) -> Double {
    var finalAmount = initialAmount
    for _ in 0...years {
        finalAmount += finalAmount * annualInterestRate / 100.0
    }
    return finalAmount
}
print(calculateDepositAmount(initialAmount: 1000.0, annualInterestRate: 5.0, years: 3))

// 2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы.

enum Pizza: String  {
    case pepperoni = "Пепперони"
    case fourCheeses = "Четыре сыра"
    case pizzaWithPineapple = "Пицца с ананасами"
}
// 3. Добавить возможность получения названия пиццы через rawValue
let myPizza1 = Pizza.pepperoni
let myPizza2 = Pizza.fourCheeses
let myPizza3 = Pizza.pizzaWithPineapple
print("Вы выбрали: " + myPizza1.rawValue) 
print("Вы выбрали: " + myPizza2.rawValue) 
print("Вы выбрали: " + myPizza3.rawValue)