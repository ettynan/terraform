terraform {
  backend "s3" {
    bucket = "my-bucket-t-terraform-remotestate2" # bucket we created
    key    = "s3remotestate.tf.state" #name of the state file store in S3
    region = "us-west-2"
    #dynamosb_table = "s3-dynamodb-lock" # partitionkey = LockID
  }
}
# created 2 buckets; 1 with the photo, and one with blank file
# "S3remotestate.tf.state" where when run the state is then posted to