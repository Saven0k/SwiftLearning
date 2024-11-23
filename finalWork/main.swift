// 1. Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность. Должностей пока может быть две: или кассир, или повар. Добавить в класс 
// пиццерии массив с работниками

// 2. Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, 
// а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе

// 3. Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится пиццерия, в которой стоит столик. 
// Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра
class Table {
    private var sitCount: Int
    // private var pizzeria: PizzaHat   Не знал как передать

    
    init(sitCount: Int) {
        self.sitCount = sitCount
    }
    func guests(count: Int) -> Bool {
        if count > sitCount {
            return false
        } else {
            return true
        }
    }
}

protocol Food {
    var cost: Double {get set}
}


struct potatoFree: Food{ // Картошка фри
    var size: String
    var cost: Double
}

enum Supplements: String { // Добавки в пицу
    case tomatos = "томаты"
    case chees = "сыр"
    case sausage = "колбаса"
}

enum WorkerPosts: String { // Перечесление должностей для рабочего пицерии
    case cooker = "Повар"
    case cashier = "Кассир"
}

struct Pizza: Food { // Пицца
    var type: String 
    var cost: Double 
    var supplements: [String]
    var dough: String
}
struct PizzaHatWorker { // Работник Пицерии
    var name: String
    var salary: Double
    var post: WorkerPosts
}

class PizzaHat { // Пицерия
    private var menu: [Food] = []
    private var workers: [PizzaHatWorker] = []
    private var tables: [Table] = [Table(sitCount:5), Table(sitCount:2), Table(sitCount:9)]
    
    init(menu: [Food], workers: [PizzaHatWorker]) {
        self.menu = menu
        self.workers = workers
    }

    // 2. Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.
    func addFood<T: Food>(food: T) {
        self.menu.append(food)
    }
    func addWorker(worker: PizzaHatWorker) {
        self.workers.append(worker)
    }
    
    func getAllMenu() -> [Food] {
        return menu
    }
    func getAllWorkers() -> [PizzaHatWorker] {
        return workers
    }

}