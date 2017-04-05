//
//  XRHChart.h
//  zheXian-yuanBing-huanZhuang-zhuZhuang__Animation
//
//  Created by xiangronghua on 2017/3/31.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import <UIKit/UIKit.h>

#define P_M(x,y) CGPointMake(x,y)

@interface XRHChart : UIView

/* 图表视图与View的边界值 */
@property (assign, nonatomic) UIEdgeInsets contentInsets;

/* 原点 */
@property (assign, nonatomic) CGPoint chartOrigin;

/* 表名 */
@property (copy, nonatomic) NSString * chartTitle;

/* 动画开始 */
- (void)showAnimation;

/* 清楚当前视图 */
- (void)clear;

/* 绘制线条 从start点 到end点 及是否为曲线  线条颜色 */
- (void)drawLineWithContext:(CGContextRef )context
               andStarPoint:(CGPoint )start
                andEndPoint:(CGPoint )end
            andIsDottedLine:(BOOL)isDotted
                   andColor:(UIColor *)color;

- (void)drawText:(NSString *)text
      andContext:(CGContextRef)context
         atPoint:(CGPoint)rect
       WithColor:(UIColor *)color
     andFontSize:(CGFloat)fontSize;

- (CGFloat)getTextWithWhenDrawWithText:(NSString *)text;

@end
