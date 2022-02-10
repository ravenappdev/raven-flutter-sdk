---
description: Guide on how to add Exotel SMS Integration
---

# Exotel SMS

### Step 1. **Account Setup**

If you do not have an account with Exotel yet, follow the steps [here](https://support.exotel.com/support/solutions/articles/105436-what-is-the-registration-process-). Once you have registered yourself on DLT and created an Exotel account, you can then add Exotel Integration in Raven.

{% hint style="info" %}
📘 **Note:** \
If you are sending SMSs in India, TRAI has mandated to register their business, headers (sender IDs), and templates on any of the DLT platforms. Follow the guide [here](https://www.textlocal.in/tcccpr-trai-dlt-registration/) to get the setup done.
{% endhint %}



### Step 2. Exotel Integration in Raven

| Keys              | Details                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **API Key**       | API Key (username). Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| **API Token**     | API Token (password). Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| **Sender**        | <p>On the Exotel dashboard, navigate to Account > Settings > SMS Sender IDs. Specify one of your ExoPhone or Sender ID (header) linked to it.</p><ul><li>ExoPhone: From = '080XXXXXX'</li><li>Transactional Sender ID: From = 'EXOTEL' (If linked to your ExoPhone)</li><li>Promotional Numeric Sender ID: From = '600XXX' (If linked to your ExoPhone)</li></ul><p>To view or configure your Sender IDs, refer <a href="https://support.exotel.com/support/solutions/articles/126794-how-to-choose-an-sms-sender-id-">here</a>. The Sender ID should be linked with the SMS template as registered on DLT portal.</p> |
| **Account SID**   | Account SID. Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| **Region**        | Default is Singapore. If the Exotel Account URL is my.in.exotel.com then select India. More details [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                                                                                                                                                                                                                                                                                                                                              |
| **Route**         | <p>Applicable only for SMSes sent by Indian businesses to Indian destination numbers. Use the route type specified when registering your templates.</p><p>Possible values -</p><ul><li>Transactional</li><li>OTP</li><li>Promotional</li></ul>                                                                                                                                                                                                                                                                                                                                                                         |
| **DLT Entity ID** | <p>Applicable only for SMS sent by Indian businesses to Indian destination numbers.<br><br>Your Entity Id as registered on DLT (Distributed Ledger Technology) portal of operators in India. This is mandatory to be passed in API or configured on Dashboard for SMSes towards Indian destination  (<a href="https://support.exotel.com/support/solutions/articles/3000096504-trai-regulations-on-commercial-communications-dlt-portal-sms-in-india">Learn More about DLT</a>)</p>                                                                                                                                    |



### Step 3. Delivery Reports

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Exotel.

## 💫 Advanced

#### Send additional parameters to Exotel

Raven sends the fields present in the SMS template to Exotel by default. To send additional fields, please check our [Override doc](../template.md#additional-fields) here.&#x20;

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please follow the guide [here](https://exotel.com/blog/access-control-for-exotel-apis/).

> #### IPs: 65.2.109.100, 65.2.58.233

## 🔗 Links

* [Exotel Website](https://exotel.com)
* [Exotel SMS Documentation](https://developer.exotel.com/api/sms)
* [Exotel Console](https://my.exotel.com)&#x20;

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
