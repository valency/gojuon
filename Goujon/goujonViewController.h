//
//  goujonViewController.h
//  Goujon
//
//  Created by Ye Ding on 2012-12-27.
//  Copyright (c) 2012 Ye Ding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface goujonViewController : UIViewController {
    UILabel *romajilabel,*hiralabel,*katalabel;
}

@property (nonatomic,retain) IBOutlet UILabel *romajilabel,*hiralabel,*katalabel;
@property (retain) NSArray *romaji,*hiragana,*katakana;

- (IBAction)randbtn:(id)sender;

@end
