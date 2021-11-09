#import "RCTCustomMarker.h"

@implementation RCTCustomMarker {
    UILabel *_communityLabel;
    UILabel *_houseCountLabel;
}

/**
    初始化并返回一个annotationView
    
    @param annotation 关联的annotation对象
    @param reuseIdentifier 如果要重用view，传入一个字符串，否则设为nil，建议重用view
    @return 初始化成功则返回annotation view，否则返回nil
    */
- (id)initWithAnnotation:(id<BMKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self) {
        _community = @"";
        _houseCount = 0;

        self.frame = CGRectMake(0, 0, 60, 60);
        UIView *view = [[UIView alloc] initWithFrame:self.frame];
        view.backgroundColor = [UIColor colorWithRed:39/255.0 green:175/255.0 blue:167/255.0 aIpha:1];
        view.layer.cornerRadius = view.frame.size.width / 2;
        view.clipsToBounds = YES;

        _communityLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 60, 30)];
        _communityLabel.text = _community;
        _communityLabel.textColor = [UIColor whiteColor]; 
        _communityLabel.textAlignment = NSTextAlignmentCenter;
        _communityLabel.font = [UIFont systemFontOfSize:12];

        _houseCountLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, 60, 30)];
        _houseCountLabel.text = _houseCount;
        _houseCountLabel.textColor = [UIColor whiteColor]; 
        _houseCountLabel.textAlignment = NSTextAlignmentCenter;
        _houseCountLabel.font = [UIFont systemFontOfSize:12];

        [self addObserver:self forKeyPath:@"community" options:NSKeyValueObservingOptionNew context:nil];
        [self addObserver:self forKeyPath:@"houseCount" options:NSKeyValueObservingOptionNew context:nil];
    
        [view addSubview:_communityLabel];
        [view addSubview:_houseCountLabel];
        [self addSubview:view];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey, id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"community"]) {
        if (_communityLabel != nil) {
            _communityLabel.text = _community;
        }
    } else if ([keyPath isEqualToString:@"houseCount"]) {
        if (_houseCountLabel != nil) {
            _houseCountLabel.text = _houseCount;
        }
    } else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"community"];
    [self removeObserver:self forKeyPath:@"houseCount"];
}

@end