# robot_for_practice
## Download the files that we need
```
git clone https://github.com/b2234913/robot_framework_pratice.git
cd robot_for_practice
```

## Prepare robot environment with python 3
```
docker build . -t robot
```

## Run the robot checkout_feature.robot with docker contianer
```
docker run -v $PWD/:/usr/src/test/ -w /usr/src/test/ robot robot -d result checkout_feature.robot
```

## We can see the result floder
