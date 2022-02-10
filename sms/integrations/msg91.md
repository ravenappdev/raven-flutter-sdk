---
description: Guide on how to add MSG91 SMS Integration
---

# MSG91 SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with MSG91 yet, create an account [here](https://msg91.com). You would need to get your MSG91 approved before starting to send SMS. Follow the doc [here](https://help.msg91.com/article/359-my-account-status-is-in-demo-what-can-i-do-to-make-my-account-live) to get the account approved.

{% hint style="info" %}
[📘](https://emojipedia.org/blue-book/)  **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. MSG91 Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys              | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Auth Key**      | Auth key for your account. You can find your Auth Key [here](https://help.msg91.com/article/379-where-can-i-find-my-authentication-key).                                                                                                                                                                                                                                                                                                                  |
| **Sender**        | Sender id to be sent with the SMS. Follow the steps [here](https://help.msg91.com/article/40-what-is-a-sender-id-how-to-select-a-sender-id) to get your Sender ID                                                                                                                                                                                                                                                                                         |
| **Route**         | <p>Applicable only for SMSes sent by Indian businesses to Indian destination numbers. Use the route type specified when registering your templates.</p><p>Possible values -</p><ul><li>Transactional</li><li>OTP</li><li>Promotional</li></ul>                                                                                                                                                                                                            |
| **DLT Entity ID** | Applicable only for SMS sent by Indian businesses to Indian destination numbers. Your Entity Id as registered on DLT (Distributed Ledger Technology) portal of operators in India. This is mandatory to be passed in API or configured on Dashboard for SMSes towards Indian destination ([Learn More about DLT](https://support.exotel.com/support/solutions/articles/3000096504-trai-regulations-on-commercial-communications-dlt-portal-sms-in-india)) |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

Follow the steps to setup delivery reports:

1. On the Raven dashboard, once you successfully add the MSG91 Integration, you will see it in the "Live" tab. Go to the Live tab, and click on MSG91 SMS. You will see a URL as **Status Webhook,** present in the integration. Copy this URL.
2. Log in on [https://control.msg91.com](https://control.msg91.com)[ ](https://control.msg91.com/user/)
3. Open Webhooks option given under SMS API.&#x20;
4. Paste the Status Webhook URL copied in Step 1, in the box given and click on Save.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to MSG91

Raven sends the fields present in the SMS template to MSG91 by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please check the guide [here](https://help.msg91.com/article/153-what-do-you-mean-by-api-security).

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [MSG91 Website](https://msg91.com)​
* [MSG91 SMS Documentation](https://api.msg91.com/apidoc/textsms/send-sms-v1.php)​
* [MSG91 Console](https://control.msg91.com)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
