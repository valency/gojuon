//
//  quizViewController.m
//  Goujon
//
//  Created by Ye Ding on 2013-01-03.
//  Copyright (c) 2013 Ye Ding. All rights reserved.
//

#import "quizViewController.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@interface quizViewController ()

@end

@implementation quizViewController
@synthesize charlabel;
@synthesize btn1,btn2,btn3,btn4,btn5,btn6;
@synthesize hiragana,katakana,romaji;
@synthesize charid,correct;

- (void)viewDidLoad {
    [super viewDidLoad];
    romaji = [NSArray arrayWithObjects: @"a", @"i", @"u", @"e", @"o", @"ka", @"ki", @"ku", @"ke", @"ko", @"sa", @"shi", @"su", @"se", @"so", @"ta", @"chi", @"tsu", @"te", @"to", @"na", @"ni", @"nu", @"ne", @"no", @"ha", @"hi", @"fu", @"he", @"ho", @"ma", @"mi", @"mu", @"me", @"mo", @"ya", @"yu", @"yo", @"ra", @"ri", @"ru", @"re", @"ro", @"wa", @"n", @"wo", nil];
    hiragana = [NSArray arrayWithObjects: @"あ", @"い", @"う", @"え", @"お", @"か", @"き", @"く", @"け", @"こ", @"さ", @"し", @"す", @"せ", @"そ", @"た", @"ち", @"つ", @"て", @"と", @"な", @"に", @"ぬ", @"ね", @"の", @"は", @"ひ", @"ふ", @"へ", @"ほ", @"ま", @"み", @"む", @"め", @"も", @"や", @"ゆ", @"よ", @"ら", @"り", @"る", @"れ", @"ろ", @"わ", @"ん", @"を", nil];
    katakana = [NSArray arrayWithObjects: @"ア", @"イ", @"ウ", @"エ", @"オ", @"カ", @"キ", @"ク", @"ケ", @"コ", @"サ", @"シ", @"ス", @"セ", @"ソ", @"タ", @"チ", @"ツ", @"テ", @"ト", @"ナ", @"ニ", @"ヌ", @"ネ", @"ノ", @"ハ", @"ヒ", @"フ", @"ヘ", @"ホ", @"マ", @"ミ", @"ム", @"メ", @"モ", @"ヤ", @"ユ", @"ヨ", @"ラ", @"リ", @"ル", @"レ", @"ロ", @"ワ", @"ン", @"ヲ", nil];
    [self randgen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)randbtn:(id)sender {
    UIButton *btn = (UIButton *)sender;
    if([btn titleForState:UIControlStateNormal] == romaji[charid]){
        if(correct)[self randgen];
        else {
            correct = true;
            [btn setTitleColor:UIColorFromRGB(0x54A515) forState:UIControlStateNormal];
        }
    } else {
        [btn setTitle:@"wrong" forState:UIControlStateNormal];
        [btn setTitleColor:UIColorFromRGB(0xBE2E17) forState:UIControlStateNormal];
    }
}

- (void)randgen{
    correct = false;
    charid = arc4random() % 46;
    int mode = arc4random() % 2;
    if(mode==0)[charlabel setText:hiragana[charid]];
    else [charlabel setText:katakana[charid]];
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:[NSNumber numberWithInt:charid]];
    for(int i=1;i<6;i++){
        int r = arc4random() % 46;
        if([array containsObject:[NSNumber numberWithInt:r]])i--;
        else [array addObject:[NSNumber numberWithInt:r]];
    }
    int warp = arc4random() % 6;
    array[0] = array[warp];
    array[warp] = [NSNumber numberWithInt:charid];
    [btn1 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn2 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn3 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn4 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn5 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn6 setTitleColor:UIColorFromRGB(0x4A8CF6) forState:UIControlStateNormal];
    [btn1 setTitle:romaji[[[array objectAtIndex:0] integerValue]] forState:UIControlStateNormal];
    [btn2 setTitle:romaji[[[array objectAtIndex:1] integerValue]] forState:UIControlStateNormal];
    [btn3 setTitle:romaji[[[array objectAtIndex:2] integerValue]] forState:UIControlStateNormal];
    [btn4 setTitle:romaji[[[array objectAtIndex:3] integerValue]] forState:UIControlStateNormal];
    [btn5 setTitle:romaji[[[array objectAtIndex:4] integerValue]] forState:UIControlStateNormal];
    [btn6 setTitle:romaji[[[array objectAtIndex:5] integerValue]] forState:UIControlStateNormal];
}

@end
