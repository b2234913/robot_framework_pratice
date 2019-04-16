# robot_for_practice
## Download the files that we need
```
git clone https://github.com/b2234913/robot_framework_pratice.git
cd robot_framework_pratice
```

## Prepare robot environment with python 3
```
docker build . -t robot
```

Usage
```
docker build [OPTIONS] PATH | URL | -
```
-t Name and optionally a tag in the ‘name:tag’ format
https://docs.docker.com/engine/reference/commandline/build/

## Run the robot checkout_feature.robot with docker contianer
```
docker run -v $PWD/:/usr/src/test/ -w /usr/src/test/ robot robot -d result checkout_feature.robot
```

Usage
```
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```
-v Bind mount a volume
-w Working directory inside the container
https://docs.docker.com/engine/reference/commandline/run/
```
robot [options] data_sources
```
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#id172
## We can see the result floder
