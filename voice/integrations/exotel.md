---
description: Guide on how to add Exotel Voice Integration
---

# Exotel Voice

### Step 1. **Account Setup**

If you do not have an account with Exotel yet, follow the steps [here](https://support.exotel.com/support/solutions/articles/105436-what-is-the-registration-process-). You would have to buy a new number (Exophone) to make the voice calls. Follow the steps [here](https://support.exotel.com/support/solutions/articles/3000010956-how-do-i-procure-a-new-exophone-), to get your number. Also, you can use the default number provided by Exotel for testing.



### Step 2. Exotel Integration in Raven

| Keys                  | Details                                                                                                                                                                                                                                   |
| --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **API Key**           | API Key (username). Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                       |
| **API Token**         | API Token (password). Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                     |
| **Exophone (Sender)** | Your Caller Number. On the Exotel dashboard, navigate to Admin > Exophones to get this.                                                                                                                                                   |
| **Account SID**       | Account SID. Find your API credentials [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-).                                                              |
| **Region**            | Default is Singapore. If the Exotel Account URL is my.in.exotel.com then select India. More details [here](https://support.exotel.com/support/solutions/articles/3000023019-how-to-find-my-api-key-api-token-account-sid-and-subdomain-). |



### Step 3. Delivery Reports

There is no additional configuration required to setup delivery reports. Raven manages the delivery callback internally for Exotel.



### Advanced

#### IP Whitelisting

You can control access by specifying Raven's IP address, or make sure Raven's IP addresses are whitelisted and not blocked. Please follow the guide [here](https://exotel.com/blog/access-control-for-exotel-apis/).

> #### IPs: 65.2.109.100, 65.2.58.233

###

### Links

* [Exotel Website](https://exotel.com)
* [Exotel Voice Documentation](https://developer.exotel.com/api/make-a-call-api)
* [Exotel Console](https://my.exotel.com)&#x20;

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}

