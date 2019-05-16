//
//  QiShareButton.m
//  QiShareButtonDemo
//
//  Created by qinwanli on 2019/5/16.
//  Copyright © 2019 qinwanli. All rights reserved.
//

#import "QiShareButton.h"

@implementation QiShareButton

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.titleRect) && !CGRectEqualToRect(self.titleRect, CGRectZero)) {
        return self.titleRect;
    } else {
        return [super titleRectForContentRect:contentRect];
    }
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    if (!CGRectIsEmpty(self.imageRect)&&!CGRectEqualToRect(self.imageRect, CGRectZero)) {
        return self.imageRect;
    } else {
        return [super imageRectForContentRect:contentRect];
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    BOOL hasSetTitleRect = !(CGRectIsEmpty(self.titleRect) || CGRectEqualToRect(self.titleRect, CGRectZero));
    BOOL hasSetImageRect = !(CGRectIsEmpty(self.imageRect) || CGRectEqualToRect(self.imageRect, CGRectZero));
    
    if (hasSetImageRect || hasSetTitleRect) {
        CGRect rect = self.frame;
        CGRect curentRect =  CGRectUnion(hasSetImageRect ? self.imageRect : CGRectZero, hasSetTitleRect  ? self.titleRect : CGRectZero);
        rect.size.width = curentRect.size.width + curentRect.origin.x * 2;
        rect.size.height = curentRect.size.height + curentRect.origin.y * 2;
        self.frame = rect;
    }
    
}

@end
