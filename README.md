﻿

## Description

This app is a derivative of the classic American game, The Oregon Trail. The game, released in 1990, took users on a journey reminiscent of early pioneers traveling west via covered wagons in the 1840s. It provides a perspective of the hardships encountered on the trail. As a player, will you survive? Will you die of cholera?

  

## Motivation / Other Ideas

Inspired by a bit of nostalgia I looked to recreate the Oregon Trail experience as a Terminal App. While the original game has complexities that I cannot address in four days, I have endeavoured to create a stripped down version that can be added to at a future date.

I was also considering creating an Australian citizenship/cultural study aid. This would take the form as a multiple choice quizzes that users could select; citizenship text, history, sports, pop culture.

While the citizenship test is still viable, constructing the Oregon Trail game proves more challenging. It has engrained many of the lessons learned in class over the first two weeks at Coder Academy.


## Features and Functionality

The Oregon Trail is a single player game which presents a months long journey in a matter of minutes in your terminal.

From the opening screen users will choose between learning about the Oregon Trail and embarking on the trail. If the select learning about the trail, they will be presented with text that describes what they are to encounter. Once they choose “Travel the Trail” they will select their names, occupations, and date they start their journey. The occupation does not currently affect the outcome, however in future versions this could affect a players ability to purchase supplies.

Throughout the game, the date, weather, and health score (Very Poor, Poor, Fair, Good, Very good) will be tracked. A user will be able to travel 12 miles (19.3 km) in a day. The game automatically travels the trail, though may randomly present challenge such as broken equipment which will cause a player to be delayed by a few days. When a player reaches a landmark, usually a fort or a river, they will be presented with option on how to proceed.

## Prototype features

welcome screen
-user names character
-user inputs to decide course of action
-tracking of the date and distance of travel
-random generator that outputs obstacles- ie. health challenges, equipment breakage, severe weather
-user can quit at any time.

-   ascii messages
-   progress bar
- colorize

## Growth.

stripped down version of Oregon Trail

Future editions can add features such as player budget, a store to buy supplies, hunting to supplement food rations, speed and ration scales, and additional trails to travel. The original game suggests a traveling party of three additional players. This too could be added to a later version.


## Code Structure

The MVP is structured into the following files

-   main.rb
-   obstacles.rb
-   tracker.rb
-   methods.rb

 

## Code Structure / Gems

   Artii (for title)
-   Random (for catastrophes)
-   Progress Bar (distance traveled along the trail)
- Colorize

## Build Status

This project was commenced on Monday 2 September and completed on Friday 6 September. It has been tested and designed to process and deal with errors. It has the potential to be developed further.

  

## Instructions for Use

1.  Download and install ruby
2.  Download and unzip the OregonTrail files on your computer.
3.  Use the terminal to install the bundler gem.
4.  Run the program by entering main.rb

  

## Design and Planning Progress

The design and planning process started on Monday 2 September. Class time was spent creating the basic documentation to support the project. I created a flow chart of the linear journey with points identified for user input. In the initial design period, I created my Trello boards to aid in the project management. I also determined the file structure using multiple files for various classes- forts, tracker, rivers, talk.

After deciding the basic structure of the program, I began to code elements and their corresponding tests.

  

## Difficulties?

I kept talking myself in circles. I found it difficult to reduce the challenge to the root problem and work up. 
  

## Timeline

2 Sept, 14:30: idea approved.
2 Sept, 14:30- 17:00 worked on documentation and flushing out the idea.

3 Sept, 8:30-17:00 method development
3 Sept, 19:00-21:00 testing process
3 Sept, 21:00-22:30 lost to github

4 Sept, 8:30-12:00  building of methods and flow
4 Sept, 13:00-14:00 documentation
4 Sept, 14:00- 17:00 finalising basic flow

4 Sept, 19:00-21:00 documentation

5 Sept, 8:30-12:00 implementing time tracker
5 Sept, 13:00-17:00 reviewing optimising documentation and application. 

## Trello

  

## Testing

  

## Accessibility

The Oregon Trail game was designed to be as clear and accessible as possible. Unfortunately at this time the game is not adaptable for sight impaired users. This is an area for improvement.


## Copyright, Ethical, & Social Issues

As the inspiration for this game was published in 1990 I would like to offer my sincere thanks to Ed Gratz, Charolyn Kappling, Mark Paquette, Larry Phenow, and Julie Redland. 


## License
