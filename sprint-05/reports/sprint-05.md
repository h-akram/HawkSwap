# Sprint-04 Written Report

## Team Number 06

* **Muhammad Naveed Zahid** - Project Manager
* **Rida Tariq** - Developer
* **Grace Kwon** - Jr. Developer
* **Hareem Akram** - UI/UX
* **Cristian Pintor** - IT Operations

## UI/UX Artifacts
Video : https://drive.google.com/drive/folders/1YzOofEuzei7GFXdNcjrnDFSvMyi80TlL

This sprint, the UX/UX designer was in charge of ensuring every user was inputting legitimate posts and creating non-test user accounts for demonstration purposes, which was done. Here are some screenshots highlighting our posts and comments, all created by “real” people:



![Screen Shot 2021-05-05 at 9 25 47 PM](https://user-images.githubusercontent.com/59890820/117272819-2dc57080-ae21-11eb-8e09-ecba9e943556.png)

![Screenshot_2021-05-05 Django Project(5)](https://user-images.githubusercontent.com/59890820/117273261-96ace880-ae21-11eb-97cd-088290863827.png)

![Screenshot_2021-05-05 Django Project(6)](https://user-images.githubusercontent.com/59890820/117273292-9e6c8d00-ae21-11eb-8c1a-1dd07adfb9ee.png)




These test users also have their own profiles, such as the one we created for Steve:
![Screen Shot 2021-05-05 at 9 26 54 PM](https://user-images.githubusercontent.com/59890820/117273409-b9d79800-ae21-11eb-8a07-2920b2af0cf3.png)


Lastly, for additions we made after sprint 3, the main changes in our website design was the inclusion of comment and rating systems. The commenting feature is already demonstrated in the above screenshots, and the karma/rating system works as follows:
![Screen Shot 2021-05-06 at 4 11 14 AM](https://user-images.githubusercontent.com/59890820/117273565-decc0b00-ae21-11eb-9a11-ce0ee31705ff.png)


Our aim was to work a little more on the CSS of the website to incorporate our school colors into the website design, but unfortunately due to the lack of time and other priorities, were unable to.



## Infrastructure

Video : https://drive.google.com/drive/folders/1YzOofEuzei7GFXdNcjrnDFSvMyi80TlL
For this sprint, I contributed some of the last minute development work into the project, such as adding the image feature for posts as well as comments and a couple other small tasks like footer and sidebar links.

View of comments under a post

![Screen Shot 2021-05-06 at 4 19 15 AM](https://user-images.githubusercontent.com/59890820/117274450-ae38a100-ae22-11eb-9c1b-0d673056ebd2.png)

View of comment form

![Screen Shot 2021-05-06 at 4 20 00 AM](https://user-images.githubusercontent.com/59890820/117274491-b85a9f80-ae22-11eb-913c-86c04ed21a14.png)

View of post with image of product

![Screen Shot 2021-05-06 at 4 20 15 AM](https://user-images.githubusercontent.com/59890820/117274504-bbee2680-ae22-11eb-9c2f-aacd135e8736.png)

View post form with title, content and image fields

![Screen Shot 2021-05-06 at 4 20 22 AM](https://user-images.githubusercontent.com/59890820/117274515-bf81ad80-ae22-11eb-8a74-85fe6fbb7143.png)

Infrastructure
We have two IP addresses:
192.168.33.33 serves as our front-end server address which displays all of our Django templates

![Screen Shot 2021-05-06 at 4 23 53 AM](https://user-images.githubusercontent.com/59890820/117274687-eb9d2e80-ae22-11eb-8436-5f4ee0d37451.png)

192.168.33.34 serves as our back-end address where our MariaDB database lives and where all of our migrations from Djnago are passed over in order to create new tables with all of the columns required for a certain functionality like comments or posts

![Screen Shot 2021-05-06 at 4 21 20 AM](https://user-images.githubusercontent.com/59890820/117274749-f8ba1d80-ae22-11eb-8880-3cc2c20d51fb.png)
![Screen Shot 2021-05-06 at 4 21 29 AM](https://user-images.githubusercontent.com/59890820/117274755-f952b400-ae22-11eb-9421-21510890ddde.png)



The two scripts that build the servers are:
* post_install_django-install-and-configure-webserver.sh
* post_install_django-install-and-configure-database.sh

These two scripts install the database and framework used in our web application. Our install.md 

The main external package installed during the VM installation is the Django framework.



## Developer
Video : https://drive.google.com/drive/folders/1YzOofEuzei7GFXdNcjrnDFSvMyi80TlL

For sprint 5, my role is Developer, and I had the following responsibilities.
  -List all tasks that you have completed along with the artifacts proving they are complete (GitHub commit URL and Project Management artifact  screenshot)
We were able to create the full running website with all of its web pages using the Django framework to successfully implement them into one application. Several databases were created along the way using MySQL to hold usernames, email addresses, passwords, item posts, question/answers, and pictures into separate databases. All of our group members individually created VMs and tested it to make sure it was doing all of the required tasks that were discussed so far in the previous sprints. With the assistance of IT operator and junior developer we were able to add a comments section, image feature for posts, and karma activity page to rate items afterwards. Certain functionalities of our Hawk Swap website are as follows:
-Registration and login pages for student users with some university resources.
-About page that has the brief explanation what this website is for
-Student personal account page where they can view or change username, profile image (to replace the default Hawk logo). 
-Moreover, users can upload item posts for sale with title, content, and image. There is an option to delete those posts as well.
-Different users like buyers and sellers can chat with each other through comments sections under each item listing.  
-Karma page where student users can rate and describe their experience.
-Main page where the user can see the item listings. Also, there is a sidebar along with different useful links such as latest university news, current academic calendar, and upcoming events.
![Screen Shot 2021-05-06 at 4 06 21 AM](https://user-images.githubusercontent.com/59890820/117275021-3b7bf580-ae23-11eb-9e46-5d332fc4b26e.png)
![Screen Shot 2021-05-06 at 4 08 08 AM](https://user-images.githubusercontent.com/59890820/117275026-3cad2280-ae23-11eb-833c-28befbd77972.png)
![Screen Shot 2021-05-06 at 4 08 27 AM](https://user-images.githubusercontent.com/59890820/117275029-3d45b900-ae23-11eb-9c47-028beb3a6d6e.png)
![Screen Shot 2021-05-06 at 4 08 38 AM](https://user-images.githubusercontent.com/59890820/117275032-3dde4f80-ae23-11eb-928a-4b8c09601762.png)



## Junior Developer
Video : https://drive.google.com/drive/folders/1YzOofEuzei7GFXdNcjrnDFSvMyi80TlL

This sprint, I worked on two things - karma and merging Cristian and my code to the team repo.

Karma
![Screen Shot 2021-05-06 at 4 30 01 AM](https://user-images.githubusercontent.com/59890820/117275601-cf4dc180-ae23-11eb-8466-b093af875210.png)
![Screen Shot 2021-05-06 at 4 30 11 AM](https://user-images.githubusercontent.com/59890820/117275603-cfe65800-ae23-11eb-8fac-bad7de5b6af1.png)


Users can rate other users - buyers and sellers. The stars represent the score, from 1 to 5 (1, 2, 3, 4, 5). Once the rating is chosen, a line (in this case, “I just love it”) appears under the stars and above the additional comments section. Lastly, users can add comments if they want to.



Merging code
Cristian’s
https://github.com/illinoistech-itm/2021-team06r/commit/230a74a8f0e6e09991a768d51540073bdb4954be
https://github.com/illinoistech-itm/2021-team06r/commit/97affb8d5ca8e574d018c0eb795fe1119033ce40
Grace’s
https://github.com/illinoistech-itm/2021-team06r/commit/2d4b1c85d4d358d35a3199a831065071809dd9eb
etc. There were several commits.


## Project Manager
Video: https://drive.google.com/drive/folders/1YzOofEuzei7GFXdNcjrnDFSvMyi80TlL

Install.md 
![Screen Shot 2021-05-06 at 4 31 37 AM](https://user-images.githubusercontent.com/59890820/117275776-002df680-ae24-11eb-8419-a274483931a9.png)
![Screen Shot 2021-05-06 at 4 31 45 AM](https://user-images.githubusercontent.com/59890820/117275783-015f2380-ae24-11eb-87e2-87e9e09f91bc.png)

Moving Forward we would like to make the site little better as the design you see is basic design but if we need to make it more professional we can and also my team wanted to add a chat feature which we didn't complete so if we had little more time we would encorporate that into this site as well.
