//
//  ViewController.swift
//  計算機ボタンのみ
//
//  Created by Hidemi Ando on 2015/05/12.
//  Copyright (c) 2015年 Hidemi Ando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,350,180))
        
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor(red: 0.529, green: 0.809, blue: 0.98, alpha: 0.2)
        
        
        // 枠を丸くする.
        myLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 10.0
        
        // Labelに文字を代入.
        myLabel.text = "ラベル表示"
        
        // 文字の色
        myLabel.textColor = UIColor(red: 0.1, green: 0.1, blue: 1.0, alpha: 1.0)
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Right
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
        
        let C = makeButton(50,y:250,title:"C")
        let pm = makeButton(140,y:250,title:"＋/−")
        let par = makeButton(230,y:250,title:"%")
        let waru = makeButton(320,y:250,title:"÷")
        
        let button7 = makeButton(50,y:340,title:"7")
        let button8 = makeButton(140,y:340,title:"8")
        let button9 = makeButton(230,y:340,title:"9")
        let kakeru = makeButton(320,y:340,title:"x")
        
        let button4 = makeButton(50, y:430,title:"4")
        let button5 = makeButton(140, y:430,title:"5")
        let button6 = makeButton(230, y:430,title:"6")
        let mainasu = makeButton(320,y:430,title:"−")
        
        let button1 = makeButton(50, y:520,title:"1")
        let button2 = makeButton(140, y:520,title:"2")
        let button3 = makeButton(230, y:520,title:"3")
        let plus = makeButton(320,y:520,title:"＋")
        
        let button0 = makeButton(50,y:610,title:"0")
        button0.frame = CGRectMake(10, 570, 170, 80)
        let dod = makeButton(230,y:610,title:".")
        let ikoru = makeButton(320,y:610,title:"=")
        
        
        
        
        self.view.addSubview(button1)
        self.view.addSubview(button2)
        self.view.addSubview(button3)
        self.view.addSubview(button4)
        self.view.addSubview(button5)
        self.view.addSubview(button6)
        self.view.addSubview(button7)
        self.view.addSubview(button8)
        self.view.addSubview(button9)
        self.view.addSubview(C)
        self.view.addSubview(pm)
        self.view.addSubview(par)
        self.view.addSubview(waru)
        self.view.addSubview(ikoru)
        self.view.addSubview(dod)
        self.view.addSubview(kakeru)
        self.view.addSubview(button0)
        self.view.addSubview(mainasu)
        self.view.addSubview(plus)
        
        
        
    }
    func makeButton(x:CGFloat, y:CGFloat, title:String)->UIButton{
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let button3 = UIButton()
        
        //表示されるテキスト
        button3.setTitle(title, forState: .Normal)
        
        //テキストの色
        button3.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        
        
        
        //タップした状態のテキスト
        button3.setTitle("＊", forState: .Highlighted)
        
        //タップした状態の色
        button3.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        
        //サイズ
        button3.frame = CGRectMake(0, 0, 80, 80)
        
        //配置場所
        button3.layer.position = CGPoint(x:x, y:y)
        
        //背景色
        button3.backgroundColor = UIColor(red: 1.0, green: 0.412, blue: 0.706, alpha: 0.2)
        
        
        //角丸
        button3.layer.cornerRadius = 10
        
        //ボーダー幅
        button3.layer.borderWidth = 1
        
        //ボタンをタップした時に実行するメソッドを指定
        //button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        
        //viewにボタンを追加する
        return(button3)
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

