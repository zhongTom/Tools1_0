//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <MJRefresh.h>

@interface UIScrollView (Refresh)
/** 添加头部刷新 */
- (void)addHeaderRefresh:(MJRefreshComponentRefreshingBlock)block;

/** 添加脚部自动刷新 */
- (void)addAutoFooterRefresh:(MJRefreshComponentRefreshingBlock)block;

/** 添加脚步返回刷新 */
- (void)addBackFooterRefresh:(MJRefreshComponentRefreshingBlock)block;

/** 结束头部刷新 */
- (void)endHeaderRefresh;

/** 结束脚部刷新 */
- (void)endFooterRefresh;

/** 开始头部刷新 */
- (void)beginHeaderRefresh;

/** 开始脚部刷新 */
-(void)beginFooterRefresh;

/** 没有更多数据，结束刷新 */
- (void)endRefreshWithNoMoreData;
@end










