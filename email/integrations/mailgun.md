---
description: Guide on how to add Mailgun Email Integration
---

# Mailgun

### Step 1. Account Setup

* If you do not have an account with Mailgun yet, create an account [here](https://signup.mailgun.com/new/signup).
* Next you need to verify your domain. To create and verify a domain, please follow the Mailgun guide [here](https://documentation.mailgun.com/en/latest/user\_manual.html#verifying-your-domain). Your account will have a sandbox domain initially, with which you can test emails with upto 5 [authorized recipients](https://help.mailgun.com/hc/en-us/articles/217531258-Authorized-Recipients).

###

### Step 2. Mailgun Integration in Raven

| Keys                 | Details                                                                                                                                                                  |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **From Address**     | Your verified "From" email address                                                                                                                                       |
| **From Name**        | "From Name" of your emails. You can also pass this in the Send Event API. Check the Advanced section below.                                                              |
| **API Key**          | Your Mailgun Private API Key. To get your API key, check [here](https://help.mailgun.com/hc/en-us/articles/203380100-Where-Can-I-Find-My-API-Key-and-SMTP-Credentials-). |
| **Domain**           | Your verified email domain name. Check your domain name [here](https://app.mailgun.com/app/sending/domains).                                                             |
| **Reply to Address** | Reply email address. You can also pass this in the Send Event API. Check the Advanced section below.                                                                     |

{% hint style="info" %}
🪧**Info:**\
****We currently only support sending emails via the Mailgun REST API and not the SMTP interface.
{% endhint %}

###

### Step 3. Delivery Reports

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Mailgun Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Mailgun Email. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in to Mailgun and go to Sending > Webhooks.
3. Create a Webhook and Paste the Status Webhook URL copied in Step 1.

## 💫 Advanced

#### Send additional parameters to Mailgun

Raven will send the fields present in the Email template to Mailgun by default. Additionally, you can send "cc", "bcc", "From Name", "Reply-to" fields in the Send Event API. This will override the fields added in the Integration. Please check our Override doc here.&#x20;

#### IP Whitelisting

You can control access to Mailgun by specifying Raven's IP address, or make sure Raven's IP addresses are not blocked. Please follow the Mailgun guide [here](https://help.mailgun.com/hc/en-us/articles/360012244474-IP-Allowlist).

> #### IPs: 65.2.109.100, 65.2.58.233

## 🔗 Links

* [Mailgun Website](https://www.mailgun.com)​
* [Mailgun Documentation](https://documentation.mailgun.com/en/latest/index.html)​
* [Mailgun Console](https://app.mailgun.com/app/dashboard)

{% hint style="info" %}
✋**Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
