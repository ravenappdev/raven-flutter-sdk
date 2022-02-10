---
description: Guide on how to add MessageBird SMS Integration
---

# MessageBird SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with MessageBird yet, create an account [here](https://dashboard.messagebird.com/en/sign-up).



### Step 2. MessageBird Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys        | Details                                                                                                                                                                 |
| ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **API Key** | API key for your account. You can collect your live API key from the [here](https://dashboard.messagebird.com/en/developers/access).                                    |
| **Sender**  | Sender ID to be sent with the SMS. Follow the steps [here](https://support.messagebird.com/hc/en-us/articles/115002628665-Choosing-an-originator) to get your Sender ID |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the MessageBird Integration, you will see it in the "Live" tab. Go to the Live tab, and click on MessageBird SMS. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in to MessageBird and go to [https://dashboard.messagebird.com/en/developers/settings](https://dashboard.messagebird.com/en/developers/settings)
3. Paste the Status Webhook URL copied in Step 1, in the Status reports URL and click on Save.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to MessageBird

Raven sends the fields present in the SMS template to MessageBird by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [MessageBird Website](https://www.messagebird.com/en/)​
* [MessageBird SMS Documentation](https://developers.messagebird.com/api/sms-messaging/#sms-api)​
* [MessageBird Console](https://dashboard.messagebird.com)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
