resource "aws_ami_from_instance" "yangsh_ami"{
    name = "yangsh-ami"
    source_instance_id = aws_instance.yangsh_web.id
    depends_on = [
        aws_instance.yangsh_web
    ]
}