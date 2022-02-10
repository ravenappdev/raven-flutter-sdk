---
description: Guide on how to add Kaleyra SMS Integration
---

# Kaleyra SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Kaleyra yet, create an account [here](https://developers.kaleyra.io/docs/create-an-account-in-kcloud). Kaleyra requires you to complete its KYC and other details to get sender id and register templates. Follow the onboarding doc [here](https://developers.kaleyra.io/docs/onboarding\_kcloud) to get the setup done.

{% hint style="info" %}
[📘](https://emojipedia.org/blue-book/)  **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. Kaleyra Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys              | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Sender**        | Sender id to be sent with the SMS. Follow the steps [here](https://developers.kaleyra.io/docs/sender-id) to get your Sender ID                                                                                                                                                                                                                                                                                                                            |
| **API Key**       | API key for your account. Follow the steps [here](https://developers.kaleyra.io/docs/create-api-key) to create one.                                                                                                                                                                                                                                                                                                                                       |
| **SID**           | Account SID (Security Identifier). Generated along with the API key. To check go to Developers > Select API Key > Edit                                                                                                                                                                                                                                                                                                                                    |
| **Route**         | <p>Applicable only for SMSes sent by Indian businesses to Indian destination numbers. Use the route type specified when registering your templates.</p><p>Possible values -</p><ul><li>Transactional</li><li>OTP</li><li>Promotional</li></ul>                                                                                                                                                                                                            |
| **DLT Entity ID** | Applicable only for SMS sent by Indian businesses to Indian destination numbers. Your Entity Id as registered on DLT (Distributed Ledger Technology) portal of operators in India. This is mandatory to be passed in API or configured on Dashboard for SMSes towards Indian destination ([Learn More about DLT](https://support.exotel.com/support/solutions/articles/3000096504-trai-regulations-on-commercial-communications-dlt-portal-sms-in-india)) |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Kaleyra.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to Kaleyra

Raven sends the fields present in the SMS template to Kaleyra by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please check point 4 in the guide [here](https://developers.kaleyra.io/docs/generating-an-api-key).

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [Kaleyra Website](https://kaleyra.io)​
* [Kaleyra SMS Documentation](https://developers.kaleyra.io/docs/send-your-first-sms)​
* [Kaleyra Console](https://in.kaleyra.io/dashboard)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}

