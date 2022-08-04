# Smart-Voting-System
An online voting system based on Face recognition; built using OpenCV, haar cascading, deep learning, MySQL and Flask to uplift the Indian voting system with greater efficiency, security, transparency and reliability.


## INTRODUCTION:

An online voting system for Indian election is proposed for the first time through this project. The proposed model has a greater security in the sense that voter high security password is confirmed before the vote is accepted in the main database of Election Commission of India. The additional feature of the model is that the voter can confirm if his/her vote has gone to correct candidate/party. In this model a person can also vote from outside of his/her allotted constituency or from his/her preferred location. In the proposed system the tallying of the votes will be done automatically, thus saving a huge time and enabling Election Commissioner of India to announce the result within a very short period.

## EXISTING VOTING SYSTEM IN INDIA AND ITS DISADVANTAGES:

In existing systems, voters go to the voting centers and they use their votes manually. It is time consuming and there is chance of gambling the votes. These system relies on huge number of skilled people to work at polling booths and hence is difficult to scale up and it's expensive too.

## PROPOSED METHOD OF SMART VOTING SYSTEM:

In the proposed system, I have tried to build a secure online voting system that is free from unauthorized access while casting votes by the voters. The server aspects of the proposed system have such distribution of authority that server does not enable to manipulate the votes. It is expected that the proposed online voting system will increase the transparency and reliability of the existing electoral system. It uses computer vision techniques for person identification. 


## OBJECTIVE:

In this application, we describe a model for online voting system for India. This system is much secure and efficient than the traditional voting system. Manipulation of votes and delay of results can be avoided easily. A unique voter identity (like aadhar or any other unique voter id number) is the center point of our proposed model. It leads to the easier verification of both voters and candidates.


## SOFTWARE REQUIREMENTS:

1.	python-3.6.8-amd64
2.	pycharm-community-2019.3.1
3.	Webyog_SQLyog_6.56_Enterprise
4.	xampp-win32-5.6.20-0-VC11-installer
5.	Visual C++ redistributable.arm64
6.	Visual C++ redistributable.x64

## LIBRARIES TO BE INSTALLED:

1.	Pip install argparse opencv-python pillow imutils matplotlib pygal flask mysql-connector numpy pandas random2 os-win pybase64 datetime regex collection beautifulsoup4 keras torch tensorflow
2.	Install dlib “python –m pip install 
3.	https://files.pythonhosted.org/packages/0e/ce/f8a3cff33ac03a8219768f0694c5d703c8e037e6aba2e865f9bae22ed63c/dlib-19.8.1-cp36-cp36m-win_amd64.whl#sha256=794994fa2c54e7776659fddb148363a5556468a6d5d46be8dad311722d54bfcf ”

## PROJECT FUNCTIONAL MODULES:

#### ADMIN:

Admin is the person in charge and maintaining the system entirely.
The main functions of the admin are:

•	Login: Logs into the system.

•	Select Candidates: Selects the candidates for voting.

•	View: View voting results.

•	Train: Train a model with the captured images of the voter

•	Logout: after completing the process he log’s out from the system.

#### USER:

User is the person who is interested to vote we can call him as an voter. 

•	User Register: Register into the system if he is new otherwise he log’s in directly.

•	User Login: Login into the system using facial images or Video Stream.

•	User vote: They vote to their desired party/candidate.

•	Logout: After voting they logout from the application.

## PROJECT WORKFLOW:

•	ADMINISTRATOR FUNCTIONS:

=>	The admin logs in the system with his credentials (email- admin@voting.com and password- admin). If incorrect credentials are entered, page will get refreshed, if correct-> redirected to administrator controls page.
=>	Admin will add candidates/nominees with their names, party names and party symbols into the MySQL database.
=>	The admin can train the model when all the voters have completed their registration.
=>	The admin can view the results of the election, once all the voters have voted.

•	USER FUNCTIONS:

