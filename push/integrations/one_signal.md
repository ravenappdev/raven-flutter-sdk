---
description: Guide on how to add OneSignal Push Integration
---

# OneSignal Push

### Step 1. Setup

1. If you do not have an account with OneSignal yet, you can quickly get onboarded by following their [guide](https://documentation.onesignal.com/docs/onboarding-with-onesignal).
2. Once your account is setup, you need to integrate OneSignal on your client side. Please follow the guide if you haven't setup the OneSignal SDK yet.
   * [Mobile](https://documentation.onesignal.com/docs/mobile-sdk-setup) (Android, iOS, React Native, Flutter etc).
   * [Web](https://documentation.onesignal.com/docs/web-push-quickstart)



### Step 2. OneSignal Integration in Raven

| Keys                 | Details                                                                                                                                       |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| **OneSignal App ID** | Public Key used for initialisation and app identification.. More details [here](https://documentation.onesignal.com/docs/accounts-and-keys).  |
| **API Key**          | Private key used for most API calls. More details [here](https://documentation.onesignal.com/docs/accounts-and-keys).                         |



### Step 3. Managing User IDs

OneSignal automatically creates an identifier per device which is a unique OneSignal User ID aka _player\_id_. The _external\_user\_id_ is an identifier you set, which helps map your unique database User ID's to the OneSignal player\_id device record. This could be any unique identifier even an email or mobile. More details on OneSignal user subscription [here](https://documentation.onesignal.com/docs/users).



### Step 4. Sending Notifications

Raven currently supports sending OneSignal push notifications only via the [external\_user\_id](https://documentation.onesignal.com/docs/external-user-ids). This means you will have to set this via the OneSignal SDK or their API. You can then send the external\_user\_id as _onesignal\_external\_id_ in the user object of Send Event API when triggering a notification. Please check our [Send Event API docs](../../api-reference/send-event.md) for more details.

Here's how you should pass onesignal external id in user object in [Send Event API](../../api-reference/send-event.md)

```
{
   "user" : {
      "onesignal_external_id" : "<your_onesignal_external_id>"   
   }
}
```



### Step 5. Notification Rendering

Notification rendering is handled by the OneSignal SDK or by you. If you choose to render the notifications yourself, you can check OneSignal's event handler doc ([mobile](https://documentation.onesignal.com/docs/sdk-notification-event-handlers) & [web](https://documentation.onesignal.com/docs/web-push-sdk#receiving-notifications)) for more details.



### Step 6. Delivery Reports

Delivery reports need to be setup using the Raven Client SDK. You can integrate the Raven Client SDK and use the `updateStatus` method to send the notification status to Raven server. Please refer to our Client SDK section for more details.



### Advanced

#### Send additional parameters to OneSignal

Raven will send the fields present in the Push template to OneSignal by default. Check our Push Template section to see which fields are sent to OneSignal. Also, you can send other additional parameters directly to OneSignal in the Send Event API as shown below.

```
"override" : {
    "providers" : {
       "<ONESIGNAL_INTEGRATION_NAME>": {   //integration name
           payload: {
               "<key>": "<value>" //key-values to be passed
               ...
           }  
       }
    }
 }
```

Check our [Send Event API doc](../../api-reference/send-event.md) for the complete request.



### Links

* [OneSignal Website](https://onesignal.com)​
* [OneSignal Documentation](https://documentation.onesignal.com/docs/sending-notifications)
* [OneSignal Console](https://app.onesignal.com)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
