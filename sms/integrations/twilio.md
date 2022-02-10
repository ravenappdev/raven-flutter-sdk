---
description: Guide on how to add Twilio SMS Integration
---

# Twilio SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Twilio yet, create an account [here](https://www.twilio.com/docs/usage/tutorials/how-to-use-your-free-trial-account). The setup will also guide you to get a phone number to send SMS.



### Step 2. Twilio Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys            | Details                                                                                                                  |
| --------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **Account SID** | Twilio Account SID. You can find it [here](https://www.twilio.com/console).                                              |
| **Auth Key**    | Twilio Account Token. You can find it [here](https://www.twilio.com/console).                                            |
| **From**        | This must be a Twilio phone number that you own. Create one [here](https://www.twilio.com/console/phone-numbers/search). |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Twilio.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to Twilio

Raven sends the fields present in the SMS template to Twilio by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [Twilio Website](https://twilio.com)​
* [Twilio SMS Documentation](https://www.twilio.com/docs/sms/send-messages)​
* [Twilio Console](https://www.twilio.com/console)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
