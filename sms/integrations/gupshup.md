---
description: Guide on how to add Gupshup SMS Integration
---

# Gupshup SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Gupshup yet, you will have to create an enterprise account by contacting their support [here](https://enterprise.smsgupshup.com). Once you have registered yourself on DLT and created an Gupshup account, you can then add Gupshup Integration in Raven.

{% hint style="info" %}
[📘](https://emojipedia.org/blue-book/)  **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. Gupshup Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys              | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **User ID**       | Account number provided by Enterprise SMS Gupshup. The number must be in pure numeric format with no special characters.                                                                                                                                                                                                                                                                                                                                  |
| **Password**      | Password provided by Gupshup for authentication of user id .The password must be the same as used to log on to the Enterprise SMS Gupshup website.                                                                                                                                                                                                                                                                                                        |
| **Sender**        | <p>Sender id to be sent with the SMS. It has to be preconfigured 6 characters alphabetical sender id for the enterprise account.</p><p>The Sender ID should be linked with the SMS template as registered on DLT portal.</p>                                                                                                                                                                                                                              |
| **Route**         | <p>Applicable only for SMSes sent by Indian businesses to Indian destination numbers. Use the route type specified when registering your templates.</p><p>Possible values -</p><ul><li>Transactional</li><li>OTP</li><li>Promotional</li></ul>                                                                                                                                                                                                            |
| **DLT Entity ID** | Applicable only for SMS sent by Indian businesses to Indian destination numbers. Your Entity Id as registered on DLT (Distributed Ledger Technology) portal of operators in India. This is mandatory to be passed in API or configured on Dashboard for SMSes towards Indian destination ([Learn More about DLT](https://support.exotel.com/support/solutions/articles/3000096504-trai-regulations-on-commercial-communications-dlt-portal-sms-in-india)) |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the Gupshup Integration, you will see it in the "Live" tab. Go to the Live tab, and click on Gupshup SMS. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in on [https://enterprise.smsgupshup.com](https://enterprise.smsgupshup.com)&#x20;
3. Click on Settings in the menu bar. Under Advanced Account Settings you can see Realtime Delivery URL.
4. Paste the Status Webhook URL copied in Step 1.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to Gupshup

Raven sends the fields present in the SMS template to Gupshup by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here.&#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [Gupshup Website](https://www.gupshup.io/developer/home)​
* [Gupshup SMS Documentation](https://enterprise.smsgupshup.com/help/in/EnterpriseAPIDocument.pdf)​
* [Gupshup Console](https://www.gupshup.io/developer/messaging-api)

{% hint style="info" %}
[✋](https://emojipedia.org/raised-hand/) **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}

