# ==============================================================================
# EXPERIMENT 5: Demonstrate Continuous Integration and Development Using Jenkins
# ==============================================================================

# Step 1: Initialize Git Repository and Commit Code
# ------------------------------------------------------------------------------
# Initialize a local Git repository in the project folder
git init

# Add the Java source code to Git staging
git add HelloWorld.java Jenkinsfile

# Commit the code with a descriptive commit message
git commit -m "Initial commit: Add HelloWorld Java app and Jenkinsfile"

# Add a remote repository URL (GitHub/GitLab) accessible by your Jenkins server
# git remote add origin https://github.com/your-username/my-java-app.git
# git branch -M main
# git push -u origin main

# Step 2: Configure Jenkins Job
# ------------------------------------------------------------------------------
# 1. Open Jenkins at http://localhost:8080 and click "New Item".
# 2. Name the project "Java-CI-CD-Pipeline" and select "Pipeline" (or "Freestyle project").
# 3. Under "Build Triggers", check "GitHub hook trigger for GITScm polling" or "Poll SCM".
#    Example Poll SCM schedule to check repository every 5 minutes:
#    H/5 * * * *
# 4. Under Pipeline definition, choose "Pipeline script from SCM", select Git,
#    and enter your repository URL and credentials.

# Step 3: Trigger Build Application
# ------------------------------------------------------------------------------
# Click "Build Now" in Jenkins or push changes to Git to trigger automatic build.
# Jenkins will compile the code, run any test cases, and package the jar.
# Local manual simulation command:
javac HelloWorld.java
jar cfe HelloWorld.jar HelloWorld HelloWorld.class

# Step 4: Monitor the Build
# ------------------------------------------------------------------------------
# 1. Click on the ongoing build number (e.g. #1) in the Build History.
# 2. Select "Console Output" to inspect real-time logs, compilation status, and tests.

# Step 5: Deploy the Application
# ------------------------------------------------------------------------------
# Run the built executable jar file or copy to production server/container:
java -jar HelloWorld.jar
