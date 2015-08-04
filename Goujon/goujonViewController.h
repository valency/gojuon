//
//  goujonViewController.h
//  Goujon
//
//  Created by Ye Ding on 2012-12-27.
//  Copyright (c) 2012 Ye Ding. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface goujonViewController : UIViewController {
    UILabel *romajilabel;
    UILabel *hiralabel;
    UILabel *katalabel;
}
@property (nonatomic,retain) IBOutlet UILabel *romajilabel;
@property (nonatomic,retain) IBOutlet UILabel *hiralabel;
@property (nonatomic,retain) IBOutlet UILabel *katalabel;

- (IBAction)randbtn:(id)sender;

@end
