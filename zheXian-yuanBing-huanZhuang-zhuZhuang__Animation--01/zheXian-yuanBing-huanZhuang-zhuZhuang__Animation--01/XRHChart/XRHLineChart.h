//
//  XRHLineChart.h
//  zheXian-yuanBing-huanZhuang-zhuZhuang__Animation
//
//  Created by xiangronghua on 2017/3/31.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XRHChart.h"
@class XRHChart;


/* 折线图数值类型 */
typedef  NS_ENUM(NSInteger,XRHLineChartType){
    /* 每一个存在的X点都有一个y坐标对应   此时valueArr的对象类型为数值   只有一个象限 */
    XRHChartLineEveryValueForEveryX=0,
    
    /* 点的坐标不一定和坐标轴上的X数值一一对应   此时valueArr的对象类型为点       */
    XRHChartLineValueNotForEveryX
};

/* 折线图象限分布类型 */
typedef NS_ENUM(NSInteger,XRHLineChartQuadrantType){
    
    /* 折线图分布于第一象限 */
    XRHLineChartQuadrantTypeFirstQuardrant,
    
    /* 折线图分布于第一二象限 */
    XRHLineChartQuadrantTypeFirstAndSecondQuardrant,
    
    /* 折线图分布于第一四象限 */
    XRHLineChartQuadrantTypeFirstAndFouthQuardrant,
    
    /* 折线图分布于全局四个象限 */
    XRHLineChartQuadrantTypeAllQuardrant
    
    
};

@interface XRHLineChart : XRHChart

/* 折线图的X轴刻度数据 建议使用NSNumber或数字的字符串化 */
@property (nonatomic,strong) NSArray * xLineDataArr;

/* 折线图的Y轴刻度数据 同上 */
@property (nonatomic,strong) NSArray * yLineDataArr;

/* 折线图的点坐标数组 不同类型对应不同数据源  参考上面JHLineChartType       */
@property (nonatomic,strong) NSArray * valueArr;

/* 折线图类型 */
@property (assign , nonatomic) XRHLineChartType  lineType;

/* 折线图象限类型 */
@property (assign, nonatomic) XRHLineChartQuadrantType  lineChartQuadrantType;

/* 线条宽度（非路径动画 仅指X、Y轴刻度线条宽度） */
@property (assign, nonatomic) CGFloat lineWidth;

/* 数值线条颜色 */
@property (nonatomic,strong) NSArray * valueLineColorArr;

/* x y轴线条颜色 */
@property (nonatomic,strong) UIColor * xAndYLineColor;

/* 点的颜色 */
@property (nonatomic,strong) NSArray * pointColorArr;

/* x,y轴刻度值颜色 */
@property (nonatomic,strong) UIColor * xAndYNumberColor;

/* 点的引导虚线颜色 */
@property (nonatomic,strong) NSArray * positionLineColorArr;

/* 坐标点数值颜色 */
@property (nonatomic,strong) NSArray * pointNumberColorArr;

/* 是否需要点 */
@property (assign, nonatomic) BOOL hasPoint;

/* 动画路径线条宽度 */
@property (nonatomic,assign) CGFloat animationPathWidth;

/**
 *  重写初始化方法
 *
 *  @param frame         frame
 *  @param lineChartType 折线图类型
 *
 *  @return 自定义折线图
 */
-(instancetype)initWithFrame:(CGRect)frame andLineChartType:(XRHLineChartType)lineChartType;

@end
