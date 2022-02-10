---
description: Guide on how to add ValueFirst SMS Integration
---

# ValueFirst SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with ValueFirst yet, you will have to create an enterprise account by contacting their support [here](https://www.vfirst.com/say-ahoy). Once you have registered yourself on DLT and created an ValueFirst account, you can then add ValueFirst Integration in Raven.

{% hint style="info" %}
[📘](https://emojipedia.org/blue-book/)  **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. ValueFirst Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys                  | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| --------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Username**          | Account number provided by Enterprise SMS ValueFirst.                                                                                                                                                                                                                                                                                                                                                                                                     |
| **Password**          | Password provided by ValueFirst for authentication of username .The password must be the same as used to log on to the Enterprise SMS ValueFirst website.                                                                                                                                                                                                                                                                                                 |
| **Sender ID**         | <p>Sender id to be sent with the SMS. It has to be preconfigured 6 characters alphabetical sender id for the enterprise account.</p><p>The Sender ID should be linked with the SMS template as registered on DLT portal.</p>                                                                                                                                                                                                                              |
| **API Type**          | Default is "_JSON"_.                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| **High Availability** | Check this if you would be using ValueFirst HA API                                                                                                                                                                                                                                                                                                                                                                                                        |
| **Route**             | <p>Applicable only for SMSes sent by Indian businesses to Indian destination numbers. Use the route type specified when registering your templates.</p><p>Possible values -</p><ul><li>Transactional</li><li>OTP</li><li>Promotional</li></ul>                                                                                                                                                                                                            |
| **DLT Entity ID**     | Applicable only for SMS sent by Indian businesses to Indian destination numbers. Your Entity Id as registered on DLT (Distributed Ledger Technology) portal of operators in India. This is mandatory to be passed in API or configured on Dashboard for SMSes towards Indian destination ([Learn More about DLT](https://support.exotel.com/support/solutions/articles/3000096504-trai-regulations-on-commercial-communications-dlt-portal-sms-in-india)) |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for ValueFirst.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to ValueFirst

Raven sends the fields present in the SMS template to ValueFirst by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please email their support to whitelist these APIs.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [ValueFirst Website](https://www.vfirst.com)​​
* [ValueFirst Console](https://www.gupshup.io/developer/messaging-api)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
