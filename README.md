Robot Framework Demo
===
A little example of how to run Robot Framework test cases with dialogs using a mac and Selenium2Library.

Instructions for Mac
---

1. Make sure you have Chrome installed
2. Download ChromeDriver at https://chromedriver.storage.googleapis.com/index.html?path=2.30/
3. Put the ChromeDriver into /usr/local/bin
4. Install pip:
        
        sudo easy_install pip
        
5. Intall Robot Framework and the needed libraries:
        
        pip install robotframework
        pip install pillow==2.9.0
        pip install pyobjc-core pyobjc
        pip install robotframework-imagehorizonlibrary
        pip install robotframework-selenium2library
        
6. Run the tests:
        
        pybot tests/PlayChess.robot
                
