# Coach Advisory System And Football Prediction In Julia

# Installing Julia on your computer 

>basically click on the julia installer then next next until you finish **Don't forget** to check the 
>> *configure the system variables* **option**

After Finishing open terminal/powershell and write the command **julia** if you followed the right steps you will end with the julia great ***repl*** opened in your terminal like this: 

![The Magnificent julia repl!](https://github.com/Noureldin2303/Coach_Advisory_System_And_Football_Prediction_In_Julia/blob/main/Coach%20advisory%20System%20in%20julia/Readme/juliarepl.png?raw=true "Julia Repl")

---

# Installing the necessary packages to run the project code
 1. open the jupyter notebook in vscode 
 2. open terminal by pressing: **`ctrl + shift + ` `**
 3. write the command **julia** in the terminal
 4. If you want to install any packages you should do the following:
    - press `]` key this should open the ***pkg manager*** in julia it should appear in the terminal like this 

![Julia pkg manager!](https://github.com/Noureldin2303/Coach_Advisory_System_And_Football_Prediction_In_Julia/blob/main/Coach%20advisory%20System%20in%20julia/Readme/juliaPkg.png?raw=true "Julia pkg manager")
5. you should then write 
>`pkg.add("package name goes here")`

**voila** you installed the packge succefully
 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Project Idea:
 Football Prediction and Analysis System

# Problem description:
The analytical part is more difficult and requires highly specialized labor. It's not something anyone can do without thinking. An unfocused analyst will miss things, even if he is the best analyst in the world.
Football events and results need to be analyzed fairly quickly, helping the club to apply the lessons learned from the game faster. This means less time wasted training on unhelpful exercises, less internal bad habits, that speed leads to stronger play, and the good club wants to take advantage of that moment.

# Our Solution:
We will use the Julia programming language to build an analytics system that uses artificial intelligence. and machine learning techniques to help analysts discover match events/results no matter how many such information is and quickly and accurately analyze it and produce the kind of data that a team of analysts could take several hours to obtain.


# How does it work:
## Just easy two steps:
### First: 
The coach will choose the two teams that will play next

### Second:
The program will start to analyze the previous matches of each team, in particular the last five matches, and depending on the results of these matches and using some calculations to analyze the data, the program will display the winning / losing percentage of each team or if the two teams are tied

![The Magnificent system GUI!](https://github.com/Noureldin2303/Coach_Advisory_System-Football_Prediction_In_Julia/blob/main/Coach%20advisory%20System%20in%20julia/images/GUI.PNG?raw=true "System GUI")


# Why using Julia for this problem?

1. Julia is suitable for such types of problems.

2. Effective in arithmetic/numerical operations and AI/machine learning applications, it will be used to efficiently calculate win/defeat/tie ratios as designed for scientific computing, capable of handling large amounts of data and computations with easy manipulation and prototyping. where
You will deal with a lot of arithmetic operations and numerical values to analyze and manipulate the data of the previous matches of each team.

3. We will use its advantages in data science to analyze the data using a decision tree to predict the winning team.

4. We also find that Julia solves the problem of languages (prototype - final application), which will make it fast and efficient. Another advantage is that Julia supports parallel code execution, so it will improve processing and save us the time for executing operations, where the most important thing we need in the process of data analysis is greater savings amount of time.

5. We find that Julia can connect to other language packages / libraries, which will make it more easy and flexible
