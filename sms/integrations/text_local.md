---
description: Guide on how to add TextLocal SMS Integration
---

# TextLocal SMS

### Step 1. **Account Setup** <a href="#account-setup" id="account-setup"></a>

If you do not have an account with TextLocal yet, create one by signing up [here](https://www.textlocal.com/signup/). Once you have registered yourself on DLT and created an TextLocal account, you can then add TextLocal Integration in Raven.

{% hint style="info" %}
[📘](https://emojipedia.org/blue-book/)  **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. TextLocal Integration in Raven <a href="#integration-keys" id="integration-keys"></a>

| Keys        | Details                                                                                                                                                 |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **API Key** | Your API Key. You can create these in your Messenger Control Panel for each application [here](https://control.textlocal.in/settings/apikeys/).         |
| **Sender**  | <p>Sender name which is pre-approved by DLT and Textlocal..</p><p>The Sender ID should be linked with the SMS template as registered on DLT portal.</p> |
| **Region**  | Default is India                                                                                                                                        |



### Step 3. Delivery Reports <a href="#delivery-reports" id="delivery-reports"></a>

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for TextLocal.

## [💫](https://emojipedia.org/dizzy/) Advanced

#### Send additional parameters to TextLocal

Raven sends the fields present in the SMS template to TextLocal by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here. &#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked.

> #### IPs: 65.2.109.100, 65.2.58.233

## [🔗](https://emojipedia.org/link/) Links

* [TextLocal Website](https://www.textlocal.in)​
* [TextLocal SMS Documentation](https://api.textlocal.in/docs/sendsms)​
* [TextLocal Console](https://control.textlocal.in)

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
