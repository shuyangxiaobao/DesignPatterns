//
//  ViewController.swift
//  geqiangbao_20201125_iterator_swift
//
//  Created by xiaobao on 2020/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demo4()
        // Do any additional setup after loading the view.
    }
    
    //   系统迭代器1
    func demo1(){
        var arr = Array<Int>()
        for index in 0...10 {
            arr.append(index)
        }
        var iterator = arr.makeIterator()
        var a:Int?
        while true {
            a = iterator.next()
            if a == nil {
                break;
            }
            print("\(a!)")
        }
    }
    
    //   系统迭代器2
    func demo2(){
        var arr = Array<Any>()
        arr.append(Person(name: "xiaoming", age: 12))
        arr.append(Person(name: "xiaoqiang", age: 18))
        var iterator = arr.makeIterator()
        var a:Person?
        while true {
            a = iterator.next() as? Person
            if a == nil {
                break;
            }
            print("name:\(a!.name!)  age:\(a!.age!)")
        }
    }
    
    
    /// 自定义迭代器 ArrayIterator(数组迭代器)
    func demo3(){
        var arr = Array<Any>()
        arr.append(Person(name: "xiaoming", age: 12))
        arr.append(Person(name: "xiaoqiang", age: 18))
        let iterator = ArrayIterator(datas: arr);
        var a:Person?
        while iterator.hasNext() {
            a = iterator.next() as? Person;
            print("name:\(a!.name!)  age:\(a!.age!)")
        }
    }
    
    /// 自定义迭代器 SetIterator(集合迭代器)
    func demo4(){
        var set = Set<Person>()
        set.insert(Person(name: "xiaoming", age: 12))
        set.insert(Person(name: "xiaoqiang", age: 18))
        let iterator = SetIterator<Any>(datas: set as NSSet)
        var a:Person?
        while iterator.hasNext() {
            a = iterator.next() as? Person;
            print("name:\(a!.name!)  age:\(a!.age!)")
        }
    }
    
    
}

