---
description: Guide on how to add Smooch WhatsApp Integration
---

# Smooch WhatsApp

### Step 1. **Account Setup**

If you do not have an account with Smooch yet, you can create an account [here](https://smooch.io/signup/) or contact their support team. Follow their WhatsApp onboarding doc [here](https://docs.smooch.io/guide/whatsapp/#accounts) to get the setup done. Their onboarding setup will help you create a Facebook Business Manager account and enable WhatsApp on Smooch.&#x20;



### Step 2. Smooch Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys              | Details                                                                                                                             |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| **AppID**         | App identifier. Check [here](https://docs.smooch.io/faq/dashboard/#where-do-i-find-my-app-id--api-keys) on how to locate your AppId |
| **IntegrationID** | Your WhatsApp Integration identifier on Smooch                                                                                      |
| **KeyID**         | The API key for the custom WhatsApp integration                                                                                     |
| **Secret**        | The Secret for the custom WhatsApp integration                                                                                      |
| **Namespace**     | The namespace within which the Message Template is defined (WhatsApp portal)                                                        |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Kaleyra Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Kaleyra WhatsApp. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in to Smooch dashboard. Go to the webhooks section and paste the Status Webhook URL copied in Step 1.

{% hint style="info" %}
Raven supports sending both Session messaging (User initiated) and Template messaging (Business initiated). Support for handling incoming messages for session messaging is coming soon.
{% endhint %}



### Links <a href="#links" id="links"></a>

* [Smooch Website](https://smooch.io)​
* [Smooch WhatsApp Documentation](https://docs.smooch.io/guide/whatsapp/)​
* [Smooch Console](https://app.smooch.io)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
