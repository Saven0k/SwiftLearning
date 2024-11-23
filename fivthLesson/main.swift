// 1. В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так,
//  чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

class Food {

}

struct potatoFree: Food{
    var size: String
    var cost: Double
}
enum Supplements: String {
    case tomatos = "томаты"
    case chees = "сыр"
    case sausage = "колбаса"
}

struct Pizza: Food {
    var type: String 
    var cost: Double 
    var supplements: [String]
    var dough: String
}

class PizzaHat {
    private var menu: [Food] = []
    
    init(menu: [Food]) {
        self.menu = menu
    }

    // 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
    func addFood(food: Food) {
        self.pizza.append(pizza)
    }
    
    func getAllMenu() -> [Food] {
        return menu
    }

}
// 3. Создайте протокол, в котором будут содержаться функции открытия и закрытия.
protocol OpenClosePizzaHat {
    var closed: Bool { get set }
    
    func open()
    func close()
}
// 4. Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

extension PizzaHat: OpenClosePizzaHat {
    func open() {
        self.closed = false
    }
    
    func close() {
        self.closed = true
    }
}

// 5. Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.

func math<T: Numeric>(num1: T, num2: T) -> T{
    return num1 - num2
}

print(math(num1: 5, num2: 2))