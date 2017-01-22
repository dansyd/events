User.destroy_all
u1 = User.create :email => 'dan@gmail.com', :dob => '1982/06/27', :sex => 'M', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'mark@gmail.com', :dob => '1973/03/17', :sex => 'M', :password => 'chicken', :password_confirmation => 'chicken'
u3 = User.create :email => 'emily@gmail.com', :dob => '1985/02/05', :sex => 'F', :password => 'chicken', :password_confirmation => 'chicken'

Event.destroy_all
e1 = Event.create :name => 'Night Markets', :location => 'Carriageworks 245 Wilson Street, Eveleigh', :start_datetime => '2017-01-28T17:00:00+11:00', :end_datetime => '2017-01-28T22:00:00+11:00', :description => 'Set within the Carriageworks precinct and inspired by the streets of Harajuku, Hongdae, and AnFu Lu, the Night Market will immerse you in the food, pop culture and sounds of contemporary Asia.'

e2 = Event.create :name => 'Workshop: Native bee keeping with Tim Heard', :location => '25-27 Lambert St, Camperdown NSW 2050, Australia', :start_datetime => '2017-02-04T09:30:00+11:00', :end_datetime => '2017-02-04T15:30:00+11:00', :description => 'Tim Heard, author of The Australian Native Bee Book, will facilitate the popular native bee keeping course. The day will be 6 hours of engaging and interactive learning. During the day, the topics of bee biology, importance of bees in natural systems and agriculture, rescuing bees threatened in the wild, and keeping stingless bee hives for pets, pollination and for the sought after sugarbag honey are covered. The day will alternate between slide shows and practical sessions.'

# Associations
e1.rsvps.create :user => u1, :status => 'attending'
e1.rsvps.create :user => u2, :status => 'not_attending'
e1.rsvps.create :user => u3, :status => 'not_attending'
e2.rsvps.create :user => u1, :status => 'maybe_attending'
e2.rsvps.create :user => u2, :status => 'maybe_attending'
e2.rsvps.create :user => u3, :status => 'attending'
