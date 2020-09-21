Person.destroy_all
Hike.destroy_all

stacey = Person.create(name: 'Stacey')
batman = Person.create(name: 'Batman')
voldemort = Person.create(name: 'Voldemort')

Hike.create(mountain: 'bear peak', person: stacey)
Hike.create(mountain: 'boulder peak', person: stacey)
Hike.create(mountain: 'st. marys', person: batman)
Hike.create(mountain: 'netherlands peak', person: batman)
Hike.create(mountain: 'pikes peak', person: voldemort)