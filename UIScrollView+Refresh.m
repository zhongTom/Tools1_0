//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.
//
#import "UIScrollView+Refresh.h"

@implementation UIScrollView (Refresh)
/** 添加头部刷新 */
- (void)addHeaderRefresh:(MJRefreshComponentRefreshingBlock)block{
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:block];
}

/** 添加脚部自动刷新 */
- (void)addAutoFooterRefresh:(MJRefreshComponentRefreshingBlock)block{
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:block];
   
}

/** 添加脚步返回刷新 */
- (void)addBackFooterRefresh:(MJRefreshComponentRefreshingBlock)block{
    self.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:block];
}

/** 结束头部刷新 */
- (void)endHeaderRefresh{
    [self.mj_header endRefreshing];
}

/** 结束脚部刷新 */
- (void)endFooterRefresh{
    [self.mj_footer endRefreshing];
}

/** 开始头部刷新 */
- (void)beginHeaderRefresh{
    [self.mj_header beginRefreshing];
}

/** 开始脚部刷新 */
-(void)beginFooterRefresh{
    [self.mj_footer beginRefreshing];
}

/** 没有更多数据，结束刷新 */
- (void)endRefreshWithNoMoreData{
    [self.mj_footer endRefreshingWithNoMoreData];
}
@end












