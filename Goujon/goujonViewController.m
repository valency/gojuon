//
//  goujonViewController.m
//  Goujon
//
//  Created by Ye Ding on 2012-12-27.
//  Copyright (c) 2012 Ye Ding. All rights reserved.
//

#import "goujonViewController.h"

@interface goujonViewController ()

@end

@implementation goujonViewController
@synthesize romajilabel,hiralabel,katalabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self randbtn:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)randbtn:(id)sender {
    NSArray *romaji = [NSArray arrayWithObjects: @"a", @"i", @"u", @"e", @"o", @"ka", @"ki", @"ku", @"ke", @"ko", @"sa", @"shi", @"su", @"se", @"so", @"ta", @"chi", @"tsu", @"te", @"to", @"na", @"ni", @"nu", @"ne", @"no", @"ha", @"hi", @"fu", @"he", @"ho", @"ma", @"mi", @"mu", @"me", @"mo", @"ya", @"yu", @"yo", @"ra", @"ri", @"ru", @"re", @"ro", @"wa", @"n", @"wo", nil];
    NSArray *hiragana = [NSArray arrayWithObjects: @"あ", @"い", @"う", @"え", @"お", @"か", @"き", @"く", @"け", @"こ", @"さ", @"し", @"す", @"せ", @"そ", @"た", @"ち", @"つ", @"て", @"と", @"な", @"に", @"ぬ", @"ね", @"の", @"は", @"ひ", @"ふ", @"へ", @"ほ", @"ま", @"み", @"む", @"め", @"も", @"や", @"ゆ", @"よ", @"ら", @"り", @"る", @"れ", @"ろ", @"わ", @"ん", @"を", nil];
    NSArray *katakana = [NSArray arrayWithObjects: @"ア", @"イ", @"ウ", @"エ", @"オ", @"カ", @"キ", @"ク", @"ケ", @"コ", @"サ", @"シ", @"ス", @"セ", @"ソ", @"タ", @"チ", @"ツ", @"テ", @"ト", @"ナ", @"ニ", @"ヌ", @"ネ", @"ノ", @"ハ", @"ヒ", @"フ", @"ヘ", @"ホ", @"マ", @"ミ", @"ム", @"メ", @"モ", @"ヤ", @"ユ", @"ヨ", @"ラ", @"リ", @"ル", @"レ", @"ロ", @"ワ", @"ン", @"ヲ", nil];
    int i = arc4random() % 46;
    [romajilabel setText:romaji[i]];
    [hiralabel setText:hiragana[i]];
    [katalabel setText:katakana[i]];
}

@end
