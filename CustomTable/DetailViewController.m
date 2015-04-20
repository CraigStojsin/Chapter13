//
//  DetailViewController.m
//  CustomTable
//
//  Created by Simon Ng on 2/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set the Label text with the selected recipe
    self.title = self.recipe.name;
    self.prepTimeLabel.text = self.recipe.prepTime;
    self.recipeImageView.image =[UIImage imageNamed:self.recipe.image];
    self.ingredientsTableView.delegate = self;
    self.ingredientsTableView.dataSource = self;
    [self.ingredientsTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.recipe.ingredients[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.recipe.ingredients.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
