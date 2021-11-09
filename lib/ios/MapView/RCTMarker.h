#import <BaiduMapAPI_Map/BMKAnnotationView.h>
#import "RCTMapView.h"
#import "RCTCustomMarker.h"

@interface RCTMarker : BMKAnnotationView <BMKAnnotation>

@property(nonatomic, copy) RCTBubblingEventBlock onBaiduMapPress;
@property(nonatomic, copy) RCTBubblingEventBlock onBaiduMapCalloutPress;
@property(nonatomic, copy) RCTBubblingEventBlock onBaiduMapDragStart;
@property(nonatomic, copy) RCTBubblingEventBlock onBaiduMapDrag;
@property(nonatomic, copy) RCTBubblingEventBlock onBaiduMapDragEnd;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, assign) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString *community;
@property (nonatomic, copy) NSNumber *houseCount;

@property (nonatomic, weak) RCTMapView *mapView;

- (RCTCustomMarker *)annotationView;
- (void)bindCalloutPressHandler;
- (void)setSelected:(BOOL)selected;

+ (NSBundle *)bundle;

@end
