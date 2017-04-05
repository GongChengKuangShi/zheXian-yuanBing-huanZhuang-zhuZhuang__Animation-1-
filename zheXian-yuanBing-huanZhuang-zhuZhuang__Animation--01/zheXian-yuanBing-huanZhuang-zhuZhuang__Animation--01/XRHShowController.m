//
//  XRHShowController.m
//  zheXian-yuanBing-huanZhuang-zhuZhuang__Animation
//
//  Created by xiangronghua on 2017/3/31.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import "XRHShowController.h"
#import "XRHChartHeader.h"

#define k_MainBoundsWidth [UIScreen mainScreen].bounds.size.width
#define k_MainBoundsHeight [UIScreen mainScreen].bounds.size.height
@interface XRHShowController ()

@end

@implementation XRHShowController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    switch (_index) {
        case 0:
        {
            [self showFirstQuardrant];
        }
            break;
        case 1:
        {
            [self showFirstAndSecondQuardrant];
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
        case 4:
        {
            
        }
            break;
        case 5:
        {
            
        }
            break;
        case 6:
        {
            
        }
            break;
        case 7:
        {
            
        }
            break;
        default:
            break;
    }
}

// 第一象限折线图
- (void)showFirstQuardrant {
 
    XRHLineChart *lineChart = [[XRHLineChart alloc] initWithFrame:CGRectMake(10, 100, k_MainBoundsWidth - 20, 300) andLineChartType:XRHChartLineValueNotForEveryX];
    
    /* X轴的刻度值 可以传入NSString或NSNumber类型 并且数据结构随折线图类型变化而变化 详情看文档或其他象限X轴数据源示例 */
    lineChart.xLineDataArr = @[@"0",@"1",@"2",@3,@4,@5,@6,@7];
    
    /* 折线图的不同类型  按照象限划分 不同象限对应不同X轴刻度数据源和不同的值数据源 */
    lineChart.lineChartQuadrantType = XRHLineChartQuadrantTypeFirstQuardrant;
    
    /* 数据源 */
    lineChart.valueArr = @[@[@"1",@"2",@"1",@6,@4,@9,@6,@7]];
    
    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor redColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    /* 坐标点的虚线颜色 */
    lineChart.positionLineColorArr = @[[UIColor blueColor],[UIColor greenColor]];
    [self.view addSubview:lineChart];
    [lineChart showAnimation];
}

//第一二象限
- (void)showFirstAndSecondQuardrant {
    
    XRHLineChart *lineChart = [[XRHLineChart alloc] initWithFrame:CGRectMake(10, 100, k_MainBoundsWidth - 20, 300) andLineChartType:XRHChartLineValueNotForEveryX];
    lineChart.xLineDataArr = @[@[@"-3",@"-2",@"-1"],@[@0,@1,@2,@3]];
    lineChart.lineChartQuadrantType = XRHLineChartQuadrantTypeFirstAndSecondQuardrant;
    lineChart.valueArr = @[@[@"5",@"2",@"7",@4,@35,@10,@6],@[@"1",@"10",@"4",@6,@14,@9,@27]];
    /*  
     值折线的折线颜色 默认暗黑色
     */
    lineChart.valueLineColorArr = @[[UIColor purpleColor],[UIColor brownColor]];
    /*
     值点的颜色 默认橘黄色
     */
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* 
     X和Y轴的颜色 默认暗颜色
     */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* 
     XY轴的刻度颜色 m
     */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    [self.view addSubview:lineChart];
    [lineChart showAnimation];
    
    /* 
     清除折线图的内容
     */
//    [lineChart clear];
}

//第一四象限
- (void)showFirstAndFouthQuardrant {
    
    XRHLineChart *lineChart = [[XRHLineChart alloc] initWithFrame:CGRectMake(10, 100, k_MainBoundsWidth - 20, 300) andLineChartType:XRHChartLineValueNotForEveryX];
    lineChart.xLineDataArr  = @[@"0",@"1",@"2",@3,@4,@5,@6,@7];
    lineChart.lineChartQuadrantType = XRHLineChartQuadrantTypeFirstAndFouthQuardrant;
    lineChart.valueArr = @[@[@"5",@"-22",@"7",@(-4),@25,@15,@6,@9],@[@"1",@"-12",@"1",@6,@4,@(-8),@6,@7]];
    
    /* 值折线的折线颜色 默认暗黑色*/
    lineChart.valueLineColorArr =@[ [UIColor purpleColor], [UIColor brownColor]];
    
    /* 值点的颜色 默认橘黄色*/
    lineChart.pointColorArr = @[[UIColor orangeColor],[UIColor yellowColor]];
    
    /* X和Y轴的颜色 默认暗黑色 */
    lineChart.xAndYLineColor = [UIColor greenColor];
    
    /* XY轴的刻度颜色 m */
    lineChart.xAndYNumberColor = [UIColor blueColor];
    
    [self.view addSubview:lineChart];
    [lineChart showAnimation];
}

@end
