category = []

category << Category.create!(name: 'Programming')

skill = []

skill << category[0].skills.create!(name: 'Javascript')

roadmap = []

roadmap << skill[0].roadmap.create!(title: "Java Java Time!", description: "Learning javascript is tough and it's especially difficult to get started")