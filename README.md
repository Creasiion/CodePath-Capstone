Design Project - README
===

# Plant-Sitter

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

Allow plant owners to keep track of when to feed their plant, if they need to repot, and if they need to change the location of their plant. New plant owners can do a test to discover what kind of plant is the right plant for them based off of their location, weather, season, and schedule.

### App Evaluation

- **Category:** Lifestyle 
- **Mobile:** Mobile is important for logging plant updates and health statistics. Compass/location will be used to recommend best plant to have and where in your household.
- **Story:** Creates an informed guide for beginner plant owners or plant owners transitioning to take care of it the best way they can, while also adjusting to their schedule to make a plant experience feel less like a "chore", while simultaneously educating. Allows experienced plant users with busy schedules to relax and plan ahead for their plants.
- **Market:** Any person who wants to have a house plant, or is an experienced but busy plant owner can use this app. Could be further implemented for crops such as berries and vegetables.
- **Habit:** Experienced plant owners are using it at least weekly to cross of tasks involving their plant. Inexperienced plant owners can use it daily for advice and more information on their plant, making it a bridgeway for those inexperienced to learn more with less failure and more support. They frequency will truly depend on what plant they have. 
- **Scope:** V1 would test compass and plant recommendation test, which could be tested via experienced plant owners for the compass, and beginners that may already have the plant they got tested for. V2 would have the task creator and calendar for users to input their schedule for watering the plant. V3 would set up a way for beginner users to automatically have a schedule for their plant. Could also implement advice/"diagnoses" for users in case there is an issue with their plant, with video guidance and linked articles.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* The user can add tasks and how often they need to do them for their plant i.e. Water once a week on Tuesdays
* The user can do a test to find a new houseplant best for them
* The user can search general information on what plant they have and others

**Optional Nice-to-have Stories**

* The user can get advice from plant-sitter bot about issues involving their plant
* The user can watch introductory videos with tips such as repotting on how to care for their plant

### 2. Screen Archetypes

- [ ] Naviation
* Go between Plant tasker and find plant
- [ ] Stream
* Find Plant tab
- [ ] Detail
* Specific plant details
* Homepage of user's plant information

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Home]
* [Calendar]
* [Search]

**Flow Navigation** (Screen to Screen)

- [ ] Home
* Can go to either Calendar or Search
* OPTIONALLY: If user has not input a plant yet, or want to add another plant "Add plant baby" option on the page
- [ ] Calendar
* Can go to either Home or Search
* Multiple plants color coded on the calendar
- [ ] Search
* Can go to either Home or Calendar
* Search plant by name, or filter OPTIONALLY: filter based off of which plant would be best for you based off of quiz
* OPTIONALLY: Add bookmark section to keep plants that interest the user

## Wireframes

<img src="https://i.imgur.com/TcgGgiw.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups
Below are wireframe options for the test, including OPTIONAL: compass screen
<img src="https://i.imgur.com/T7ZN61t.jpg" width=600>

## Week 9 Sprint
Goals from Week 8:
- [x] Fix error when trying to switch view controllers
- [ ] Add in what variables we want from Perenual API (Doc here: https://perenual.com/docs/api)
- [x] Have working calendar AND task to do.
- [ ] If there's time, have color options for task text for different plants user has
- [ ] Have scroll function done for Encyclopedia.
[Progress]https://www.loom.com/share/c30b491a7b29478f8585f1361dc5326c
*FEATURE IMPLEMENTED!* Users can now add to their to-do list by calendar date, and can clear them as well!
New Goals:
- [ ] Add in what variables we want from Perenual API (Doc here: https://perenual.com/docs/api)
- [ ] Have scroll function done for Encyclopedia.
- [ ] Add images!

## Week 8 Sprint
Goals:
- [x] Have all view controllers created with necessary components (i.e. table view) added
- [ ] Design and add necessary graphics/color theme next (Image will be from API)
[Progress]https://www.loom.com/share/5559ba74cb054f069a92a951a7288238
NOTE: All view controllers necessary have been created with necessary components.
New goals:
- [ ] Fix error when trying to switch view controllers
- [ ] Add in what variables we want from Perenual API (Doc here: https://perenual.com/docs/api)
- [ ] Have working calendar AND task to do.
  - [ ] If there's time, have color options for task text for different plants user has
- [ ] Have scroll function done for Encyclopedia.

### [BONUS] Interactive Prototype

## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
