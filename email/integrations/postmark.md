---
description: Guide on how to add Postmark Email Integration
---

# Postmark

### Step 1. Account Setup

* If you do not have an account with Postmark yet, create an account [here](https://account.postmarkapp.com/sign\_up).
* Next, you will need to verify the email address you send from, in the [Signatures section](https://account.postmarkapp.com/signatures). You can also try Postmark's sandbox mode initially. Their free plan offers 100 free emails/day. More details on the Sandbox [here](https://postmarkapp.com/developer/user-guide/sandbox-mode).



### Step 2. Postmark Integration in Raven

| Keys                 | Details                                                                                                                                                                     |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **From Address**     | Your verified "From" email address                                                                                                                                          |
| **From Name**        | "From Name" of your emails. You can also pass this in the Send Event API. Check the Advanced section below.                                                                 |
| **Server API Token** | Your Server API Token. To get your API token, check [here](https://postmarkapp.com/support/article/1008-what-are-the-account-and-server-api-tokens).                        |
| **Message Stream**   | Transactional or Broadcast (Bulk). See which message stream to use [here](https://postmarkapp.com/support/article/1082-what-types-of-messages-are-a-good-fit-for-postmark). |
| **Reply to Address** | Reply email address. You can also pass this in the Send Event API. Check the Advanced section below.                                                                        |

{% hint style="info" %}
🪧**Info:**\
We currently only support sending emails via the Postmark REST API and not the SMTP interface.
{% endhint %}



### Step 3. Delivery Reports

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Postmark Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Postmark Email. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Login to Postmark and go to Webhook tab. Follow the steps mentioned [here](https://postmarkapp.com/developer/webhooks/delivery-webhook#set-the-webhook-url).
3. Paste the Status Webhook URL copied in Step 1.

## 💫 Advanced

#### Send additional parameters to Postmark

Raven will send the fields present in the Email template to Postmark by default. Additionally, you can send "cc", "bcc", "From Name", "Reply-to" fields in the Send Event API. This will override the fields added in the Integration. Please check our Override doc here.&#x20;

#### IP Whitelisting

You can control access to Postmark by specifying Raven's IP address, or make sure Raven's IP addresses are not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## 🔗 Links

* [Postmark Website](https://postmarkapp.com)​
* [Postmark Documentation](https://postmarkapp.com/developer)​
* [Postmark Console](https://account.postmarkapp.com)

{% hint style="info" %}
✋**Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
