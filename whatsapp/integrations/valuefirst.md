---
description: Guide on how to add ValueFirst WhatsApp Integration
---

# ValueFirst WhatsApp

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with ValueFirst yet, you will have to create an enterprise account by contacting their support [here](https://www.vfirst.com/say-ahoy). If you choose an enterprise account, their support team will help you with the whole setup process. In brief, below are the steps that would be required -

* You would need a verified Facebook Business Manager account. To create a FB Business Manager account, refer to the [Facebook's guide on creating a business manager account](https://www.facebook.com/business/help/1710077379203657?id=180505742745347) and then [verify your account.](https://www.facebook.com/business/help/2058515294227817?id=180505742745347)
* You will need a [unique phone number](https://developers.facebook.com/docs/whatsapp/guides/phone-number/) and a [display name](https://developers.facebook.com/docs/whatsapp/guides/display-name/) to be registered with WhatsApp.
* Send your business details to ValueFirst. They will then create a WA business account with Facebook, which may take upto 7 days.
* Next, you need to approve ValueFirst to send messages from your WhatsApp business account on behalf of your business. Check [how to approve this request](https://www.facebook.com/business/help/524220081677109?id=2129163877102343).



### Step 2. ValueFirst Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys         | Details                                                                                                                                                   |
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Username** | Account number provided by Enterprise SMS ValueFirst.                                                                                                     |
| **Password** | Password provided by ValueFirst for authentication of username .The password must be the same as used to log on to the Enterprise SMS ValueFirst website. |
| **From**     | Phone number with country code or name. The Sender should be approved from WhatsApp.                                                                      |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for ValueFirst.

{% hint style="info" %}
Raven supports sending both Session messaging (User initiated) and Template messaging (Business initiated). Support for handling incoming messages for session messaging is coming soon.
{% endhint %}



### Advanced

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please email their support to whitelist these APIs.

> #### IPs: 65.2.109.100, 65.2.58.233



### Links <a href="#links" id="links"></a>

* [ValueFirst Website](https://www.vfirst.com)​​
* [ValueFirst Console](https://www.gupshup.io/developer/messaging-api)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
