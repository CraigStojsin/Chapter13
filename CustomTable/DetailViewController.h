

#import <UIKit/UIKit.h>
#import "Recipe.h"
@interface DetailViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UITableView *ingredientsTableView;
@property (strong,nonatomic) Recipe  *recipe;



@end
