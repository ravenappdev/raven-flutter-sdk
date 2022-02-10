---
description: Guide on how to add AWS SES Email Integration
---

# AWS SES

### Step 1. Account Setup

* To access Amazon SES, you need to [Sign up for AWS](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/sign-up-for-aws.html) first.
* Before you send email through Amazon SES, you need to verify that you own the "From" address.&#x20;
*   Initially your SES account will be in Sandbox, and you will be allowed to send emails to only verified emails. You can verify all your "To" addresses or domains. For more information, see [Verifying identities in Amazon SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

    In the AWS SES sandbox, you can only send emails to addresses/domains you have verified. Also, it has a quota of 200 emails per 24-hour period at a maximum rate of one email per second. To increase your sending quotas and to send email to unverified email addresses, see: [Moving out of the Amazon SES sandbox](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html).&#x20;

{% hint style="info" %}
📘**Note:** \
Make sure to enable production access ([move out of the SES sandbox](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/request-production-access.html)) before you go live.
{% endhint %}

###

### Step 2. AWS SES Integration in Raven

| Keys                   | Details                                                                                                                                                                             |
| ---------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **From Address**       | Your verified "From" email address                                                                                                                                                  |
| **From Name**          | "From Name" of your emails. You can also pass this in the Send Event API. Check the Advanced section below.                                                                         |
| **Access Key ID**      | Your AWS Access Key ID. To get your access credentials, check [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys).     |
| **Secret Access Key**  | Your AWS Secret Access Key. To get your access credentials, check [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys). |
| **Region**             | Your AWS Region. Default is "_ap-south-1_".                                                                                                                                         |
| **Reply to Address**   | Reply email address. You can also pass this in the Send Event API. Check the Advanced section below.                                                                                |

{% hint style="info" %}
🪧**Info:**\
We currently only support sending emails via the SES REST API and not the SMTP interface.
{% endhint %}

{% hint style="danger" %}
For security best practice, use AWS IAM user access keys instead of AWS account access keys. Your AWS account credentials grant full access to all your AWS resources, so you should instead use IAM user credentials. For more information, see [Root Account Credentials vs. IAM User Credentials](https://docs.aws.amazon.com/general/latest/gr/root-vs-iam.html).
{% endhint %}

###

### Step 3. Delivery Reports

Setting up Delivery Reports for Emails sent via SES is a bit tricky and requires you to setup AWS SNS. We will soon be updating the steps to setup delivery reports. For more information you can refer the [AWS guide to configure SNS for SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/configure-sns-notifications.html).

## 💫 Advanced

#### Send additional parameters to AWS SES

Raven will send the fields present in the Email template to SES by default. Additionally, you can send "cc", "bcc", "From Name", "Reply-to" fields in the Send Event API. This will override the fields added in the Integration. Please check our Override doc here.&#x20;

#### IP Whitelisting

You can control access to SES by specifying Raven's IP address, or make sure Raven's IP addresses are not blocked. Please follow the AWS guide [here](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/control-user-access.html).

> #### IPs: 65.2.109.100, 65.2.58.233

## 🔗 Links

* [AWS SES Website](https://aws.amazon.com/ses/)​
* [AWS SES Documentation](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-ses-api-requests.html)​
* [AWS SES Console](https://console.aws.amazon.com/ses/)

{% hint style="info" %}
✋**Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}

