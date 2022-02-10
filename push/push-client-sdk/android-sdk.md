---
cover: >-
  https://images.unsplash.com/photo-1580860749755-f49eb5509d55?crop=entropy&cs=srgb&fm=jpg&ixid=MnwxOTcwMjR8MHwxfHNlYXJjaHw2fHxhbmRyb2lkfGVufDB8fHx8MTY0NDQ3NjAxNQ&ixlib=rb-1.2.1&q=85
coverY: 0
---

# Android SDK

The Raven Android SDK allows you to -&#x20;

1. Manage (Create/Update) your users and their preferences on Raven.
2. Manage Push tokens on Raven.

### Setup

This setup helps you to set user and manage tokens on Raven. It assumes you already have setup Firebase and are handling the rendering of notifications yourself. Also, you must setup a Firebase Integration on the console and create an event with a Push template as defined [here](../push-template.md). Once done, please follow the below steps



1.  Setup Firebase

    a. Create your Firebase project ([link](https://firebase.google.com/docs/cloud-messaging/android/client#create\_a\_firebase\_project))\
    b. Register your app with Firebase ([link](https://firebase.google.com/docs/cloud-messaging/android/client#register\_your\_app\_with\_firebase))\
    c. Add a Firebase configuration file ([link](https://firebase.google.com/docs/cloud-messaging/android/client#add\_a\_firebase\_configuration\_file))



1. Add the following in your project gradle

```
allprojects {
    repositories {
        google()
        jcenter()
        maven { url 'https://jitpack.io' }
    }
}
```

2\. Add the following library in your app gradle. Please check the latest version [here](https://jitpack.io/#ravenappdev/raven-fcm-util).

```
implementation 'com.github.ravenappdev:raven-android-sdk:1.0.6'
```

3\. Initialize the SDK in Application onCreate

```
RavenSdk.initialize(this, YOUR_APP_ID, YOUR_ACCOUNT_API_KEY)
```

4\. Set user on signup/login. You can use any of the following methods to set user. Note that this will create a user if it does not exists in Raven. If it exists, it will simply update the user if there is any change.

```
RavenSdk.setUserMobile(USER_ID, MOBILE)
RavenSdk.setUserEmail(USER_ID, EMAIL)
RavenSdk.setUser(USER_ID, MOBILE, EMAIL)
```

5\. Set the Firebase device token on Raven.&#x20;

```
RavenSdk.setDeviceToken(TOKEN)
```

6\. When you receive a message from Firebase in the `onMessageReceived` callback, please update Raven with DELIVERED status. If you have set up Notification click and dismiss receivers, please update Raven with CLICKED  and DISMISSED statuses respectively. This method takes the Raven `notificationId` as an argument. Raven generates a unique notification id and attaches it in the data payload.

```
val notificationId = remoteMessage.data["raven_notification_id"]

//When notification is delivered
RavenSdk.updateStatus(notificationId, Status.DELIVERED)

//When notification is clicked
RavenSdk.updateStatus(notificationId, Status.CLICKED)

//When notification is dismissed
RavenSdk.updateStatus(notificationId, Status.DISMISSED)
```

7\. When the user logs out of your app, we need to de-register the device token. Call `logout` to logout the user from Raven.

```
RavenSdk.logout()
```
