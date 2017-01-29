User.destroy_all
u1 = User.create :email => 'dan@gmail.com', :dob => '1982/06/27', :sex => 'M', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :email => 'mark@gmail.com', :dob => '1973/03/17', :sex => 'M', :password => 'chicken', :password_confirmation => 'chicken'
u3 = User.create :email => 'emily@gmail.com', :dob => '1985/02/05', :sex => 'F', :password => 'chicken', :password_confirmation => 'chicken'

Event.destroy_all
e1 = Event.create :name => 'Night Markets', :location => 'Carriageworks 245 Wilson Street, Eveleigh', :start_datetime => '2017-02-24T17:00:00', :end_datetime => '2017-02-24T22:00:00', :description => 'Set within the Carriageworks precinct and inspired by the streets of Harajuku, Hongdae, and AnFu Lu, the Night Market will immerse you in the food, pop culture and sounds of contemporary Asia.', :image => 'nightmarkets_gigpxb'

e2 = Event.create :name => 'Workshop: Native bee keeping with Tim Heard', :location => '25-27 Lambert St, Camperdown NSW 2050, Australia', :start_datetime => '2017-03-19T09:30:00', :end_datetime => '2017-03-19T15:30:00', :description => 'Tim Heard, author of The Australian Native Bee Book, will facilitate the popular native bee keeping course. The day will be 6 hours of engaging and interactive learning.

During the day, the topics of bee biology, importance of bees in natural systems and agriculture, rescuing bees threatened in the wild, and keeping stingless bee hives for pets, pollination and for the sought after sugarbag honey are covered.

The day will alternate between slide shows and practical sessions.', :image => 'bee-keeping_qrsotl'

e3 = Event.create :name => 'Free heartfulness meditation', :location => '17 Oxford St, Paddington NSW 2021, Australia', :start_datetime => '2017-03-30T18:00:00', :end_datetime => '2017-03-30T19:00:00', :description => 'Heartfulness enables you to explore meditation more deeply.

It allows you to experience the benefits that come from practising the last four steps of Patanjali’s ashtanga yoga – Prathyahara, Dharana, Dhyana (meditation) and Samadhi.

Heartfulness meditation is designed to be a simple, practical way to nurture and rejuvenate your inner essence.', :image => 'meditation_agsajy'

e4 = Event.create :name => 'Demolished Sydney', :location => 'Museum of Sydney Cnr Phillip and Bridge Streets , Sydney', :start_datetime => '2017-04-18T12:00:00', :end_datetime => '2017-04-18T15:00:00', :description => 'Curated by Dr Nicola Teffer, the exhibition examines the histories of 13 sites and asks, what are the forces that have shaped our changing city and how do we value and preserve the heritage of the city we inherit?

Like its counterparts across the world, Sydney has been in a constant state of building, unbuilding and rebuilding as it has grown into the metropolis of today. The mix of Georgian, Victorian, Art Deco and modernist buildings that have formed the character of Sydney also tell the story of its changing fortunes, attitudes and needs.

Demolished Sydney reveals this process of urban evolution through key buildings that have been demolished and replaced. Through fragments salvaged from theatres, hotels and office blocks, alongside stunning photography, artworks and film, Demolished Sydney brings back to life the heritage of a Sydney that is gone but not forgotten.', :image => 'demolished-sydney_bbsadh'


# Associations
Rsvp.destroy_all
e1.rsvps.create :user => u1, :status => 'attending'
e1.rsvps.create :user => u2, :status => 'maybe_attending'
e1.rsvps.create :user => u3, :status => 'attending'
e2.rsvps.create :user => u1, :status => 'maybe_attending'
e2.rsvps.create :user => u2, :status => 'maybe_attending'
e2.rsvps.create :user => u3, :status => 'attending'

u1.events << e3
u2.events << e4
