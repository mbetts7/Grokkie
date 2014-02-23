category = []

category << Category.create!(name: 'Programming')
category << Category.create!(name: 'Fitness')
category << Category.create!(name: 'Cooking')
skill = []

skill << category[0].skills.create!(name: 'Javascript')
skill << category[0].skills.create!(name: 'Ruby')
skill << category[0].skills.create!(name: 'Rails')
skill << category[0].skills.create!(name: 'Python')
skill << category[1].skills.create!(name: 'Cross-fit')
skill << category[1].skills.create!(name: 'Body-Building')
skill << category[2].skills.create!(name: 'Water Boiling')
skill << category[2].skills.create!(name: 'Deep Fry')
roadmap = []

roadmap << skill[0].roadmaps.create!(title: "Java Java Time!", description: "Learning javascript is tough and it's especially difficult to get started")

resources = []

resources << roadmap[0].resources.create!(name: "Learning Javascript the Hard Way", description: "It's painful to learn Javascript. Luckily, we have Google!", url: "www.google.com")