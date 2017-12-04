import UIKit

var array = [Int]()
for i in 1...255{
    array.append(i)
}
print(array)

let random = Int(arc4random_uniform(UInt32(array.count)))
let random1 = Int(arc4random_uniform(UInt32(array.count)))

let temp = array[random]
array[random] = array[random1]
array[random1] = temp

for _ in 0...99 {
    let random = Int(arc4random_uniform(UInt32(array.count)))
    let random1 = Int(arc4random_uniform(UInt32(array.count)))

    let temp = array[random]
    array[random] = array[random1]
    array[random1] = temp

}
print(array)

for x in 0..<array.count {
    if (array[x] == 42) {
        array.remove(at: x)
        print("the meaning of the universe is: \(x)")
        break;
    }
}

