# If the DB is populated, but you want to wipe it out to start with a fresh seeding, 
# run the below command first:
#                        "rake db:migrate:reset"  
# This will drop all, create the DB (with all tables), then remigrate all.




ScoreContext.create!(description: "boring 'ol seconds", perSecondVariable: 1, outputStart: "", outputEnd: " seconds passed.  Yeah, not real interesting, is it?  PICK A DIFFERENT CONTEXT!", unit: "seconds")
ScoreContext.create!(description: "The speed of sound", perSecondVariable: 0.21313027, outputStart: "an object moving at the speed of sound traveled ", outputEnd: " miles.", unit: "miles")
ScoreContext.create!(description: "The speed of light", perSecondVariable: 186000, outputStart: "an object moving at the speed of light traveled ", outputEnd: " miles.", unit: "miles")
ScoreContext.create!(description: "Global population increase", perSecondVariable: 2.6, outputStart: "the global population rose by ", outputEnd: " people.", unit: "people")
earth =ScoreContext.create!(description: "Distance the Earth has traveled around the Sun", perSecondVariable: 18.50553929, outputStart: "the Earth traveled ", outputEnd: " miles around the sun.", unit: "miles")
Fact.create!(score_context_id: earth.id, details: "Every year, the Earth travels 92.96 million miles around the sun, at a rate of 66,620 miles per hour!  WOW!")
bezos = ScoreContext.create!(description: "Jeff Bezos's fortune increase", perSecondVariable: 3182.87037, outputStart: "Jeff Bezos's fortune increased by $", outputEnd: ".", unit: "dollars")
bezosFact1 = Fact.create!(score_context_id: bezos.id, details: "According to the Bloomberg Billionaires Index, Bezos' net worth on 1/1/2019 was $99 billion. On 5/1/2019, it was $132 billion, meaning it rose $33 billion.")
ScoreContext.create!(description: "tweets sent", perSecondVariable: 6000, outputStart: "", outputEnd: " tweets were sent worldwide.", unit: "tweets")
moon = ScoreContext.create!(description: "Distance the Moon has traveled around the Earth", perSecondVariable: 0.635, outputStart: "the Moon traveled ", outputEnd: " miles around the Earth.", unit: "miles")
moonFact1 = Fact.create!(score_context_id: moon.id, details: "The Moon orbits the earth at a relative speed of 2286 miles per hour!")
iss = ScoreContext.create!(description: "Distance traveled by the International Space Station", perSecondVariable: 4.76, outputStart: "the International Space Station traveled ", outputEnd: " miles.", unit: "miles")
issFact1 = Fact.create!(score_context_id: iss.id, details: "The ISS travels at a staggering 17,150 miles per hour!")

tom = User.create!(name: "Tom", login_id: "TomM", password: "12345")
andy = User.create!(name: "Andy", login_id: "AndyC", password: "12345")
joe = User.create(name: "Joe", login_id: "Joe_E", password: "12345")
sarah = User.create(name: "Sarah", login_id: "Sarah87", password: "12345")
melanie = User.create(name: "Melanie", login_id: "Mel_E_Knee", password: "12345")



game1 = Game.create!(name: "Letters Typer", componentName: "LettersGame")
game2 = Game.create!(name: "Numbers Typer", componentName: "NumbersGame")
ScoreHistory.create!(game_id: game1.id, user_id: tom.id, score: 15.345)
ScoreHistory.create!(game_id: game2.id, user_id: tom.id, score: 15.345)
ScoreHistory.create!(game_id: game1.id, user_id: tom.id, score: 21.345)
ScoreHistory.create!(game_id: game2.id, user_id: tom.id, score: 21.345)
ScoreHistory.create!(game_id: game1.id, user_id: andy.id, score: 12.345)
ScoreHistory.create!(game_id: game2.id, user_id: andy.id, score: 14.745)
ScoreHistory.create!(game_id: game1.id, user_id: andy.id, score: 23.335)
ScoreHistory.create!(game_id: game2.id, user_id: andy.id, score: 25.945)
ScoreHistory.create!(game_id: game1.id, user_id: joe.id, score: 15.345)
ScoreHistory.create!(game_id: game1.id, user_id: joe.id, score: 12.985)
ScoreHistory.create!(game_id: game1.id, user_id: joe.id, score: 14.355)
ScoreHistory.create!(game_id: game1.id, user_id: melanie.id, score: 13.355)
ScoreHistory.create!(game_id: game1.id, user_id: melanie.id, score: 18.355)
ScoreHistory.create!(game_id: game1.id, user_id: melanie.id, score: 17.355)
ScoreHistory.create!(game_id: game1.id, user_id: sarah.id, score: 13.655)
ScoreHistory.create!(game_id: game1.id, user_id: sarah.id, score: 18.375)
ScoreHistory.create!(game_id: game1.id, user_id: sarah.id, score: 17.359)
ScoreHistory.create!(game_id: game2.id, user_id: joe.id, score: 15.345)
ScoreHistory.create!(game_id: game2.id, user_id: joe.id, score: 12.985)
ScoreHistory.create!(game_id: game2.id, user_id: joe.id, score: 14.355)
ScoreHistory.create!(game_id: game2.id, user_id: melanie.id, score: 13.355)
ScoreHistory.create!(game_id: game2.id, user_id: melanie.id, score: 18.355)
ScoreHistory.create!(game_id: game2.id, user_id: melanie.id, score: 17.355)
ScoreHistory.create!(game_id: game2.id, user_id: sarah.id, score: 13.655)
ScoreHistory.create!(game_id: game2.id, user_id: sarah.id, score: 18.375)
ScoreHistory.create!(game_id: game2.id, user_id: sarah.id, score: 17.359)


