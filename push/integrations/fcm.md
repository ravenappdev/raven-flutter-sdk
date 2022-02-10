---
description: Guide on how to add Firebase Push Integration
---

# Firebase (FCM)

### Step 1. Setup

1.  Firebase has a great platform wise documentation on how to setup Firebase Cloud Messaging (FCM) for Android, iOS and Web. Please follow the steps if you have not setup FCM yet.

    * [Android setup](https://firebase.google.com/docs/cloud-messaging/android/client).
    * [iOS setup](https://firebase.google.com/docs/cloud-messaging/ios/client)
    * [Web setup](https://firebase.google.com/docs/cloud-messaging/js/client)

    You can also check these Github example projects for [Android](https://github.com/firebase/quickstart-android/blob/master/messaging/README.md), [iOS](https://github.com/firebase/quickstart-ios/tree/master/messaging/) and [Web](https://github.com/firebase/quickstart-js/blob/master/messaging/README.md).

###

### Step 2. Firebase Integration in Raven

| Keys           | Details                                                                                                                          |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| **Server Key** | Your project's server key. Go to Project Settings > Cloud Messaging. More details [here](https://stackoverflow.com/a/37427911).  |
| **Sender ID**  | Your project's Sender ID. Go to Project Settings > Cloud Messaging. More details [here](https://stackoverflow.com/a/37427911).   |



### Step 3. Managing Tokens

Firebase identifies each device by generating a unique registration token on the client side for each install. You can either manage the tokens on your backend, or let Raven manage the tokens for you.&#x20;

1. Manage yourself: You can follow the Firebase guide [here](https://firebase.google.com/docs/cloud-messaging/manage-tokens).
2. Managed by Raven: You can use the Raven Client SDK to send the tokens generated from the client to Raven server ( `setDeviceToken` method in the SDK).  Please refer to our Client SDK section for more details. Raven will take care of the active/stale tokens and will keep the tokens updated. &#x20;

{% hint style="info" %}
If you user FCM tokens are managed by Raven, you need to also set the user-id via the Client SDK. Raven will then manage the users and map the user-id with the FCM token. You should then send the user-id in the user object of Send Event API when triggering a notification. \
\
If you are managing tokens yourself, you would need to send the FCM token instead. Please check our [Send Event API docs](../../api-reference/send-event.md) for more details.
{% endhint %}



### Step 4. Sending Notifications

Here's how you can pass fcm tokens in user object in [Send Event API](../../api-reference/send-event.md)

```
{
   "user" : {
      "fcm_tokens" : ["fcm_token_1", "fcm_token_2",..]   
   }
}
```



### Step 5. Notification Rendering

Notification rendering should be handled by you on the client side using the Firebase SDK. Please refer to the platform wise Firebase guide on displaying notifications.

1. [Android](https://firebase.google.com/docs/cloud-messaging/android/receive)
2. [iOS](https://firebase.google.com/docs/cloud-messaging/ios/receive)
3. [Web](https://firebase.google.com/docs/cloud-messaging/js/receive)



### Step 6. Delivery Reports

Since Firebase does not send any delivery callbacks to server, delivery reports need to be setup using the Client SDK. You can integrate the Raven Client SDK and use the `updateStatus` method to send the notification status to Raven server. Please refer to our Client SDK section for more details.



### Advanced

#### Send additional parameters to Firebase

Raven will send the fields present in the Push template to Firebase by default. Check our Push Template section to see which fields are sent to Firebase. Also, you can send other additional parameters directly to Firebase in the Send Event API as shown below.

```
"override" : {
    "providers" : {
       "<FIREBASE_INTEGRATION_NAME>": {   //integration name
           payload: {
               "<key>": "<value>" //key-values to be passed
               ...
           }  
       }
    }
 }
```

Check our [Send Event API doc](../../api-reference/send-event.md) for the complete request.

###

### Links

* [Firebase (FCM) Website](https://firebase.google.com/docs/cloud-messaging)​
* Firebase (FCM) Documentation
  * ​[Android](https://firebase.google.com/docs/cloud-messaging/android/receive)
  * [iOS](https://firebase.google.com/docs/cloud-messaging/ios/receive)
  * [Web](https://firebase.google.com/docs/cloud-messaging/js/receive)
* [Firebase (FCM) Console](https://console.firebase.google.com)

{% hint style="info" %}
If you are facing issues with this integration or find something missing, please write to us at **support@ravenapp.dev**.
{% endhint %}
