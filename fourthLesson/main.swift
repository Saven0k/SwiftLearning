// 1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)
enum PizzaType: String  {
    case pepperoni = "Пепперони"
    case fourCheeses = "Четыре сыра"
    case pizzaWithPineapple = "Пицца с ананасами"
    case pizzaWithFruits = "Пицца с фруктами"
    case pizzaWithFish = "Рыбная пицца"
}


// 2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.

enum Supplements: String {
    case tomatos = "томаты"
    case chees = "сыр"
    case sausage = "колбаса"
}

struct Pizza {
    var type: String 
    var cost: Double 
    var supplements: [String]
    var dough: String
}
// 3. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
// 4. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц.


class PizzaHat {
    private var pizza: [Pizza] = []
    
    init(pizza: [Pizza]) {
        self.pizza = pizza
    }

    func addPizza(pizza: Pizza) {
        self.pizza.append(pizza)
    }
    
    func getAllPizza() -> [Pizza] {
        return pizza
    }

}
// 5. Создать экземпляр класса пиццерии и добавить в него несколько пицц.

var pep = Pizza(type: PizzaType.pepperoni.rawValue, cost: 250, supplements: [Supplements.tomatos.rawValue] , dough: "Толстое" )
var pep2 = Pizza(type: PizzaType.pizzaWithFish.rawValue, cost: 350, supplements: [Supplements.tomatos.rawValue] , dough: "Толстое"  )

var pizzahat = PizzaHat(pizza: [pep, pep2])
