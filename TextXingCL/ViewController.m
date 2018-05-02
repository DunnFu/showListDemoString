//
//  ViewController.m
//  TextXingCL
//
//  Created by fuwu on 2018/5/2.
//  Copyright © 2018年 符武. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *showTitleLabel;
@property (nonatomic, strong) UIButton *showBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CGSize textSize  = CGSizeMake(self.view.bounds.size.width-40, MAXFLOAT);
    NSString *titleStr = @"教案设计单就是你的静安寺大家安静时看到你就卡少女的即可拿手机看的爱动脑筋爱上你的缴纳时间的你就按大家按时间段哪记得那";
    CGSize contenS = [self autosizeWithString:titleStr fromSize:textSize andFont:[UIFont systemFontOfSize:17]];
    
    NSString *BtnTitle = @" 客是是是 ";
    CGSize Btnize  = CGSizeMake(100, MAXFLOAT);
    
    NSString *allStr = [NSString stringWithFormat:@"%@%@",BtnTitle,titleStr];
    
    CGSize BtnSize = [self autosizeWithString:BtnTitle fromSize:textSize andFont:[UIFont systemFontOfSize:15]];
    
    NSMutableAttributedString *hintString = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@%@",BtnTitle,titleStr]];
    [hintString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0, BtnTitle.length)];
     [hintString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:15] range:NSMakeRange(0,  BtnTitle.length)];
    [hintString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(BtnTitle.length , allStr.length - BtnTitle.length)];

   
    _showTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, 375 - 40, contenS.height)];
  //  _showTitleLabel.center = self.view.center;
    _showTitleLabel.numberOfLines = 0;
    _showTitleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    _showTitleLabel.attributedText = hintString;//[NSString stringWithFormat:@"%@%@",BtnTitle,titleStr];
  //  _showTitleLabel.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:_showTitleLabel];
    
    
    
    UIView *colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, BtnSize.width, 20)];
    colorView.backgroundColor =[UIColor redColor];
    colorView.layer.cornerRadius = 5;
    [_showTitleLabel addSubview:colorView];
    
//    _showBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    _showBtn.frame = CGRectMake(0, 0, colorView.frame.size.width, 20);
//    _showBtn.layer.cornerRadius = 5;
//    _showBtn.titleLabel.font = [UIFont systemFontOfSize:15];
//    [_showBtn setTitle:BtnTitle forState:UIControlStateNormal];
//    _showBtn.backgroundColor = [UIColor redColor];
//    [colorView addSubview:_showBtn];
    
}

//计算文字高度
- (CGSize)autosizeWithString:(NSString *)string fromSize:(CGSize)size andFont:(UIFont *)font
{
    NSDictionary *attributes = @{ NSFontAttributeName : font};
    
    return [string boundingRectWithSize:size
                                options:
            NSStringDrawingUsesLineFragmentOrigin |
            NSStringDrawingUsesFontLeading
                             attributes:attributes context:nil].size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
