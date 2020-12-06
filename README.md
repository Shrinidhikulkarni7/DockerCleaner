# DockerCleaner
This script to clear space consumed by docker's dangling contents.

Use this script as a cronjob to run it everyday. You can set it whenever you need using - https://crontab.guru/

The script checks for space usage and if it is more than 85 percent, it clears the dangling docker contents such as unused images, containers, volumes and networks.
