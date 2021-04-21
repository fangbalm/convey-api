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
    # User.create!(username: Faker::Internet.unique.username, password: '123', name: Faker::Name.name, gender: 'Woman', ethnicity: ethnicityArray.sample, lgbt_status: Faker::Boolean.boolean, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)
    # #2 
    # User.create!(username: Faker::Internet.unique.username, password: '123', name: Faker::Name.name, gender: genderArray.sample, ethnicity: 'Black or African American', lgbt_status: Faker::Boolean.boolean, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)
    # #3 
    # User.create!(username: Faker::Internet.unique.username, password: "123", name: Faker::Name.name, gender: genderArray.sample, ethnicity: ethnicityArray.sample, lgbt_status: true, disability_status: true, immigration_status: Faker::Boolean.boolean)


    # USERS 

    #1 
    User.create!(username: 'delilah', password: '123', name: "Delilah Jenkins", gender: 'Woman', ethnicity: "Native", lgbt_status: Faker::Boolean.boolean, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)

    User.create!(username: 'teddy.tedson', password: '123', name: "Teddy Daniels", gender: 'Nonbinary/GNC', ethnicity: "Black or African-American", lgbt_status: true, disability_status: Faker::Boolean.boolean, immigration_status: Faker::Boolean.boolean)

    User.create!(username: "racheyyy", password: "123", name: "Rachel Martinez", gender: "Woman", ethnicity: "Hispanic or Latino", lgbt_status: true, disability_status: true, immigration_status: Faker::Boolean.boolean)




    # JOURNALS 

    #1 
    Journal.create!(user_id: 1, title: "Work Rants!", description: "My place to bitch about capitalism", private: false)
    #2 
    Journal.create!(user_id: 2, title: "'Can I Touch Your Hair' Log", description: "Uncomfortable racial situations I find myself in", private: false)
    #3
    Journal.create!(user_id: 3, title: "Mental Health Vent", description: "Because things have been getting harder recently", private: false)

    Journal.create!(user_id: 1, title: "After School Affirmations", description: "A few little pick-me-ups", private: true)
    
    Journal.create!(user_id: 1, title: "Boyfriend Troubles", description: "For when I'm fed up!!!", private: true)

    # CATEGORIES 

    #1
    Category.create!(category: "Social")
    #2 
    Category.create!(category: "Vent")
    #3 
    Category.create!(category: "Self-Care")

    # PROMPTS 

    #1 
    Prompt.create!(category_id: 1, prompt: "What is the last social situation that left you feeling uncomfortable and/or empty?")
    #2
    Prompt.create!(category_id: 2, prompt: "Close your eyes for five seconds and think about an adjective that describes how you're feeling. Next, write the word down. Now list the 'why', 'when it happened?', and a small action plan with your next steps to change your current emotion into something else, whatever emotion that may be.")
    #3
    Prompt.create!(category_id: 3, prompt: "Write about a time that made you happy!")
    #4
    Prompt.create!(category_id: 1, prompt: "Talk about the most recent microaggression that’s happened to you and how it made you feel. How did you respond, and what would you do next time to better take care of yourself?")
    #5
    Prompt.create!(category_id: 2, prompt: "Talk about how the past year as a whole has effected you mentally. In what way has your sexuality or identity amplified these feelings you've experienced?")

    Prompt.create!(category_id: 3, prompt: "What was the last piece of media you watched/read that left you thinking about it for days after?")

    Prompt.create!(category_id: 1, prompt: "When's the last time you hung out with a close friend! Reflect on that experience and why it was good or bad.")

    Prompt.create!(category_id: 1, prompt: "Talk about the worst social situation you've experienced, and why it was so bad? What would you do differently for next time!")

    Prompt.create!(category_id: 2, prompt: "If you're feeling overwhelmed right now, take a moment for yourself. What is your most intense emotion right now, and why?")

    Prompt.create!(category_id: 2, prompt: "If money were not an issue, what would you do with your time?")

    Prompt.create!(category_id: 3, prompt: "Write five things you are grateful for.")

    Prompt.create!(category_id: 3, prompt: "What do you like about yourself? What are your best qualities?")
    
    Prompt.create!(category_id: 3, prompt: "How would you like your life to change in five years? In 10 years? How would you like it to stay the same?")


    # ENTRIES

        time = DateTime.now();
        
    #1
    Entry.create!(journal_id: 1, prompt_id: 1, title: "Coworker Annoyance", mood: "Angry", content: "My coworker Tom has been being an asshole to me all week about some assignment I'm meant to do. He's also been passing around some offhanded comments about my work ethnic. His casual misogyny makes me want to do some shit that would get me fired!!!! ARGH", date: time)

    Entry.create!(journal_id: 1, prompt_id: 2, title: "Mournful", mood: "Sad", content: "Today at work Brenda came in today and kept talking about her newborn. I'm frustrated and sad when I think about how much I want to have children, but can't. I'm going to try to distract myself with some Netflix today, they've got a new cooking show that I've been excited about. Hopefully that'll up my mood!", date: time)

    Entry.create!(journal_id: 1, prompt_id: 3, title: "In my feelings, need something to do", mood: "Confused", content: "Last week I went to the beach, it was a great way to detox from this hellscape of a workplace.", date: time)

    #2 
    Entry.create!(journal_id: 2, prompt_id: 2, title: "Job Hunt Sucks pt. 4", mood: "Confused", content: "Got rejected from another job interview yesterday. During the zoom, the interviewer made a comment on my afro puff and its implied unprofessionalism. Wondering if that's what cost me the job. In the moment I laughed it off, but I wish I would've spoken up for myself. Another one bites the dust.", date: time)

    Entry.create!(journal_id: 2, prompt_id: 5, title: "Job Hunt Sucks pt. 5", mood: "Mournful", content: "This year has been an absolute wreck. That's the only way I can describe it! Every time I look for other things it's too much. I think part of the reason it's so hard for me to get my foot in the door is due to my education/experience, it's tough..", date: time)
    #3 
    Entry.create!(journal_id: 3, prompt_id: 3, title: "Corona Feelings", mood: "Sad", content: "Coronavirus has left me feeling so sad lately. Not only has there been such a large increase in hate crimes, but I feel isolated constantly with all of the gay bars closed. That was the main way I got my sense of community..", date: time)

    Entry.create!(journal_id: 4, prompt_id: 3, title: "School Snacks", mood: "Happy", content: "Back in the summer a few years ago I remember getting these delicious ice cream sandwich bars right by campus. It really takes me back to my college days!", date: time)


    puts "seeded 🌱"
