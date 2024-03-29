#**************************************************
# Create a group
#**************************************************
# resource "aws_iam_group" "tfgroup" {
#   name = "terraform-group"
# }

#**************************************************
# Create IAM users 
#**************************************************

resource "aws_iam_user" "users" {
  name     = var.usernames1
}

resource "aws_iam_user" "users2" {
  name     = var.usernames2
}

resource "aws_iam_user" "users3" {
  name   = "ben"
}

#**************************************************
# Create IAM users using Count 
#**************************************************

# resource "aws_iam_user" "users" {
#   count    = length(var.usernames)
#   name     = var.usernames[count.index]
# }

#**************************************************
# Add members to the group
#**************************************************


# resource "aws_iam_group_membership" "main" {
#   name = "group-membership"

#   users = [
#     aws_iam_user.users[each.key]
#   ]
#   group = aws_iam_group.tfgroup.name
# }
