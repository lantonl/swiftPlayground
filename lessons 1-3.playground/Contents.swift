
class Product {
    
    var productName : String
    var price       : Double
    var quantity    : Double
    
    init (productName : String, price : Double, quantity : Double) {
        self.productName = productName
        self.price       = price
        self.quantity    = quantity
    }
}

var product1 = Product (productName: "milk", price: 25.5, quantity: 3)
var product2 = Product (productName: "chocolate", price: 32.1, quantity: 8)
var product3 = Product (productName: "beer", price: 12.4, quantity: 10)
var product4 = Product (productName: "sourCream", price: 5.5, quantity: 1)

var goods = [product1, product2, product3, product4]

var totalPrice = Double()

for product in goods {
    totalPrice += product.price * product.quantity
    print("\(product.productName) \(product.quantity) pcs for \(product.price * product.quantity) USD" )
}
print("averega price of your goods = \(totalPrice) USD")


func countSummary (goods: [Product], f: (Product) -> Bool) -> Double {
    var totalPrice = Double()
    for product in goods {
        if f(product) {
        totalPrice += product.price * product.quantity
        print("\(product.productName) \(product.quantity) pcs for \(product.price * product.quantity) USD" )
        }
    }
    return totalPrice
}

//func checkProduct (product: Product) -> Bool {
//    return product.quantity > 1
//}

countSummary(goods: goods, f: { (product:Product) -> Bool in
return product.productName == "beer"
})

countSummary(goods: goods, f: {product in product.quantity > 1})

countSummary(goods: goods, f: {$0.productName == "milk"})

let firstSet: Set = [1, 2, 3, 23]
let secondSet: Set = [4, 5, 6, 1, 3, 56, 2]
let unionArrayOfTwoSet = firstSet.union(secondSet).sorted()
let intersectionOfTwoSet = firstSet.intersection(secondSet).sorted()
let differenceOfTwoSet  = firstSet.symmetricDifference(secondSet).sorted()





