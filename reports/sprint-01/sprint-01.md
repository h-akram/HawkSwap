#Sprint-01 Report

##Team Number 06
* <b>Grace Kwon</b> - Project Manager
* <b>Hareem Akram</b> - Developer
* <b>Cristian Pintor</b> - Jr. Developer
* <b>Rida Tariq</b> - UI/UX
* <b>Muhammad Naveed Zahid</b> - IT Operations

##UI/UX Report

## Developer Report
* <b>Frontend: HTML, CSS, React.js</b>
  * HTML & CSS
    * Major players in the overall web design of the final product
  * JavaScript
    * Improves the user experience by taking a static webpage and turning it into a dynamic, interactive one
    * Offers much more in terms of programming beyond aesthetics and ease of use
* <b>Backend: Python</b>
  * High efficiency, stability, and scope of development
  * Great readability: blocks of code can be “inherited” (reused) throughout the program – both reducing clutter and the chances of error
    * Inheritance + Python’s relatively simple syntax => faster development
* <b>Web Framework: Django</b>
  * Extensive libraries and functions that well-equip Python
  * Used at Instagram and Spotify
    * Instagram: primarily for photo management
    * Spotify: overall backend development & data analytics
  * Integrate well with our website's frontend technology
  * Fully capable of being used in the backend development of a website
    * Any features not present in the backend can be added in the frontend and still work seamlessly
  * Extensive frameworks that improve the development experience
    * <b>Our choice: React.js</b>
      * Renders web pages quickly; elements and content are being loaded without a large delay
        * Improves user experience
        * Allows constant update of any dynamic elements that may be present on the website
      * Created by Facebook
        * Now used by Reddit, Notion.so and even Netflix
  
## IT Infrastructure Report
* <b>OS: Ubuntu</b>
  * Compatible with database like MYSQL
  * Open source OS; we can use it with other services as well
* <b>Database: MySQL</b>
  * Usage
    * Store customer information and log in information
    * Save data that customers upload
* <b>Caching layer: X</b>
  * There won't be a lot of traffic, so it's not needed.
* <b>Additional features: Chat</b>
  * Users can communicate with each other.

## Developer and Security Assumptions
* <b>Security Vulnerabilities</b>
  * Cross site scripting (XSS): XSS is a vulnerability that allows malicious injections through client-side scripts into a webpage to access data
  * SQL injections: SQL injections that target vulnerabilities in databases in order to gain access, modify, or create new user permissions, or manipulate or destroy data
  * Denial-of-Service (DoS) attacks: attackers overload a server or its surrounding infrastructure with different types of attack traffic to the point where the website becomes sluggish and denies new service requests from real users
  * Data breach
* <b>Protecting Our Web Application and Data</b>
  * HTTPS & Encryption
    * With HTTPS, data is transferred between a web browser and website
    * HTTPS encrypts data using the Transport Layer Security (TLS) protocol
    * Encryption occurs through the asymmetric public key infrastructure which uses a private and public key to encrypt and decrypt data
  * How does this apply to our website?
    * Use HTTPS to protect the transfer of data in our web application
      * Prevents website information from being viewed by attackers
      * Encrypts data traffic; any text package is illegible with random characters
    * Self-signed SSL certificate instead of TLS/SSL certificates
      * Implements encryption
      * Useful for projects not in production
      * Open SSL
* <b>Authentication</b>
  * Process that allows users to verify their identity to gain access to their accounts
  * Recommendations
    * Encourage users to create strong passwords
    * Multi-factor authentication - requires a user to input a one-time access code sent via email or text
    * Limit password attempts and rests by locking a user out of their account after a certain amount of failed login attempts
      * Prevents any brute force attempts at hacking an account
* <b>Web Application Firewall (WAF)</b>
  * Protects a web app against malicious HTTP and HTTPS traffic
  * Protects against vulnerabilities such as cross-site forgery, file inclusion, cross-site scripting, and SQL injection attacks
  * Open source WAF
    * ex) ModSecurity
  * Disadvantages
    * Only detects known vulnerabilities
    * Not able to fix them
      * Instead, it hides the vulnerabilities from the hacker by blocking the malicious requests
* <b>Web Vulnerability Scanner</b>
  * Scans websites to identify vulnerabilities and any security issues
    * Cross-site scripting, SQL injections, command injections, etc.
* <b>When to begin working on security?</b>
  * Make sure that in every phase of our application development our security goals are met
  * The earlier, the better
  
## User/Admin/Anonymous Story Goes here

This is text interspersed with mockups/screenshots (tell us a story and follow the flow of the application)

## Project Manager Report
###Goals for Sprint 1
<dl>
    <dt>1. Research and decide project idea - 02/11/21</dt>
    <dd><ul>
        <li>Research the 7 given options & other ideas</li>
        <li>Decide project idea and requirements  - 02/11/21</li>
    </ul></dd>
    <dt>2. Research project specific needs - 02/18/21</dt>
    <dd><ul>
        <li>Research frontend & backend languages and web frameworks</li>
        <li>Research connection (https etc.), login authentication, and data encryption</li>
    </ul></dd>
</dl>

###Goals for Sprint 2

###References
* https://searchsecurity.techtarget.com/tip/How-to-encrypt-and-secure-a-website-using-HTTPS
* https://support.google.com/domains/answer/7630973?hl=en
* https://www.creativebloq.com/web-design/website-security-tips-protect-your-site-7122853
* https://www.hostgator.com/blog/3-easy-steps-that-protect-your-website-from-hackers/
* https://swoopnow.com/website-authentication/
* https://stackoverflow.com/questions/549/the-definitive-guide-to-form-based-website-authentication
* https://beaglesecurity.com/blog/article/how-to-store-and-secure-sensitive-data-in-web-applications.html
* https://www.cloudflare.com/learning/security/what-is-web-application-security/