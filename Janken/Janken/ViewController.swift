//
//  ViewController.swift
//  Janken
//
//  Created by ITユーザー on 2016/05/25.
//  Copyright © 2016年 小関千晴. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    
    let str = ["gu.png","choki.png","pa.png"]
    
    let rndSource = GKARC4RandomSource()

    @IBOutlet weak var aite: UIImageView!
    @IBOutlet weak var zibun: UIImageView!
    @IBOutlet weak var button: UIButton!
    
   
    @IBOutlet weak var touch: UIButton!
    @IBAction func touch(sender: AnyObject) {
        aite.image=UIImage(named:str[0] )
        zibun.image=UIImage(named:str[0] )
        Label.text = "じゃんけん！"
        }
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var gu: UIButton!
    @IBAction func gu(sender: AnyObject) {
    zibun.image=UIImage(named:str[0] )
    let rnd = rndSource.nextIntWithUpperBound(str.count)
    aite.image=UIImage(named:str[rnd] )
    
        if rnd==0{
            Label.text="あいこです"
        }
        else if rnd==1{
            Label.text="勝ちです"
        }
        else if rnd==2{
            Label.text="負けです"
        }
        
    }
    
    @IBOutlet weak var choki: UIButton!
    @IBAction func choki(sender: AnyObject) {
        zibun.image=UIImage(named:str[1] )
        let rnd = rndSource.nextIntWithUpperBound(str.count)
        aite.image=UIImage(named:str[rnd] )
        
        if rnd==0{
            Label.text="負けです"
        }
        else if rnd==1{
            Label.text="あいこです"
        }
        else if rnd==2{
            Label.text="勝ちです"
        }
    }
    
    @IBOutlet weak var pa: UIButton!
    @IBAction func pa(sender: AnyObject) {
        zibun.image=UIImage(named:str[2] )
        let rnd = rndSource.nextIntWithUpperBound(str.count)
        aite.image=UIImage(named:str[rnd] )
        
        if rnd==0{
            Label.text="勝ちです"
        }
        else if rnd==1{
            Label.text="負けです"
        }
        else if rnd==2{
            Label.text="あいこです"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

