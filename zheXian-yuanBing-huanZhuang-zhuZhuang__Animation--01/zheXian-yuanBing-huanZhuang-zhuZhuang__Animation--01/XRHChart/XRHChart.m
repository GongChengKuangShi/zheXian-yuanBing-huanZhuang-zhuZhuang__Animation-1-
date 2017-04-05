//
//  XRHChart.m
//  zheXian-yuanBing-huanZhuang-zhuZhuang__Animation
//
//  Created by xiangronghua on 2017/3/31.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import "XRHChart.h"

@implementation XRHChart

- (void)showAnimation {}

- (void)clear {}


/**
 *  绘制线段
 *
 *  @param context  图形绘制上下文
 *  @param start    起点
 *  @param end      终点
 *  @param isDotted 是否是虚线
 *  @param color    线段颜色
 */
- (void)drawLineWithContext:(CGContextRef)context
               andStarPoint:(CGPoint)start
                andEndPoint:(CGPoint)end
            andIsDottedLine:(BOOL)isDotted
                   andColor:(UIColor *)color {
    
    /* 移动到点 */
    CGContextMoveToPoint(context, start.x, start.y);
    
    /* 连接到 */
    CGContextAddLineToPoint(context, end.x, end.y);
    /* 线宽 */
    CGContextSetLineWidth(context, 0.5);
    
    /* 线条颜色填充 */
    [color setStroke];
    
    if (isDotted) {// 如果绘制虚线
        
        CGFloat ss[] = {0.5,2};
        /*
         context – 这个不用多说
         phase - 表示在第一个虚线绘制的时候跳过多少个点(初始位置)
         lengths – 指明虚线是如何交替绘制，（表示：绘制0.5个点，跳2个单位）
         count – lengths数组的长度
         */
        CGContextSetLineDash(context, 0, ss, 2);
    }
    
    /*
     kCGPathFill表示用非零绕数规则，
     kCGPathEOFill表示用奇偶规则，
     kCGPathFillStroke表示填充，
     kCGPathEOFillStroke表示描线，不是填充
     */
    CGContextDrawPath(context, kCGPathFillStroke);//绘制路线
}


/**
 *  绘制文字
 *
 *  @param text    文字内容
 *  @param context 图形绘制上下文
 *  @param rect    绘制点
 *  @param color   绘制颜色
 */
- (void)drawText:(NSString *)text
      andContext:(CGContextRef)context
         atPoint:(CGPoint)rect
       WithColor:(UIColor *)color
     andFontSize:(CGFloat)fontSize {
    
    [[NSString stringWithFormat:@"%@",text] drawAtPoint:rect withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize],NSForegroundColorAttributeName:color}];
    
    [color setFill];
    
    CGContextDrawPath(context, kCGPathFill);
}

/**
 *  判断文本宽度
 *
 *  @param text 文本内容
 *
 *  @return 文本宽度
 */
- (CGFloat)getTextWithWhenDrawWithText:(NSString *)text {
    
    CGSize size = [[NSString stringWithFormat:@"%@",text] boundingRectWithSize:CGSizeMake(100, 15) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:7]} context:nil].size;
    return size.width;
}

@end
