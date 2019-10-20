# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)


ScoreContext.create!(description: "boring 'ol seconds", perSecondVariable: 1, unit: "seconds", outputStart: "", outputEnd: "passed.  Yeah, not real interesting, is it?  PICK A DIFFERENT CONTEXT!")
ScoreContext.create!(description: "The speed of sound", perSecondVariable: 0.21313027, unit: "miles", outputStart: "an object moving at the speed of sound traveled", outputEnd: ".")
ScoreContext.create!(description: "The speed of light", perSecondVariable: 186000, unit: "miles", outputStart: "an object moving at the speed of light traveled", outputEnd: ".")
ScoreContext.create!(description: "Global population increase", perSecondVariable: 2.6, unit: "people", outputStart: "the global population rose by", outputEnd: ".")
ScoreContext.create!(description: "Distance the Earth has traveled around the Sun", perSecondVariable: 18.611111, unit: "miles", outputStart: "the Earth traveled", outputEnd: "around the sun.")
bezos = ScoreContext.create!(description: "Jeff Bezos's fortune increase", perSecondVariable: 3182.87037, unit: "dollars", outputStart: "Jeff Bezos's fortune increased by", outputEnd: ".")
Fact.create!(score_context_id: bezos.id, details: "According to the Bloomberg Billionaires Index, Bezos' net worth on 1/1/2019 was $99 billion. On 5/1/2019, it was $132 billion, meaning it rose $33 billion.")
ScoreContext.create!(description: "tweets sent", perSecondVariable: 6000, unit: "tweets", outputStart: "", outputEnd: "were sent worldwide.")
tom = User.create!(name: "Tom", login_id: "TomM", password: "12345")
andy = User.create!(name: "Andy", login_id: "AndyC", password: "12345")

game1 = Game.create!(name: "Letters Typer", componentName: LettersGame)
game2 = Game.create!(name: "Numbers Typer", componentName: NumbersGame)
ScoreHistory.create!(game_id: game1.id, user_id: tom.id, score: 15.345)
ScoreHistory.create!(game_id: game2.id, user_id: tom.id, score: 15.345)
ScoreHistory.create!(game_id: game1.id, user_id: tom.id, score: 21.345)
ScoreHistory.create!(game_id: game2.id, user_id: tom.id, score: 21.345)
ScoreHistory.create!(game_id: game1.id, user_id: andy.id, score: 12.345)
ScoreHistory.create!(game_id: game2.id, user_id: andy.id, score: 14.745)
ScoreHistory.create!(game_id: game1.id, user_id: andy.id, score: 23.335)
ScoreHistory.create!(game_id: game2.id, user_id: andy.id, score: 25.945)


