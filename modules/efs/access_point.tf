resource "aws_efs_access_point" "access_point" {
  file_system_id = aws_efs_file_system.file_system.id
}
