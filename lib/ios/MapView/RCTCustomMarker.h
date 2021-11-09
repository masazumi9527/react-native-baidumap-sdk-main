#import <BaiduMapAPI_Map/BMKAnnotationView.h>

@interface RCTCustomMarker: BMKAnnotationView

@property (nonatomic, copy) NSString *community;
@property (nonatomic, copy) NSNumber *houseCount;

@end