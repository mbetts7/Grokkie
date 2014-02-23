category = []

category << Category.create!(name: 'Programming')

skill = []

skill << category[0].skills.create!(name: 'Javascript')
skill << category[0].skills.create!(name: 'Ruby')
skill << category[0].skills.create!(name: 'Rails')
skill << category[0].skills.create!(name: 'Python')

roadmap = []

roadmap << skill[0].roadmaps.create!(title: "Java Java Time!", description: "Learning javascript is tough and it's especially difficult to get started")

resources = []

resources << roadmap[0].resources.create!(name: "Learning Javascript the Hard Way", description: "It's painful to learn Javascript. Luckily, we have Google!", url: "www.google.com")