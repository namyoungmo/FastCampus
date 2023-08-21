resource "aws_launch_template" "tfer--eks-34c4f167-b839-1ca9-980b-762bbd8b62b9" {
  block_device_mappings {
    device_name = "/dev/xvda"

    ebs {
      delete_on_termination = "true"
      iops                  = "0"
      throughput            = "0"
      volume_size           = "20"
      volume_type           = "gp2"
    }
  }

  default_version         = "1"
  disable_api_stop        = "false"
  disable_api_termination = "false"

  iam_instance_profile {
    name = "eks-34c4f167-b839-1ca9-980b-762bbd8b62b9"
  }

  image_id      = "ami-0c260bb6317e199d3"
  instance_type = "t3a.medium"

  metadata_options {
    http_put_response_hop_limit = "2"
  }

  name = "eks-34c4f167-b839-1ca9-980b-762bbd8b62b9"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-06561b3f4f56c947b"]
  }

  tags = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  tags_all = {
    "eks:cluster-name"   = "test-eks-cluster"
    "eks:nodegroup-name" = "test-eks-nodegroup"
  }

  user_data = "TUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiBtdWx0aXBhcnQvbWl4ZWQ7IGJvdW5kYXJ5PSIvLyIKCi0tLy8KQ29udGVudC1UeXBlOiB0ZXh0L3gtc2hlbGxzY3JpcHQ7IGNoYXJzZXQ9InVzLWFzY2lpIgojIS9iaW4vYmFzaApzZXQgLWV4CkI2NF9DTFVTVEVSX0NBPUxTMHRMUzFDUlVkSlRpQkRSVkpVU1VaSlEwRlVSUzB0TFMwdENrMUpTVVJDVkVORFFXVXlaMEYzU1VKQlowbEpZbVZsZERKTWJEQkdUMVYzUkZGWlNrdHZXa2xvZG1OT1FWRkZURUpSUVhkR1ZFVlVUVUpGUjBFeFZVVUtRWGhOUzJFelZtbGFXRXAxV2xoU2JHTjZRV1ZHZHpCNVRYcEJORTFVUlhkT1JFVXdUWHBTWVVaM01IcE5la0UwVFVSbmQwNUVSVEJOZWxKaFRVSlZlQXBGZWtGU1FtZE9Wa0pCVFZSRGJYUXhXVzFXZVdKdFZqQmFXRTEzWjJkRmFVMUJNRWREVTNGSFUwbGlNMFJSUlVKQlVWVkJRVFJKUWtSM1FYZG5aMFZMQ2tGdlNVSkJVVU55VjBwTFZtZHphREJyVEU5cFVsaE9kME5VVEdORlIxZFdUMjVYYmpsVVNHUjVORTlRT1VoMlNrSXdSRzVRYm5SRlNtVnZPVUpRYm04S2MwSlJWRWxqY2tkdlkzWldLME1yU1hoaU1tbFlXa1ZMY2tOM1dYRTJZWGxOT0ZOUFdsSnJkVWRoZG1KME9GTktlalZKZDIxRlpVa3hjSFp2TkUxak5ncGhOSFpvVjNKRVJXNVNLMnhoYmtZeWJIcFpiMlJDZG1JelRXSndhak5WUzBwVWIwVlhhM2c1ZFVsMkwwdFlUMVZrZEZZeVNWVjRZVEJ0UjFwelFUWkJDbXBKVldsME1HUklNREpLU0cxcmQwRk5PRVpOZFRSRU5WTk5ZWEp0VG1GcFp5dHlheTlKUzBRMVRsaFJZaXRwT0hsb05FZFdhbUZKYlUxVFVVUlZZMFlLZEU1ak5FdG9WQ3RFU0ZOVU1YTXJkM0ZpUTFkelVGTjZNV1p6Y1V4T1N6WndTRFJYWWpkQll6WnNTRTg1WjNWd2NXVlNia0pDVEZZeGVVRnpNRlJaYkFwSVZESTVVV1Z5UzJFNEszQldMMXA2TDAxR1Z6RmpaRFJtYUZZdlFXZE5Ra0ZCUjJwWFZFSllUVUUwUjBFeFZXUkVkMFZDTDNkUlJVRjNTVU53UkVGUUNrSm5UbFpJVWsxQ1FXWTRSVUpVUVVSQlVVZ3ZUVUl3UjBFeFZXUkVaMUZYUWtKUksyODJWbVp1Tm1WdU9XdHVPRnBUYTJOMFdEazBTMlYyU0dORVFWWUtRbWRPVmtoU1JVVkVha0ZOWjJkd2NtUlhTbXhqYlRWc1pFZFdlazFCTUVkRFUzRkhVMGxpTTBSUlJVSkRkMVZCUVRSSlFrRlJRVmRxUmpkV1RsWTVNd3BJTTJaM2RqaDZWalZ2UVdoeE1tOHplWFJFSzFSeFowcDBNM2R2ZGtkYWRVMWtRMnBxTmpGcGJrOHdaV05VVWtVMlpEbEZZMVpKVWpndk9Xb3ZVRTlLQ25aMU1HYzVUSEJCZGxWTE56VllRa3BHVkM4dmNtcFFMM3BQWVUxdFExSlhhRWhvTkVZclIzbDJNRGxrYW1OcGFVTjZTV0ppYmt4d1NDOVBhWFl3VWpFS1dXUmpjMDVWWjBObVRFdExkWEJsVTNObFNsUmtVVUZCTTFVM2NsZHNUbTVPWmxGNVV5OWFWVk15VjIweFZtaFlPRXhVU1M5U2VIQnJLM0owT1dRdldBcE5TRmhPV0d4RVdYUnRNMVZNTUM5WVNVb3lRa1JTYW5kaFRXcFNlVzA0VjJ4VmEySXpVVGhZZHpGTk0xRTBUSHB6T1dsU2MyaFFNR2RyZEdKMlpsQkJDbWRCYzBVeVdTOHdTM0VyV2pWdFozUkZiMW96UWpKdFp5dGpMM3BhUXpaT2JpdHdjWEpFVURkRFoySkpNRWRxY0U5cFpYVk5Oa1o0WTBkUFIweGFZVXNLYTBSbVpYTmxRbEp1WTJwckNpMHRMUzB0UlU1RUlFTkZVbFJKUmtsRFFWUkZMUzB0TFMwSwpBUElfU0VSVkVSX1VSTD1odHRwczovLzNBNzc5QjNBMTE0NkI4QTkyMTQ2ODAxNTlGRkVCRjk2LnlsNC5hcC1ub3J0aGVhc3QtMi5la3MuYW1hem9uYXdzLmNvbQpLOFNfQ0xVU1RFUl9ETlNfSVA9MTAuMTAwLjAuMTAKL2V0Yy9la3MvYm9vdHN0cmFwLnNoIHRlc3QtZWtzLWNsdXN0ZXIgLS1rdWJlbGV0LWV4dHJhLWFyZ3MgJy0tbm9kZS1sYWJlbHM9ZWtzLmFtYXpvbmF3cy5jb20vbm9kZWdyb3VwLWltYWdlPWFtaS0wYzI2MGJiNjMxN2UxOTlkMyxla3MuYW1hem9uYXdzLmNvbS9jYXBhY2l0eVR5cGU9T05fREVNQU5ELGVrcy5hbWF6b25hd3MuY29tL25vZGVncm91cD10ZXN0LWVrcy1ub2RlZ3JvdXAscm9sZT1la3Mtbm9kZWdyb3VwIC0tbWF4LXBvZHM9MTcnIC0tYjY0LWNsdXN0ZXItY2EgJEI2NF9DTFVTVEVSX0NBIC0tYXBpc2VydmVyLWVuZHBvaW50ICRBUElfU0VSVkVSX1VSTCAtLWRucy1jbHVzdGVyLWlwICRLOFNfQ0xVU1RFUl9ETlNfSVAgLS11c2UtbWF4LXBvZHMgZmFsc2UKCi0tLy8tLQ=="
}
