# 貪吃蛇

    一、如何運行程式：
        1.下載Snake.m以及P7_snakeGo.m
        2.運行P7_snakeGo.m
        
    二、遊戲流程：
    
        遊戲開始：
        1.按上下左右鍵開始
        2.顯示ready go
        3.使用上下左右鍵操控貪吃蛇吃星星
        4.如果咬到自己或撞到邊界則減一條命，貪吃蛇回到初始位置且長度不變
        5.到達一定分數速度會加快
        6.按's'暫停遊戲，並且按方向鍵繼續
        
        遊戲結束：
        1.五條生命值用完
        2.按'e'強制結束
        
    三、程式中的函數
    
        1.ReadyGo()、GameOver()
            算出符合每個字母的座標點，顯示ReadyGo、GameOver
        2.callback(src, event)
            使用在WindowKeyPressFcn讀取到鍵盤的按鍵(event)
            利用按壓的按鍵改變貪吃蛇的方向
            
        
        
        
