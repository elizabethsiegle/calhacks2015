/*
     File: HazardMapViewController.m 
 Abstract: Main view controller for the application.  Implements MKMapViewDelegate to manage adding
 a HazardMap overlay to a MKMapView and to manage display of a HazardMapView on the MKMapView. 
  Version: 1.2 
  

  
 */

#import "HazardMapViewController.h"
#import "HazardMap.h"
#import "HazardMapOverlayRenderer.h"

@interface HazardMapViewController ()

@property (nonatomic, weak) IBOutlet MKMapView *map;

@end


#pragma mark -

@implementation HazardMapViewController


- (void)viewDidLoad
{
//    [super viewDidLoad];
//    
//    // Find and load the earthquake hazard grid from the application's bundle
//    NSString *hazardPath = [[NSBundle mainBundle] pathForResource:@"UShazard.20081229.pga.5pc50"
//                                                           ofType:@"bin"];
//    HazardMap *hazards = [[HazardMap alloc] initWithHazardMapFile:hazardPath];
//    
//    // Position and zoom the map to just fit the grid loaded on screen
//    [self.map setVisibleMapRect:[hazards boundingMapRect]];
//    
//    // Add the earthquake hazard map to the map view
//    [self.map addOverlay:hazards];
//    
//    // Let the map view own the hazards model object now
//    UIImage *image = map.image;
//    UIImage *tempImage = nil;
//    CGSize targetSize = CGSizeMake(80,60);
//    UIGraphicsBeginImageContext(targetSize);
//    
//    CGRect thumbnailRect = CGRectMake(0, 0, 0, 0);
//    thumbnailRect.origin = CGPointMake(0.0,0.0);
//    thumbnailRect.size.width  = targetSize.width;
//    thumbnailRect.size.height = targetSize.height;
//    
//    [image drawInRect:thumbnailRect];
//    
//    tempImage = UIGraphicsGetImageFromCurrentImageContext();
//    
//    UIGraphicsEndImageContext();
//    
//    HazardMapViewController.image = tempImage;
    
    
    
}

// called as a result of calling "addOverlay" (above)
- (MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id <MKOverlay>)overlay
{
    HazardMapOverlayRenderer *renderer = [[HazardMapOverlayRenderer alloc] initWithOverlay:overlay];
    return renderer;
}



//-(IBAction)openMaps:(id)sender {
//    UIApplication *ourApp = [UIApplication sharedApplication];
//}



@end
