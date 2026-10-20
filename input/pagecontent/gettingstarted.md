## Getting Started
This file is intended to assist you in setting up your system to contribute to this project,  or to derive another IG from the starting place of this project.

To configure your system to compile this code into an IG, follow the steps below. 

### Prerequisite Skills
This IG is designed to make your getting started process as easy as possible...  But if you are unfamiliar with FHIR, you are strongly recommended to first familiarise yourself with the basic concepts of FHIR resources.  There are many tutorials and guides,  but don't get lost in the weeds,  the best way to learn is actually starting with a simple project.

Equally if you are not familiar with FHIR Shorthand (FSH) it would be good to follow a tutorial   My recommendations are:
- [FSH Seminar](https://fshschool.github.io/courses/fsh-seminar/)
- [Sushi Tutorial](https://fshschool.org/docs/sushi/tutorial/)


### Required Software
You will need to have the following software installed and configured on the system that you will be using for creating the IG.
1. Node.js
2. Sushi - to install Sushi and Node.js follow these [instructions](https://fshschool.org/docs/sushi/installation/)
3. Git
4. A text editor (Notepad++ or Visual Studio Code)

### Installation
To setup and deploy the IG, ensure that you have the pre-requisite software installed,  and then follow the steps below.
1. Create or go to a folder that you will use for working with the FSH code
2. Clone this repository by executing:
  ```sh
  git clone https://github.com/FijiIG/fiji-fhir-ig.git
  ```
3. Install the FHIR packages listed in the dependencies section of the sushi-config.yaml file:
  ```sh
  sushi update-dependencies
  ```
4. Download the latest version of the HL7 FHIR IG Publisher tool into the cache.
   
   (for Linux/Mac)
   ```sh
   ./_updatePublisher.sh
   ```
   (for Windows CMD)
   ```sh
   _updatePublisher
   ```
   (for Windows Powershell)
   ```sh
   ./_updatePublisher.bat
   ```
5. Run SUSHI on the FSH files in input/fsh:
  ```sh
  sushi build .
  ```
6. Build the IG
   
   (for Linux/Mac)
   ```sh
   ./_genonce.sh
   ```
   (for Windows CMD)
   ```sh
   _genonce
   ```
   (for Windows Powershell)
   ```sh
   ./_genonce.bat
   ```

### Contributing to this IG
To contribute to this IG you will need to use a text editor to modify or add to files in the input folder.   

After each modification to fsh or md files,  run the following command:
  (for Linux/Mac)
  ```sh
  ./_genonce.sh
  ```
  (for Windows CMD)
  ```sh
  _genonce
  (for Windows Powershell)
  ```sh
  ./_genonce.bat
  ```


### To derive your own IG based on this content
To create or derive another IG from this content, you will need to use a text editor to modify the following:

1. Change the information in the sushi-config.yaml file to set overall settings for your IG.

2. Using a text editor,  you can adapt or extend the IG by editing the .fsh files in the input/fsh folder.  You can also delete and .fsh files for profiles that you will not be using,  and/or create new fsh files for additional profiles.

3. Using a text editor,  modify the index.md.  This creates the content for the home page of your IG.

4. Make use of the aliases.fsh file.  It contains a set of aliases that you can use in your fsh files to prevent having to type in long url's.

5. After each modification to fsh or md files,  run the following command:
  (for Linux/Mac)
  ```sh
  ./_genonce.sh
  ```
  (for Windows CMD)
  ```sh
  _genonce
  (for Windows Powershell)
  ```sh
  ./_genonce.bat
  ```

### References and Acknowledgements
* [FHIR Shorthand repository for this IG](https://github.com/healthinfoservices/fiji-fhir-ig)
* [FHIR Shorthand FSH](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html)
* [FHIR Shorthand training][fsh-url]
* [Guidance for FHIR IG Creation](https://build.fhir.org/ig/FHIR/ig-guidance/best-practice.html#pages-and-organization)
* [HealthInfoServices - Australia](https://healthinfoservices.net)
* [Daniel Foulkes][linkedin-df-url]


<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-df-url]: https://www.linkedin.com/in/daniel-foulkes/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg
[fsh-badge]: https://fshschool.org/favicon.ico
[fsh-url]: https://fshschool.org/
[license-url]: https://pacific-base-ig.healthinfoservices.net/LICENSE.txt

