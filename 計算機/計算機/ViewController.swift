//
//  ViewController.swift
//  計算機
//
//  Created by Hidemi Ando on 2015/05/04.
//  Copyright (c) 2015年 Hidemi Ando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    var myLabel:UILabel?
    
    var number:Double = 0
    
    //どの四則演算を行うのか覚えておく
    var operate:String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "illust")
        
        let imageview = UIImageView(image:image)
        
        self.view.addSubview(imageview)
       
    
    
        
        let C = makeButton(50,y:250,title:"AC")
    
        let pm = makeButton(140,y:250,title:"+/-")
        let par = makeButton(230,y:250,title:"%")
        let waru = makeButton(320,y:250,title:"÷")
        
        let button7 = makeButton(50,y:340,title:"7")

        let button8 = makeButton(140,y:340,title:"8")
        let button9 = makeButton(230,y:340,title:"9")
        let kakeru = makeButton(320,y:340,title:"×")
        
        let button4 = makeButton(50, y:430,title:"4")
        let button5 = makeButton(140, y:430,title:"5")
        let button6 = makeButton(230, y:430,title:"6")
        let mainasu = makeButton(320,y:430,title:"-")
        
        let button1 = makeButton(50, y:520,title:"1")
        let button2 = makeButton(140, y:520,title:"2")
        let button3 = makeButton(230, y:520,title:"3")
        let plus = makeButton(320,y:520,title:"+")
        
        let button0 = makeButton(45,y:600,title:"0")
        button0.frame = CGRectMake(10, 570, 175, 85)
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
        
    
        // Labelを作成.
        
        myLabel=UILabel(frame: CGRectMake(0,0,360,190))
        
        // 背景をオレンジ色にする.
        myLabel?.backgroundColor = UIColor(red: 0, green: 0, blue: 0.545, alpha: 0.4)
        
        
        // 枠を丸くする.
        myLabel?.layer.masksToBounds = true
        
        // コーナーの半径.
        myLabel?.layer.cornerRadius = 10.0
        
        // Labelに文字を代入.
        myLabel?.text = ""
        
        
        
        // 文字の色
        myLabel?.textColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1.0)
        
        //文字のサイズ
    
        //文字フォント
         myLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 40)
        
        // 文字の影の色をグレーにする.
        myLabel?.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel?.textAlignment = NSTextAlignment.Right
        
        // 配置する座標を設定する.
        myLabel?.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func makeButton(x:CGFloat, y:CGFloat, title:String)->UIButton{
  
            let button3 = UIButton()
            
            //表示されるテキスト
            button3.setTitle(title, forState: .Normal)
            
            //テキストの色
            button3.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)

      
        

            //タップした状態のテキスト
            //button3.setTitle("＊", forState: .Highlighted)
        
        //フォントの変更
        button3.titleLabel?.font = UIFont(name: "ChalkboardSE-Bold", size: 30)
        
            //タップした状態の色
       // button3.color = UIColor(red: 1.0, green: 0.412, blue: 0.706, alpha: 0.6)

            //サイズ
            button3.frame = CGRectMake(0, 0, 85, 85)
        
           //配置場所
            button3.layer.position = CGPoint(x:x, y:y)
            
            //背景色
            button3.backgroundColor = UIColor(red: 1.0, green: 0.843, blue: 0, alpha: 0.7)

        
        
            //角丸
            button3.layer.cornerRadius = 10
            
            //ボーダー幅
            button3.layer.borderWidth = 2
            
            //ボタンをタップした時に実行するメソッドを指定
            button3.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
            
            //viewにボタンを追加する
            return(button3)
        
        
    }
    
    func tapped(button3:UIButton){
        
        
        // ACボタンが押された場合の処理
        if (button3.titleLabel!.text! == "AC") {
            
            // ラベルの文字を消す
            myLabel?.text? = ""
        
            //０を一つだけ表示
            } else if (button3.titleLabel!.text! == "0") {
            
            if (myLabel?.text != "0"){
                
                myLabel?.text? += "0"
            
                
                
                
            }
            
            
            
            // +ボタンが押された場合の処理
            
        } else if (button3.titleLabel!.text! == "+") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            operate = "+"
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number)
            
        
        //-ボタンが押された時の処理
        } else if (button3.titleLabel!.text! == "-") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            operate = "-"
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number)
            
            
        } else if (button3.titleLabel!.text! == "×") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            operate = "×"
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number)
            
      
            //÷ボタンが押された時の処理
            
        } else if (button3.titleLabel!.text! == "÷") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
            // ラベルの文字を消す
            myLabel?.text? = ""
            
            operate = "÷"
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number)

            
            //%を押した時
        } else if (button3.titleLabel!.text! == "%") {
            
            // ラベルの文字列を数値に変換
            number = (myLabel!.text! as NSString).doubleValue
            
           let result = number / 100.0
            
            
            

            // ラベルの文字を消す
           // myLabel?.text? = ""
            
            //operate = "÷"
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number)

            myLabel?.text? = String(format:"%g",result)

            
            
            //+/-を押した時
        } else if (button3.titleLabel!.text! == "+/-") {
            
            // ラベルの文字列を数値に変換
            let number3 = (myLabel!.text! as NSString).doubleValue
            
            let result = number3 * -1
        
            
            // numberにラベルの文字列が保存されたか確認
            NSLog("%g", number3)
            
            myLabel?.text? = String(format:"%g",result)
            
            
            //,を押した時
       
        }else if (button3.titleLabel!.text! == ".") {
            
            //ラベルの長さ０だったら（まだラベルに入力されていなかったら）
        if (myLabel?.text?.lengthOfBytesUsingEncoding(NSStringEncoding.allZeros) == 0) {
                
                myLabel?.text? += "0."

            
            // ラベルのテキストにコンマが含まれていなかったら
            }else if (myLabel?.text?.rangeOfString(".") == nil) {
                    
                    myLabel?.text? += "."
                    
                }
            
            // イコールを押した時の式
        } else if (button3.titleLabel!.text! == "="){
            
            //プラスのとき
            if (operate == "+"){

                let number2 =  (myLabel!.text! as NSString).doubleValue
                
                let result = number + number2
                
                myLabel?.text? = String(format:"%g",result)
            
             NSLog("%g", result)
                
            
                
                
            //マイナスの時
                
            }else if (operate == "-"){
                    
                    let number2 =  (myLabel!.text! as NSString).doubleValue
                
                    let result = number - number2
                    
                    myLabel?.text? = String(format:"%g",result)
                
             NSLog("%g", result)
            
            }else if (operate == "×"){
                
                let number2 =  (myLabel!.text! as NSString).doubleValue
            
                
                let result = number * number2
                
                myLabel?.text? = String(format:"%g",result)
                
                 NSLog("%g", result)
                
                
            }else if (operate == "÷"){
                
                let number2 =  (myLabel!.text! as NSString).doubleValue
                
                let result = number / number2
                
                           myLabel?.text? = String(format:"%g",result)
                
                NSLog("%g", result)
                
                
                
                
                
            
            
            
        
        
                // それ以外のボタンが押された場合の処理
           
            } else {
            
                
                myLabel?.text? = ""
                
                // ボタンのタイトルをラベルの文字列に追加
          
                
            myLabel?.text? += button3.titleLabel!.text!
                
                //0が押された後は数字を置き換える
                
                 // }else if{
            
                
                
            }
        
        
        
        
        // それ以外のボタンが押された場合の処理
        }else {
            
        
            
                      // ボタンのタイトルをラベルの文字列に追加
            myLabel?.text? += button3.titleLabel!.text!

            
            
        }
        
        }
    override func didReceiveMemoryWarning() {

        
     super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }


}

