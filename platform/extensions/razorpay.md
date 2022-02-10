---
description: Razorpay Extension setup with Raven
---

# Razorpay

This guide will help you understand how you can use Raven to send Razorpay's payment related notifications with your own custom content, your own branding or your own providers.

For example, you can send Invoices to your customers, on SMS and Email with your own custom message and with your sender-id or email. You can also choose to send Invoices on WhatsApp. If you have your own SMS, WhatsApp or Email providers, you can easily use them too to send your notifications.

{% hint style="info" %}
💡 **Tip:**\
****We recommend going through the [Quick Setup in the Get Started tab](https://console.ravenapp.dev/app/get-started). It will help you understand how Raven works in <5 mins.
{% endhint %}

{% embed url="https://youtu.be/V8kAAum4i64" %}
Tutorial on how to setup Razorpay with Raven
{% endembed %}

## How will Raven send notifications from Razorpay?

Once you setup the Razorpay extension, Raven will start intercepting events from your Razorpay account. For example, whenever you create an invoice in Razorpay, Raven will receive that event and trigger the notification that you configured.

## **Razorpay Setup**

### **Step 1. Sign up**

If you have not created an account with Raven already, please signup [here](https://console.ravenapp.dev). After signup, you will land on the Quick Setup page, where you can see how Raven works. You can complete the Quick Setup first.

### Step 2. Add Extension

Next go to Settings tab in the left pane and search for Extensions at the bottom of the page. There you would see a Razorpay extension under All Extensions. Click on Add.

![Razorpay Extension](<../../.gitbook/assets/ezgif.com-gif-maker (3).gif>)

### Step 3. Setup

A setup dialog will open. Continue with the the Setup. Follow the steps as mentioned below:

#### 1. Account Details

Provide your Razorpay account name and logo. We will use these details to create notifications with your branding.

![Step 3.1 Provide your account details ](<../../.gitbook/assets/image (13).png>)

#### 2. Select Notifications

Select the notifications you wish to send. Currently we support the following: Invoice created, Payment Link Created, Payment Captured, Refund Processed & Subscription Halted. Whenever any of this action happens in your Razorpay account, Raven will receive this event and trigger the notification.

![Select the notifications Raven should send ](<../../.gitbook/assets/image (14).png>)

#### 3. Edit & Preview Notifications

Edit the notifications that you selected in the first step. You can&#x20;

* Edit which channels you want to send that notification on (like SMS, Email or WhatsApp).
* Add your own integrations or contact us if you need help in setting them up.&#x20;
* Edit the SMS and Email content of the notifications. We have an email designer where you can design your email notifications with your branding.&#x20;

{% hint style="info" %}
📘 **Note:** \
If you are on the default app that was created when you signed-up, you would also be seeing default Raven SMS and Email integrations selected for the SMS and Email channels. To edit the default Raven SMS/Email integrations, you can go to Integrations > Live Integrations and click on the Raven integration to edit its details like From Name in email etc.&#x20;
{% endhint %}

![Edit/Preview these notifications.](<../../.gitbook/assets/image (15).png>)

While editing the templates, you would see some content like this `{{short_url}}` . This is a dynamic parameter and will get replaced by its actual value based on the value sent by Razorpay. We currently support the following dynamic parameters -&#x20;

| Parameter                                                                  | Description                                       |
| -------------------------------------------------------------------------- | ------------------------------------------------- |
| `{{merchant_name}}`                                                        | Your account name                                 |
| `{{logo_url}}`                                                             | Your account logo                                 |
| <p>Invoice/Payment link Created:<br><code>{{amount}}</code></p>            | Invoice or Payment link Amount                    |
| <p>Invoice/Payment link Reference Id:<br><code>{{reference_id}}</code></p> | Reference Id of the payment                       |
| <p>Invoice/Payment link Created:<br><code>{{short_url}}</code></p>         | Payment Link                                      |
| <p>Invoice/Payment link Created:<br><code>{{currency}}</code></p>          | Amount Currency (like INR)                        |
| Invoice/Payment link Created: `{{customer.email}}`                         | Email of the customer to whom the Invoice is sent |
| <p>Payment Captured:<br> <code>{{customer.email}}</code></p>               | Email of the customer who made the payment        |
| <p>Refund Processed:</p><p><code>{{amount}}</code></p>                     | Refund Amount                                     |
| <p>Refund Processed:</p><p><code>{{payment.order_id}}</code></p>           | Order Id for which refund is being processed      |
| <p>Refund Processed:</p><p><code>{{refund.id}}</code></p>                  | Refund ID                                         |
| <p>Refund Processed:</p><p><code>{{refund.payment_id}}</code></p>          | Payment ID                                        |
| <p>Refund Processed:</p><p><code>{{customer.mobile}}</code></p>            | Mobile of the customer to whom the Refund is sent |
| `{{customer.email}}`                                                       | Email of the customer to whom the Refund is sent  |

#### 4. Authorize

As a last step, you need to provide Raven the access to your Razorpay account. Raven requires this access to capture events from your Razorpay account and send the notifications. You will be redirected to Razorpay where you need to authorize Raven. Once done the setup will be complete.

![Authorizing Raven to access your Razorpay account](<../../.gitbook/assets/ezgif.com-gif-maker (4).gif>)

{% hint style="success" %}
All done! You will see all the live notifications when you click the Razorpay extension in Settings tab. You can enable or disable a notification if you want to halt it temporarily.
{% endhint %}

## Stop/Remove Notifications

#### Stop Notifications

If you want to temporarily stop a notification, you can disable them by selecting three dots icon  and click on Disable. You can Enable them in the same way.

![Disable/Enable Notifications](<../../.gitbook/assets/image (16).png>)

#### Remove Extension

If you want to remove the Extension, you can remove all notifications and revoke authorization. Click on the Razorpay extension in Settings tab and click on Remove Extension.

![Remove Extension](<../../.gitbook/assets/image (17).png>)

{% hint style="danger" %}
Please note that this will remove all notifications being processed by Raven. You will still be able to see the Events you configured in the Events tab.
{% endhint %}

{% hint style="info" %}
✋ **Help:** \
If you are facing issues with this setup, please write to us at **support@ravenapp.dev**.
{% endhint %}
