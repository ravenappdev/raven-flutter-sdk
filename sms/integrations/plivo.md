---
description: Guide on how to add Plivo SMS Integration
---

# Plivo SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with Plivo yet, create an account [here](https://console.plivo.com/accounts/register/).



### Step 2. Plivo Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys         | Details                                                                                                                                                      |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Auth Key** | Plivo Auth Token. You can find it on the home screen of your [Plivo Console](https://console.plivo.com/dashboard/).                                          |
| **Auth ID**  | Plivo Auth ID. You can find it on the home screen of your [Plivo Console](https://console.plivo.com/dashboard/).                                             |
| **Sender**   | Sender ID to be sent with the SMS. Follow the steps [here](https://support.plivo.com/hc/en-us/articles/360048268191--FAQ-on-Sender-ID) to get your Sender ID |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Plivo.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to Plivo

Raven sends the fields present in the SMS template to Plivo by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [Plivo Website](https://plivo.com)​
* [Plivo SMS Documentation](https://www.plivo.com/docs/sms/api/message/)​
* [Plivo Console](https://console.plivo.com)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
