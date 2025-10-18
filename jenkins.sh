# Update system
sudo yum update -y

# Install Git + Maven
sudo yum install git maven -y

# Install Java 11
sudo amazon-linux-extras install java-openjdk17 -y

# Add Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum install jenkins -y

# Start Jenkins service
sudo service jenkins start

# Enable auto-start on boot
sudo chkconfig jenkins on

# Check Jenkins status
sudo service jenkins status


