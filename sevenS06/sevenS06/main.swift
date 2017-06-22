//
//  main.swift
//  sevenS06
//
//  Created by user on 2017/6/12.
//  Copyright © 2017年 seven. All rights reserved.
//

import Foundation

var a = 10
func f1() {

    
    var a = 3  // 新宣告的外面讀不到
//        print("f1() => \(a)")
    //    a = 4  //沒有var的話直接 宣告 a 會變全域變數
    print(a)
    
}

f1()
print("out => \(a)")


//
func f2() -> Int {
    return 123
}

print(f2())
print(f2)
print(type(of:f2))

//var f2:Int = 321  ////變數不能跟func 名字一樣
var f3 = f2()  //執行後的return值給f3變數
print(f3)
print(type(of:f3))

var f4 = f2   //f4() == f2()
print(f4)
print(type(of:f4))

var f5 = f4()
print(f5)


print("-------------------")

func f6() {
    var a = 20
    print("f6()")
    print("medium => \(a)")

    func f7() {
        var a = 30
        print("f7()")
        print("in => \(a)")

    }
    f7()
}
f6()
print("out => \(a)")  //var a 區域變數待不出來  值還是痊癒的

print("-------------------")

func f8(a:Int){
    print(a)
}

f8(a:30)
