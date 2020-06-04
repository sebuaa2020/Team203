#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>

ros::Publisher vel_pub;

void lidarCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    int nNum = scan->ranges.size();
    geometry_msgs::Twist vel_cmd;

    for(int i=0 ; i<nNum ; i++)
    {
        ROS_INFO("Point[%d] = %f", i, scan->ranges[i]); 
        if (scan->ranges[i] <= 0.4) {
            vel_cmd.linear.x = 0;
            vel_cmd.linear.y = 0;
            vel_cmd.linear.z = 0;
            vel_cmd.angular.x = 0;
            vel_cmd.angular.y = 0;
            vel_cmd.angular.z = 0;
            vel_pub.publish(vel_cmd);
            ROS_INFO("stop ros robot!");
            return;
        }
    }
}

int main(int argc, char** argv)
{
    ros::init(argc,argv,"obstacle_detect");
    
    ROS_INFO("obstacle_detect start!");

    ros::NodeHandle nh;
    ros::Subscriber lidar_sub = nh.subscribe("/scan", 10, &lidarCallback);
    vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);

    ros::spin();
}