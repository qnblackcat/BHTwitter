#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/// Hide Who to Follows 
/// All Credit goes to @haoict (https://twitter.com/haoict?s=21) and his code: https://github.com/haoict/twitter-no-ads

@interface TFNItemsDataViewController : NSObject
@property(copy, nonatomic) NSArray *sections;
- (id)itemAtIndexPath:(id)arg1;
@end

@interface T1URTFooterViewModel : NSObject
@property(nonatomic, readonly) NSURL *url;
@end

@interface TFNTwitterModuleFooter : NSObject 
@property(nonatomic, readonly) NSURL *url;
@end

@interface T1URTTimelineUserItemViewModel : NSObject
@property(readonly, nonatomic) NSString *scribeComponent;
@end

@interface TFSTwitterEntityURL : NSObject
@property(readonly, copy, nonatomic) NSString *expandedURL;
@end 

 %hook TFNItemsDataViewController

///////

- (id)tableViewCellForItem:(id)arg1 atIndexPath:(id)arg2 {
      UITableViewCell *tbvCell = %orig;
      id item = [self itemAtIndexPath: arg2];

	    NSString *itemClassName = NSStringFromClass([item classForCoder]);

	  if ([itemClassName isEqualToString:@"TFNTwitterUser"] && [NSStringFromClass([self class]) isEqualToString:@"T1HomeTimelineItemsViewController"]) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }

        if ([itemClassName isEqualToString:@"T1URTTimelineUserItemViewModel"] && [((T1URTTimelineUserItemViewModel *)item).scribeComponent isEqualToString:@"suggest_who_to_follow"]) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }

        if ([itemClassName isEqualToString:@"T1Twitter.URTModuleHeaderViewModel"]) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }

        if ([itemClassName isEqualToString:@"T1Twitter.URTTimelineCarouselViewModel"]) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }

        if ([itemClassName isEqualToString:@"T1URTFooterViewModel"] && [((T1URTFooterViewModel *)item).url.absoluteString containsString:@"connect_people"] ) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }

        if ([itemClassName isEqualToString:@"TFNTwitterModuleFooter"] && [((TFNTwitterModuleFooter *)item).url.absoluteString containsString:@"connect_people"] ) {
          [tbvCell setHidden: YES];
          return tbvCell;
        }
	return %orig;
}


 - (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2 {
      id item = [self itemAtIndexPath: arg2];

      NSString *itemClassName = NSStringFromClass([item classForCoder]);

        if ([itemClassName isEqualToString:@"TFNTwitterUser"] && [NSStringFromClass([self class]) isEqualToString:@"T1HomeTimelineItemsViewController"]) {
          return 0;
        }

        if ([itemClassName isEqualToString:@"T1URTTimelineUserItemViewModel"] && [((T1URTTimelineUserItemViewModel *)item).scribeComponent isEqualToString:@"suggest_who_to_follow"]) {
          return 0;
        }

        if ([itemClassName isEqualToString:@"T1Twitter.URTModuleHeaderViewModel"]) {
          return 0;
        }

        if ([itemClassName isEqualToString:@"T1Twitter.URTTimelineCarouselViewModel"]) {
          return 0;
        }

        if ([itemClassName isEqualToString:@"T1URTFooterViewModel"] && [((T1URTFooterViewModel *)item).url.absoluteString containsString:@"connect_people"] ) {
          return 0;
        }

        if ([itemClassName isEqualToString:@"TFNTwitterModuleFooter"] && [((TFNTwitterModuleFooter *)item).url.absoluteString containsString:@"connect_people"] ) {
          return 0;
        }
      
	return %orig;
}
%end


/// Skip t.co
/// Credit Goes to onewayticket255 (https://github.com/onewayticket255) for his code: https://github.com/haoict/twitternoads/issues/1
/// Source code credit goes to Tanner B: https://twitter.com/NSExceptional/status/1258132009798549505

%hook TFSTwitterEntityURL
     - (NSString*)url{
       return self.expandedURL;
     }
%end
