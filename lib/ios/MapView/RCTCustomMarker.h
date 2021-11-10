#import <BaiduMapAPI_Map/BMKAnnotationView.h>

@interface RCTCustomMarker: BMKAnnotationView

@property (nonatomic, copy) UILabel *communityLabel;
@property (nonatomic, copy) UILabel *houseCountLabel;

@end