r = Recipe.new(servings: 1, steps: "so many steps")
r.valid?
r.errors
#<ActiveModel::Errors:0x007fc064c71e98 @base=#<Recipe id: nil, steps: "so many steps", servings: 1, title: nil>, @messages={:title=>["can't be blank"], :servings=>["must be greater than 1"]}, @details={:title=>[{:error=>:blank}], :servings=>[{:error=>:greater_than, :value=>1, :count=>1}]}>

Recipe.create(title:"Stuff",servings: 1, steps: "so many steps")
r = Recipe.create(title:"Stuff",servings: 1, steps: "so many steps")
r.valid?
r.errors
#<ActiveModel::Errors:0x007f80b9c67870 @base=#<Recipe id: nil, steps: "so many steps", servings: 1, title: "Stuff">, @messages={:title=>["has already been taken"]}, @details={:title=>[{:error=>:taken, :value=>"Stuff"}]}>

r = Recipe.create(title:"Things and mabobs",servings: 1, steps: "so many steps")
r.valid?
r.errors
#<ActiveModel::Errors:0x007fd61b1426e0 @base=#<Recipe id: nil, steps: "so many steps", servings: 1, title: "Things and mabobs">, @messages={:title=>["Please use a Brussels Sprouts recipe."]}, @details={:title=>[{:error=>"Please use a Brussels Sprouts recipe."}]}>

c = Comment.create(comment: "There's no way this tastes good, you suck at cooking!")
c.valid?
c.errors
#<ActiveModel::Errors:0x007fd61afc8f80 @base=#<Comment id: nil, name: nil, comment: "There's no way this tastes good, you suck at cooki...", recipe_id: nil>, @messages={:recipe_id=>["can't be blank"]}, @details={:recipe_id=>[{:error=>:blank}]}>

r = Recipe.create(title: "Brussels Full of Sprouts so much sprouts", steps: "Do your thang", servings: 0)
r.valid?
r.errors
#<ActiveModel::Errors:0x007fa8b396daf8 @base=#<Recipe id: nil, steps: "Do your thang", servings: 0, title: "Brussels Full of Sprouts so much sprouts">, @messages={:servings=>["must be greater than or equal to 1"]}, @details={:servings=>[{:error=>:greater_than_or_equal_to, :value=>0, :count=>1}]}>
