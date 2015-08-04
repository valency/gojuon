//
//  quizViewController.h
//  Goujon
//
//  Created by Ye Ding on 2013-01-03.
//  Copyright (c) 2013 Ye Ding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface quizViewController : UIViewController {
    UILabel *charlabel;
    UIButton *btn1,*btn2,*btn3,*btn4,*btn5,*btn6;
}

@property (nonatomic,retain) IBOutlet UILabel *charlabel;
@property (nonatomic,retain) IBOutlet UIButton *btn1,*btn2,*btn3,*btn4,*btn5,*btn6;
@property (retain) NSArray *romaji,*hiragana,*katakana;
@property int charid;
@property bool correct;

- (IBAction)randbtn:(id)sender;

@end
