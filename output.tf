# Output the IAM users
output "iam_usernames" {
  value = aws_iam_user.users[*].name
}