=>	A user can be a new user, who is not registered in the database of the Election Commission or can be an already registered user.
=>	If the user is already registered, he/she can proceed with login, face  verification and voting.
=>	If the user is new user, then he/she needs to register in the database first entering all the details like first name, middle name (optional), last name, AADHAR id (must be 12 numbers), Voter id (must be 3 uppercase alphabets + 5 numbers that is total 8), phone number (10 numbers) , email (The same entered in line number 20 of main.py file and currently logged in on the system), age (if less than 18, it will display “not eligible to vote”) , state (select from dropdown) and city(select from dropdown).

=>	Hover over the fields to see the instructions for each field. If specified format doesn’t match then it will display, “please match requested format”.

=>	Then the user can go for email verification by clicking on the button. The user will get the OTP on the entered email id.

=>	Once the email verification is successful, it will display “email verified successfully”.

=>	If the user has already registered before and still trying to register, then it will display “already registered as a voter”.

=>	If the user wants to update any of his details, he/she can use the “update details” button on the home page and update the details according to instructions and verify email again.

•	FACE RECOGNITION FOR REGISTRATION:

=>	When any new user completes email verification successfully then, the face of the user is registered in the MySQL database and mapped to his/her AADHAR id. The facial coordinates are captured using haar cascading.

=>	Once the required number of images are captured, the window will automatically close and you will get redirected to the Home page.


•	Training the model with the images and AADHAR id of the user:

=>	After capturing the facial coordinates of the user, it’s time to train our deep learning model which is a 3 layer (1 input, 1 output, 1 hidden layer) Convolutional Neural Network.
=>	So, got to admin, in the header of the page, we can see train button.
=>	Read the instructions and click on train model. The dataset for this model is the images captured during registration and the AADHAR ids.
=>	Once training is complete, it will display, “model trained successfully” at the top of the page after you are redirected to Home page.

•	FACIAL VERIFICATION AND VOTING:

=>	Once, the model is trained, the users can go for voting process.
=>	Before voting, each user needs to undergo a facial verification test.
=>	This facial verification test is done on the basis of the training of our model where the facial coordinates and AADHAR id are mapped together for each user.
=>	The user is identified on the capturing window by his/her AADHAR id.
=>	Once, the user is successfully identified, that is AADHAR id is being displayed, place the cursor on the capturing window, click once there and press ‘q’ to proceed ahead to cast your vote.
=>	A new page opens where the party symbols are displayed. The voter can select any one symbol to cast his/her vote. Once the vote is casted, it will display, “voted successfully”.
=>	If the facial verification fails, it will display, “unable to detect please contact help desk for manual voting”.
=>	Only 1 vote per person is allowed, so if you try to vote again, it will display, “you already voted” and redirect you to home page.

•	ELECTION RESULTS:
Once, the voting process is completed, the admin can view the voting results instantly, thus leading to instant result declaration. This saves time, energy, efforts and money.


## ADVANTAGES:

•	Time consumption is reduced.
•	Fraud/gambling’s can be reduced.
•	Privacy and secure.
•	Highly convenient.
•	Easy to scale up.
•	Inexpensive.

## APPLICATIONS:

•	Used in National Elections.
•	Used in Television shows.
•	Used in taking mass opinions.


## CONCLUSION:

We have successfully developed an online voting system. The system has a new registration feature which takes in frontal facial images of the person registering. The user needs to verify their emails using OTP as well for a successful registration. Once someone is registered, the models has to be trained again by the admin in order to detect and recognize the new person. A registered user is identified by their face and then allowed to vote unless they have already voted as no one can vote more than once. Frontal Face Haarcascading is used for facial embedding generation. Computer Vision is employed for image preprocessing and video streaming. Flask is used for the User Interface via Python.

### NOTE: All special instructions to be followed to run the project, are mentioned in "SPECIAL INSTRUCTIONS" Word document attached in Smart Voting System folder in google drive link for documents submitted in the form. ALL CREDENTIALS, PASSWORDS for the project ARE IN THIS FILE, without these instructions, project can't be run.
### Software installer application files and setups are also mentioned in the same folder. 
### Working of the project, Overall System Architecture diagram, ER diagram, UML diagram are all combinely included in the "DOCUMENTATION" Word document and Project PPT and other explanatory documents are also present in the same folder. Please check them once.

