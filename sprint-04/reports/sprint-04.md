# Sprint-04 Written Report

## Team Number 06

* **Hareem Akram** - Project Manager
* **Grace Kwon** - Developer
* **Muhammad Naveed Zahid** - Jr. Developer
* **Cristian Pintor** - UI/UX
* **Rida Tariq** - IT Operations

### UI/UX Artifacts

For UI/UX

### Infrastructure

We were able to successfully complete the IT Operations and Infrastructure tasks in sprint 3 – our virtual machine was split into frontend and backend servers that would automatically build and deploy with all the variables we've chosen to keep local. Upon building, our Django web application and MySQL databases - as indicated in the ERD we created - are also automatically created and become immediately accessible. Therefore, the team member with this role for sprint 4 in turn assisted the UI/UX member and helped develop user stories that would indicate what our goals were for this current sprint as well as the next one.

### Developer

We fell short on the development front in the last sprint, and were not able to successfully demonstrate the creation of user accounts and posts. This sprint, we rectified that, and users can now sign up on the frontend and use those credentials to log in (previously, only accounts that had been hardcoded were able to log in), and create, edit and delete their own posts. They can also edit their profiles by updating names, emails and adding profile pictures to replace the default Hawk logo.

**Screenshots**
![homepage with posts](../diagrams/homepage.png 'diagrams/homepage.png')

### Junior Developer

Our junior developer was also able to complete most of their tasks for the previous sprint, with one notable exception being the user posts which are hardcoded into the build. Using the users we had included in our build previously, we were able to insert posts into our MySQL tables and display those on the frontend.

Here are images showing the backend and frontend for those posts (posts 2, 5 and 6 have been inserted into the backend, as indicated by the time/date values):
![posts hardcoded into the build](../diagrams/sql_insert.png 'diagrams/sql_insert.png')
![posts hardcoded into the build](../diagrams/hardcoded_posts_sql.png 'diagrams/hardcoded_posts_sql.png')
![hardcoded posts on frontend](../diagrams/hardcoded_posts_frontend.png 'diagrams/hardcoded_posts_frontend.png')

### Project Manager

1. Place images of the full User & Admin and/or anonymous story here with annotations of the functioning and the non-functioning portions as necessary (can reuse the artifact created by UI/UX)
1. Include a file  ```install.md``` in the root of the team GitHub Repo detailing all instructions to build and run the functioning parts of your site
1. Verify that all defined minimum goals were met and explain goals that were reached beyond what was defined.  Also explain reasons behind goals that were not met.
1. List any detailed assumptions your team made explaining deliverable context as needed