  <h3 align="center">MS MongoDB Hackathon</h3>

  <p align="center">
    Play and learn to use MongoDB to build awesome apps
  </p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[MS MongoDB Hackathon Jive Page](http://indiatechmongodb)

**Participation in Contest only permitted for Morgan Stanley India Technology staff. Please register through the link in the Jive Page**

India Technology's Data Engineering & Analytics (DEA) Club in partnership with India Tech Philanthrophy and MongoDB is pleased to launch a hackathon. The hackathon invites developers to create solutions that are socially responsible, address sustainability, wellbeing or connect individuals with the tools to promote general welfare and create something to make the world a better place!

Participants will utilize MongoDB to address practical technology challenges for the mentioned themes.

Three teams will be selected to win a $500 donation to the cause of their choice!



<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

* Innovation Lab VM. Get one from [http://innovationlab](http://innovationlab)
* One Redhat AWS instance running from Innovation Lab VM

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/smchitre/msmongo_hackathon.git
   ```
2. For local install/testing of MongoDB on AWS Redhat instance
   ```sh
   ./mongodb_local_setup.sh
   ```
3. For cleanup of local install of MongoDB & drivers on AWS Redhat instance
   ```sh
   ./mongodb_local_clean.sh
   ```
4. For setup/testing of Remote Atlas instance of MongoDB on AWS Redhat instance
   ```sh
   ./mongodb_atlas_setup.sh
   ```
5. For cleanup of Remote Atlas instance & drivers of MongoDB on AWS Redhat instance
   ```sh
   ./mongodb_atlas_clean.sh
   ```



<!-- USAGE EXAMPLES -->
## Usage

**Local install**

This installs a local instance of MongoDB on your Innovation Lab VM.
* mongodb_local_clean.sh - Clean up the local mongodb instance
* mongodb_local_setup.sh - Create and run a new mongodb instance.Test connectivity from python,javascript and java
* mongodb_local_test.java - Java CLI code to connect to local mongodb instance
* mongodb_local_test.py - Python code to connect to local mongodb instance
* mongosh_local_test.js - Javascript code to connect to local mongodb instance using mongosh
* testMongoDBconnection_local.js - Mongosh code to connect to local mongodb instance



**Atlas connectivity install**

This installs drivers to connect to Remote Atlas instance of MongoDB from your Innovation Lab VM.
* mongodb_atlas_clean.sh - Clean up the mongodb client drivers
* mongodb_atlas_setup.sh - Connect to mongodb Atlas instance.Test connectivity from python,javascript and java
* mongodb_atlas_test.java - Java CLI code to connect to remote Atlas mongodb instance
* mongodb_atlas_test.py - Python code to connect to Atlas mongodb instance
* mongosh_atlas_test.js - Javascript code to connect to local mongodb instance using mongosh
* testMongoDBconnection_atlas.js - Mongosh code to connect to remote atlas mongodb instance


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request




<!-- CONTACT -->
## Contact

indiatech-mongodb-core@ms.com

Project Link: [https://github.com/smchitre/msmongo_hackathon.git](https://github.com/smchitre/msmongo_hackathon.git)


