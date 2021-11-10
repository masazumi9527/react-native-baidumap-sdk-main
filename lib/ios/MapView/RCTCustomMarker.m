#import "RCTCustomMarker.h"

@implementation RCTCustomMarker

/**
    初始化并返回一个annotationView
    
    @param annotation 关联的annotation对象
    @param reuseIdentifier 如果要重用view，传入一个字符串，否则设为nil，建议重用view
    @return 初始化成功则返回annotation view，否则返回nil
    */
- (id)initWithAnnotation:(id<BMKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        self.frame = CGRectMake(0, 0, 60, 60);
        UIView *view = [[UIView alloc] initWithFrame:self.frame];
        view.backgroundColor = [UIColor colorWithRed:39/255.0 green:175/255.0 blue:167/255.0 alpha:1];
        view.layer.cornerRadius = view.frame.size.width / 2;
        view.clipsToBounds = YES;

        _communityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 60, 30)];
        _communityLabel.text = @"";
        _communityLabel.textColor = [UIColor whiteColor]; 
        _communityLabel.textAlignment = NSTextAlignmentCenter;
        _communityLabel.font = [UIFont systemFontOfSize:12];

        _houseCountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 60, 30)];
        _houseCountLabel.text = @"0";
        _houseCountLabel.textColor = [UIColor whiteColor]; 
        _houseCountLabel.textAlignment = NSTextAlignmentCenter;
        _houseCountLabel.font = [UIFont systemFontOfSize:12];
    
        [view addSubview:_communityLabel];
        [view addSubview:_houseCountLabel];
        [self addSubview:view];
    }
    return self;
}

@end