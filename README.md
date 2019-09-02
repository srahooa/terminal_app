# terminal_app
#Description
This app is a derivative of the classic American game, The Oregon Trail. The game, released in 1990, took users on a journey reminiscent of early pioneers traveling west via covered wagons in the 1840s. It provides a perspective of the hardships encountered on the trail. As a player, will you survive? Will you die of cholera?

#Motivation / Other Ideas

Inspired by a bit of nostalgia I looked to recreate the Oregon Trail experience as a Terminal App. While the original game has complexities that I cannot address in four days, I have endeavoured to create a stripped down version that can be added to at a future date. 
I was also considering creating an Australian citizenship/cultural study aid. This would take the form as a multiple choice quizzes that users could select; citizenship text, history, sports, pop culture. 
While the citizenship test is still viable, constructing the Oregon Trail game proves more challenging. It has engrained many of the lessons learned in class over the first two weeks at Coder Academy. 

#Features and Functionality
The Oregon Trail is a single player game which presents a months long journey in a matter of minutes in your terminal. 

From the opening screen users will choose between learning about the Oregon Trail and embarking on the trail. If the select learning about the trail, they will be presented with text that describes what they are to encounter. Once they choose “Travel the Trail” they will select their names, occupations, and date they start their journey. The occupation does not currently affect the outcome, however in future versions this could affect a players ability to purchase supplies. 
Throughout the game, the date, weather, and health score (Very Poor, Poor, Fair, Good, Very good) will be tracked. A user will be able to travel 12 miles (19.3 km) in a day. The game automatically travels the trail, though may randomly present challenge such as broken equipment which will cause a player to be delayed by a few days. When a player reaches a landmark, usually a fort or a river, they will be presented with option on how to proceed.
Prototype features 
-welcome screen
-user character selection
-user inputs to decide course of action
-establish a health scale
-tracking of the date and distance of travel
-random generator that outputs obstacles- ie. health challenges, equipment breakage, severe weather
-user can quit at any time.
ascii messages
progress bar

Growth.
-stripped down version of Oregon Trail
Future editions can add features such as player budget, a store to buy supplies, hunting to supplement food rations, speed and ration scales, and additional trails to travel. The original game suggests a traveling party of three additional players. This too could be added to a later version. 
 

#Code Structure
The MVP is structured into the following files
oregon_trail.rb
forts.rb
tracker.rb
rivers.rb
talk.rb

#Code Structure / Gems
Artii (for title)
Random (for catastrophes)
Progress Bar (distance traveled along the trail)


#Build Status
This project was completed on Friday 6 September. It has been tested and designed to elegantly deal with errors. It has the potential to be developed further.

#Instructions for Use
Download and install ruby 
Download and unzip the OregonTrail files on your computer.
Use the terminal to install the bundler gem.
Run the program by entering oregon_trail.rb

#Design and Planning Progress
The design and planning process started on Monday 2 September. Class time was spent creating the basic documentation to support the project. I created a flow chart of the linear journey with points identified for user input. In the initial design period, I created my Trello boards to aid in the project management. I also determined the file structure using multiple files for various classes- forts, tracker, rivers, talk.
After deciding the basic structure of the program, I began to code elements and their corresponding tests. 

Difficulties?

#Timeline

2:30 pm idea approved.
2:30- 5pm worked on documentation and flushing out the idea.
6-8 Further clarification on loops and process + work on documentation.

#Trello

#Testing

#Accessibility
The Oregon Trail game was designed to be as clear and accessible as possible. Unfortunately at this time the game is not adaptable for sight impaired users. 

#Copyright, Ethical, & Social Issues
As this game exists, I would like to offer my sincere thanks to Ed Gratz, Charolyn Kappling, Mark Paquette, Larry Phenow, and Julie Redland. 

#License
