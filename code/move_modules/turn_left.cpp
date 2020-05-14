// turn left 90 degrees
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

int main(int argc, char** argv) { 

	ros::init(argc, argv, "turn_left"); 
	ros::NodeHandle n; 
	ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel", 10);
	ros::Rate loopRate(10);

	int times = 10;

	while(ros::ok() && times > 0) {

		geometry_msgs::Twist vel_cmd; 

		vel_cmd.linear.x = 0; 
		vel_cmd.linear.y = 0; 
		vel_cmd.linear.z = 0; 

		vel_cmd.angular.x = 0; 
		vel_cmd.angular.y = 0; 
		vel_cmd.angular.z = 2.18; 
		
        vel_pub.publish(vel_cmd); 
		loopRate.sleep(); 

        times--;
	} 
	
    geometry_msgs::Twist vel_cmd; 

	vel_cmd.linear.x = 0; 
	vel_cmd.linear.y = 0; 
	vel_cmd.linear.z = 0; 

	vel_cmd.angular.x = 0; 
	vel_cmd.angular.y = 0; 
	vel_cmd.angular.z = 0; 

	vel_pub.publish(vel_cmd); 
    loopRate.sleep(); 

    return 0; 

}