---
description: Guide on how to add Kaleyra WhatsApp Integration
---

# Kaleyra WhatsApp

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Kaleyra yet, create an account [here](https://developers.kaleyra.io/docs/create-an-account-in-kcloud). Follow their WhatsApp onboarding doc [here](https://developers.kaleyra.io/docs/getting-started-with-whatsapp-messaging) to get the setup done. Their onboarding setup will help you create a Facebook Business Manager account and enable WhatsApp on Kaleyra.&#x20;



### Step 2. Kaleyra Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys                                | Details                                                                                                                |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **From (WhatsApp Business Number)** | Phone number with country code or name. The Sender should be approved from WhatsApp.                                   |
| **API Key**                         | API key for your account. Follow the steps [here](https://developers.kaleyra.io/docs/create-api-key) to create one.    |
| **SID**                             | Account SID (Security Identifier). Generated along with the API key. To check go to Developers > Select API Key > Edit |
| **Namespace**                       | The namespace within which the Message Template is defined (WhatsApp portal)                                           |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Kaleyra Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Kaleyra WhatsApp. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in to Kaleyra console. Go to Settings > Enable WhatsApp Callback URLs to whitelist this callback url. Paste the Status Webhook URL copied in Step 1. Check [here](https://developers.kaleyra.io/docs/whatsapp-callback-url) for more details.

{% hint style="info" %}
Raven supports sending both Session messaging (User initiated) and Template messaging (Business initiated). Support for handling incoming messages for session messaging is coming soon.
{% endhint %}



### Advanced&#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please check point 4 in the guide [here](https://developers.kaleyra.io/docs/generating-an-api-key).

> #### IPs: 65.2.109.100, 65.2.58.233



### Links <a href="#links" id="links"></a>

* [Kaleyra Website](https://www.kaleyra.com/whatsapp/)​
* [Kaleyra WhatsApp Documentation](https://developers.kaleyra.io/docs/getting-started-with-whatsapp-messaging)​
* [Kaleyra Console](https://in.kaleyra.io/dashboard)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
