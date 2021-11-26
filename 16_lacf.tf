resource "aws_launch_configuration" "yangsh_lacf" {
    name = "yangsh-lacf"
    image_id = aws_ami_from_instance.yangsh_ami.id
    instance_type = "t2.micro"
    iam_instance_profile = "admin_role"
    security_groups = [aws_security_group.yangsh_websg.id]
    key_name = "yang123-key"
    user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
            
}