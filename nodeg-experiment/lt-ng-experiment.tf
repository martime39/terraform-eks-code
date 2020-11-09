resource "aws_launch_template" "lt-ng-experiment" {
  disable_api_termination = false
  instance_type           = "t3.small"
  key_name                = "eksworkshop"
  name                    = format("at-lt-%s-experiment", data.aws_eks_cluster.mycluster.name)
  tags                    = {}
  image_id                = "ami-0c504dda1302b182f"
  user_data               ="TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSI9PU1ZQk9VTkRBUlk9PSIKCi0tPT1NWUJPVU5EQVJZPT0KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgoKIyEvYmluL2Jhc2gKZWNobyAiUnVubmluZyBjdXN0b20gdXNlciBkYXRhIHNjcmlwdCIKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIG15Y2x1c3RlcjEgLS1hcGlzZXJ2ZXItZW5kcG9pbnQgRkVENUI5MTk2RjY1OTYxMTE3OUYwODBBMUU5NDkwM0UuZ3I3LmV1LXdlc3QtMS5la3MuYW1hem9uYXdzLmNvbSAtLWI2NC1jbHVzdGVyLWNhIExTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVU41UkVORFFXSkRaMEYzU1VKQlowbENRVVJCVGtKbmEzRm9hMmxIT1hjd1FrRlJjMFpCUkVGV1RWSk5kMFZSV1VSV1VWRkVSWGR3Y21SWFNtd0tZMjAxYkdSSFZucE5RalJZUkZSSmQwMVVSWGRPZWtVeVRsUm5lRTVHYjFoRVZFMTNUVlJGZDA1VVJUSk9WR2Q0VGtadmQwWlVSVlJOUWtWSFFURlZSUXBCZUUxTFlUTldhVnBZU25WYVdGSnNZM3BEUTBGVFNYZEVVVmxLUzI5YVNXaDJZMDVCVVVWQ1FsRkJSR2RuUlZCQlJFTkRRVkZ2UTJkblJVSkJUbEJzQ25wVVNrNVpXR3gyWWxGMmJFSnVjRmh3SzBaNk5XSkNTRTl0T0N0cFJuVlVWVmxuZWtadVUwbGFjMlJyVG5wQlUwWlVjRlpCYldKM1J6Qm9SblJqZUdrS05VZGxVU3ROT0VaRVdYTktjME12UTNsRlJVTnJSRzlLTmtRMVIyNUpUR1pMUjI1c056VXpMMlZFSzA1UWRXZHVTR3hKV25adVluaDVaVkpTYjBFcmVBbzVWWFF6V0d0NVFsbFVVRUZ1Wm1kWE5YUk5kMWRvZERobVV6SlRVMjVDTlhoeFVVMTVkalJoT0hsb056a3dWSEJrU3pWak4wSm1jalZUYW5SMlNVeERDbkZhU3pnclRsazVUR0phTHpsWFYwODViV3hpYm5aS1JYcDJXbWxoUkV3NVoxUlRlV05RU0hkaVVXOUhSRkZrTVZRMmR6QXpkSEJvTHpkRGEzSXpSelFLUjFCMVVGaEJXbmM1Tm5Wdk4yMHdZM3BOZVVkdWNXMVVkamxGY21wSFUwODJXWGRNUzFVMGExTkJUbEJPWkN0amNWZE5SVEpMUjI1U1NXWkhabVJPTlFwYVVIZFRXVTAwVERKemRrNHJhbFJwUVhWRlEwRjNSVUZCWVUxcVRVTkZkMFJuV1VSV1VqQlFRVkZJTDBKQlVVUkJaMHRyVFVFNFIwRXhWV1JGZDBWQ0NpOTNVVVpOUVUxQ1FXWTRkMFJSV1VwTGIxcEphSFpqVGtGUlJVeENVVUZFWjJkRlFrRkpWRUl2Y25SRlNGcEVZa2R1Y1ZSWU9YSmxNVTF2TWtKek9ETUtSRUUzSzNKdGRreHRkVmROTkV0V2JuaHJUak5xSzA4eU0zbG5WVUowUVcxMVRuTlNVMFkzTjFwaWJFOTNLek5XYmt4S1lrTkJaemQyVmxsdk1FUkxjd3B0VjFaNlluVkRRbFJEY1ZobE4wUmtWWHBEZERob2F5OTRZVWR4YlU1SWVVdDRXRWhtVjJSUVEzUXliVXBYY1VSV04yUmtTRXd5Y1ROb1pqZEZiMmd5Q214Q1RscE9SekEySzFwdFUxaDRLMnR1WTJsVVZ6SnRNVXRVZEdGdWVHRkZOV1JxZEVaVU4zTlhTRlprVHpaNlkzaFlUVWwyZFdkR1lubENaVzR2VjFnS1RqZDBURXN6VHpSRVpHNTRUSGN5YWpWdVNHVnBRWE5JTVhweU5IQlRNVlJJZGxsQmFFczVhMkkwWWpSSlpEQlBWa2xwZVVGdGJGTkdVaXRuY3poNldRcEJMMG8yWXl0bVdXZHpUVXBLTkVaQ1RsSXJiMnB5YkZreFVUZEpaMlZ1WVRScEszUmlVVmhDYlVoS2VWZDVOVWx3Tld0T1UwVlVTblowT0QwS0xTMHRMUzFGVGtRZ1EwVlNWRWxHU1VOQlZFVXRMUzB0TFFvPSAtLWt1YmVsZXQtZXh0cmEtYXJncyAnLS1ub2RlLWxhYmVscz1la3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXA9bmctZXhwZXJpbWVudCxla3MuYW1hem9uYXdzLmNvbS9ub2RlZ3JvdXAtaW1hZ2U9YW1pLTBjNTA0ZGRhMTMwMmIxODJmJwplY2hvICJSdW5uaW5nIGN1c3RvbSB1c2VyIGRhdGEgc2NyaXB0IiA+IC90bXAvbWUudHh0Cnl1bSBpbnN0YWxsIC15IGFtYXpvbi1zc20tYWdlbnQKZWNobyAieXVtJ2QgYWdlbnQiID4+IC90bXAvbWUudHh0CnN5c3RlbWN0bCBlbmFibGUgYW1hem9uLXNzbS1hZ2VudCAmJiBzeXN0ZW1jdGwgc3RhcnQgYW1hem9uLXNzbS1hZ2VudApkYXRlID4+IC90bXAvbWUudHh0CgotLT09TVlCT1VOREFSWT09LS0="
  vpc_security_group_ids  = [data.terraform_remote_state.net.outputs.allnodes-sg] 
  tag_specifications { 
    resource_type = "instance"
   tags = {
      Name = format("%s-experiment", data.aws_eks_cluster.mycluster.name)
    }
  }
  lifecycle {
    create_before_destroy=true
  }
}