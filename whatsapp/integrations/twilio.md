---
description: Guide on how to add Twilio WhatsApp Integration
---

# Twilio WhatsApp

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Twilio yet, create an account [here](https://www.twilio.com/docs/usage/tutorials/how-to-use-your-free-trial-account). Twilio also provides a [WhatsApp sandbox](https://www.twilio.com/docs/whatsapp/sandbox) which you can use to test. To setup your WhatsApp account you can refer to Twilio's set of guides [here](https://www.twilio.com/docs/whatsapp/tutorial/connect-number-business-profile).&#x20;



### Step 2. Twilio Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys            | Details                                                                                                                  |
| --------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **Account SID** | Twilio Account SID. You can find it [here](https://www.twilio.com/console).                                              |
| **Auth Key**    | Twilio Account Token. You can find it [here](https://www.twilio.com/console).                                            |
| **From**        | This must be a Twilio phone number that you own. Create one [here](https://www.twilio.com/console/phone-numbers/search). |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Twilio.

{% hint style="info" %}
Raven supports sending both Session messaging (User initiated) and Template messaging (Business initiated). Support for handling incoming messages for session messaging is coming soon.
{% endhint %}



### Advanced

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

### &#x20;<a href="#links" id="links"></a>

### Links <a href="#links" id="links"></a>

* [Twilio Website](https://twilio.com)​
* [Twilio WhatsApp Documentation](https://www.twilio.com/docs/whatsapp/api)​
* [Twilio Console](https://www.twilio.com/console)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
