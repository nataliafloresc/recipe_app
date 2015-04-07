category1 = Category.create(name: 'Healthy')
category2 = Category.create(name: 'Dessert')
category3 = Category.create(name: 'Appetizer')
category4 = Category.create(name: 'Chocolate')
category5 = Category.create(name: 'Japanese')
category6 = Category.create(name: 'Italian')
category7 = Category.create(name: 'Mexican')
category8 = Category.create(name: 'Chinese')
category9 = Category.create(name: 'French')
category10 = Category.create(name: 'American')
category11 = Category.create(name: 'Other')


Recipe.create([
	{name:'Nutella Sandwich', difficulty_level: 'easy', ingredients: '5 spoons of nutella and 2 slices of white bread',
		preparation_time: 10, directions: 'toast the bread, when its lightly toasted spread the nutella in both breads and put together 
		then cut the crumbles and enjoy!!!!' },
	{name:'Cereal', difficulty_level: 'easy', ingredients: 'one cup of cherios, one cup of milk and one banana',
		preparation_time: 3, directions: 'put in a bowl the cherios and the milk, slice the banana and add'}
	])
