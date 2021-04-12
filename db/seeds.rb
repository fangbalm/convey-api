# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SEEEEEEEED DATA

Entry.destroy_all 
Prompt.destroy_all
Category.destroy_all 
Journal.destroy_all
User.destroy_all 


genderArray = ['Woman', 'Man', 'Nonbinary/GNC', 'Self-describe']
ethnicityArray = ['Native', 'Asian', 'Black or African American', 'Hispanic or Latino', 'White', 'Other/Self-describe']

    # USERS 

    #1 
    User.create!(username: Faker::Internet.unique.username, password: '123', name: Faker::Name.name, gender: 'Woman', ethnicity: ethnicityArray.sample, lgbt_status: Faker::Boolean.boolean, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)
    #2 
    User.create!(username: Faker::Internet.unique.username, password: '123', name: Faker::Name.name, gender: genderArray.sample, ethnicity: 'Black or African American', lgbt_status: Faker::Boolean.boolean, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)
    #3 
    User.create!(username: Faker::Internet.unique.username, password: "123", name: Faker::Name.name, gender: genderArray.sample, ethnicity: ethnicityArray.sample, lgbt_status: true, disability_status: true, immigration_status: Faker::Boolean.boolean)


    # JOURNALS 

    #1 
    Journal.create!(user_id: 1, title: "Work Rants!", description: "My place to bitch about capitalism", private: false)
    #2 
    Journal.create!(user_id: 2, title: "'Can I Touch Your Hair' Log", description: "Uncomfortable racial situations I find myself in", private: false)
    #3
    Journal.create!(user_id: 3, title: "Mental Health Vent", description: "Because things have been getting harder recently", private: true)

    Journal.create!(user_id: 1, title: "Test Journal", description: "This is a test journal for the app", private: true)
    
    Journal.create!(user_id: 1, title: "Test Journal NUMBA TWO", description: "This is a test journal for the app AGAIIIN", private: false)

    # CATEGORIES 

    #1
    Category.create!(category: "Social")
    #2 
    Category.create!(category: "Vent")
    #3 
    Category.create!(category: "Self-Care")

    # PROMPTS 

    #1 
    Prompt.create!(user_id: 1, category_id: 1, prompt: "What is the last social situation that left you feeling uncomfortable and/or empty?")
    #2
    Prompt.create!(user_id: 1, category_id: 2, prompt: "Close your eyes for five seconds and think about an adjective that describes how you're feeling. Next, write the word down. Now list the 'why', 'when it happened?', and a small action plan with your next steps to change your current emotion into something else, whatever emotion that may be.")
    #3
    Prompt.create!(user_id: 1, category_id: 3, prompt: "Write about a time that made you happy!")
    #4
    Prompt.create!(user_id: 2, category_id: 1, prompt: "Talk about the most recent microaggression that’s happened to you and how it made you feel. How did you respond, and what would you do next time to better take care of yourself?")
    #5
    Prompt.create!(user_id: 3, category_id: 2, prompt: "Talk about how the past year as a whole has effected you mentally. In what way has your sexuality or identity amplified these feelings you've experienced?")


    # ENTRIES

        time = DateTime.now();
        
    #1
    Entry.create!(journal_id: 1, prompt_id: 1, title: "Coworker Annoyance", mood: "Angry", content: "My coworker Tom has been being an asshole to me all week about some assignment I'm meant to do. He's also been passing around some offhanded comments about my work ethnic. His casual misogyny makes me want to do some shit that would get me fired!!!! ARGH", date: time)
    Entry.create!(journal_id: 1, prompt_id: 2, title: "Mournful", mood: "Sad", content: "Today at work Brenda came in today and kept talking about her newborn. I'm frustrated and sad when I think about how much I want to have children, but can't. I'm going to try to distract myself with some Netflix today, they've got a new cooking show that I've been excited about. Hopefully that'll up my mood!", date: time)
    Entry.create!(journal_id: 1, prompt_id: 3, title: "In my feelings, need something to do", mood: "Confused", content: "Last week I went to the beach, it was a great way to detox from this hellscape of a workplace.", date: time)

    #2 
    Entry.create!(journal_id: 2, prompt_id: 2, title: "Job Hunt Sucks pt. 4", mood: "Confused", content: "Got rejected from another job interview yesterday. During the zoom, the interviewer made a comment on my afro puff and its implied unprofessionalism. Wondering if that's what cost me the job. In the moment I laughed it off, but I wish I would've spoken up for myself. Another one bites the dust.", date: time)
    #3 
    Entry.create!(journal_id: 3, prompt_id: 3, title: "Corona Feelings", mood: "Sad", content: "Coronavirus has left me feeling so sad lately. Not only has there been such a large increase in hate crimes, but I feel isolated constantly with all of the gay bars closed. That was the main way I got my sense of community..", date: time)


    puts "seeded 🌱"
