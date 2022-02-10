---
description: Guide on how to add Gupshup WhatsApp Integration
---

# Gupshup WhatsApp

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

1. If you do not have an account with Gupshup yet, you can create an account directly by signing up [here](https://www.gupshup.io/developer/whatsapp-api) or contact their support if you require an [enterprise account](https://enterprise.smsgupshup.com/whatsapp).
2. If you choose an enterprise account, their support team will help you with the whole setup process. If you are using Gupshup's self-serve portal, you can integrate Gupshup before going live. Check their [FAQs](https://www.gupshup.io/developer/faq/whatsapp) for more details. \
   Below are the steps if you need to do once you decide to go live -
   * You would need a verified Facebook Business Manager account. To create a FB Business Manager account, refer to the [Facebook's guide on creating a business manager account](https://www.facebook.com/business/help/1710077379203657?id=180505742745347) and then [verify your account.](https://www.facebook.com/business/help/2058515294227817?id=180505742745347)
   * You will need a [unique phone number](https://developers.facebook.com/docs/whatsapp/guides/phone-number/) and a [display name](https://developers.facebook.com/docs/whatsapp/guides/display-name/) to be registered with WhatsApp.
   * Fill your Business details in Gupshup. They will then create a WA business account with Facebook, which may take upto 7 days.
   * Next, you need to approve Gupshup to send messages from your WhatsApp business account on behalf of your business. Check [how to approve this request](https://www.facebook.com/business/help/524220081677109?id=2129163877102343).



### Step 2. Gupshup Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys         | Details                                                                                             |
| ------------ | --------------------------------------------------------------------------------------------------- |
| **API Key**  | For self-serve Gupshup WA account. API Key for your account.                                        |
| **App**      | For self-serve Gupshup WA account. App ID of the WhatsApp app created on the Gupshup dashboard.     |
| **Sender**   | Phone number with country code or name. The Sender should be approved from WhatsApp.                |
| **User ID**  | For enterprise Gupshup WA account only. Account number (user id) provided by Gupshup.               |
| **Password** | For enterprise Gupshup WA account only. Password provided by Gupshup for authentication of user id. |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Gupshup Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Gupshup WhatsApp. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in to Gupshup console. Go to App Settings to set the callback url. Paste the Status Webhook URL copied in Step 1. Check [here](https://support.gupshup.io/hc/en-us/articles/360011977800-Will-I-receive-message-status-notification-like-message-read-sent-delivered-etc) for more details.

{% hint style="info" %}
Raven supports sending both Session messaging (User initiated) and Template messaging (Business initiated). Support for handling incoming messages for session messaging is coming soon.
{% endhint %}



### Step 4. Opt-ins

Raven handles the opt-ins with Gupshup internally. You can manage user preferences on your side. &#x20;

### Advanced

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233



### Links <a href="#links" id="links"></a>

* [Gupshup Website](https://www.gupshup.io/developer/home)​
* [Gupshup WhatsApp Documentation](https://www.gupshup.io/developer/docs/bot-platform/guide/whatsapp-api-documentation)​
* [Gupshup Console](https://www.gupshup.io/whatsapp/dashboard)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
