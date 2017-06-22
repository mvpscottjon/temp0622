//
//  main.swift
//  sevenS07
//
//  Created by user on 2017/6/12.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

///******  from func1
reg()

//*********結構  struct

struct Point {
    var x:Int
    var y:Int
//    print("OK") //結構裡面不能有執行敘述
}

var p112 = Point(x:3,y:3)
print(p112.x)
var p0 = Point(x:1, y:2)
print(p0.x)
print(p0.y)
p0.x = 123
print(p0.x)

print("-------")

struct Point2 {
    var x = 0
    var y = 0

}

var p1 = Point2()  //有初值 不用傳參數
print(p1.x)
print(p1.y)
p1.x = 100
print(p1.x)

print("-------")
var p3 = p1    //p3 == p1
print("p1(\(p1.x),\(p1.y))")
print("p3(\(p3.x),\(p3.y))")
p1.x = 123; p1.y = 321  //後來p1變動 不會改變原來的p3

print("p1(\(p1.x),\(p1.y))")
print("p3(\(p3.x),\(p3.y))")

print("-------")

//用struct Point2的型別當為參數point1的型別
struct Line {
    var point1: Point2
    var point2: Point2
    func f1() {
        print("OK1")
    }
    static func f2() {   //static func 可用struct.方法 執行
        print("OK2") }
    
    func len() -> Double {  //因有用到結構內東西 不能定義為static
        
        f1()
        
        let xpow = (point1.x - point2.x) * (point1.x - point2.x)
        
        let ypow = (point1.y - point2.y) * (point1.y - point2.y)
        
        return sqrt(Double(xpow) + Double(ypow))
        
    }



}


Line.f2()   //呼叫static方法



//練習用
//var line123 = Line(point1:Point2(),point2:Point2(x:2,y:1))
//
//line123.f1()
//
//var point123 = line123.point2
//
//var point123X = line123.point2.x
//
//print(point123)
//print(point123X)
//
//
//print("-------")


var line1 = Line(point1:Point2(), point2:Point2(x:3, y:4))  //Point2 為 struct的 Point2

print(line1.point2.x)

print(line1.len())
line1.f1()  //需var 物件

Line.f2()  //static f2()


print("=======")
//
//
//
//
////不用結構求兩點距離 跟 xy值
//
////var p0x = 0, p0y = 0
////var p1x = 3, p1y = 4
//
//
/////*****enum 列舉
//
//var dir: String
//dir = "up"
//dir = "down"
//dir = "left"
//dir = "right"
//
//enum Direction {
////    case Up
////    case Down
////    case Left
////    case Right
//      case Up, Down, Left, Right
//
//}
//
//var myDir:Direction = Direction.Left
//print(type(of:myDir))
//myDir = .Down
//
//switch myDir {  //判斷目前走到哪裡
//    case .Up:
//        print("Up")
//case .Down:
//    print("Down")
//
//case .Left:
//    print("Left")
//
//case .Right:
//    print("Right")
//default:
//    print("Other")
//}
//
//enum Town {
//    case NorthArea(String), SouthArea(String)
//}
//let myArea:Town = Town.NorthArea("401")
//let urArea:Town = Town.NorthArea("402")
//switch myArea {
//        case .NorthArea (let zonecode):
//        print(zonecode)
//        default:
//        print("ok")
//}
//switch urArea {
//case .NorthArea (let zonecode):
//    print(zonecode)
//default:
//    print("ok")
//}
//
////不用列舉的方法
//let dirUp = 1
//let dirDown = 2
//
//
//
//
////****class 類別
