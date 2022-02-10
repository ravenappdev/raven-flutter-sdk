# Push Template

The Raven Android SDK allows you to -&#x20;

1. Manage (Create/Update) your users and their preferences on Raven.
2. Manage Push tokens on Raven.

### Setup

If you want the SDK to handle users, manage tokens and also render Push Notifications using Firebase, go for Setup #1. Otherwise, if you want the SDK to manage only the users or tokens, check Setup #2. In the 2nd setup, you will have to handle the rendering of notifications yourself.

#### Setup #1

This setup helps you quickly get started with Push Notifications using Firebase. It assumes you have already setup Raven console with a Firebase Integration and created an event with a Push template as defined [here](push-template.md). Then follow these steps -

1.  Setup Firebase

    a. Create your Firebase project ([link](https://firebase.google.com/docs/cloud-messaging/android/client#create\_a\_firebase\_project))\
    b. Register your app with Firebase ([link](https://firebase.google.com/docs/cloud-messaging/android/client#register\_your\_app\_with\_firebase))\
    c. Add a Firebase configuration file ([link](https://firebase.google.com/docs/cloud-messaging/android/client#add\_a\_firebase\_configuration\_file))\

2. Once Firebase is successfully setup, add the following in your project gradle

```
allprojects {
    repositories {
        google()
        jcenter()
        maven { url 'https://jitpack.io' }
    }
}
```

3\. Add the following library in your app gradle. Please check the latest version [here](https://jitpack.io/#ravenappdev/raven-fcm-util).

```
implementation 'com.github.ravenappdev:raven-fcm-util:1.0.6'
```

4\. Initialize the SDK in Application `onCreate`

```
RavenSdk.initialize(this, YOUR_APP_ID, YOUR_ACCOUNT_API_KEY)
```

5\. Set user on signup/login. You can use any of the following methods to set user. Note that this will create a user if it does not exists in Raven. If it exists, it will simply update the user if there is any change.

```
RavenSdk.setUserMobile(USER_ID, MOBILE)
RavenSdk.setUserEmail(USER_ID, EMAIL)
RavenSdk.setUser(USER_ID, MOBILE, EMAIL)
```

6\. Set Firebase token after setting up user. This method will first retrieve the token and associate it with the user that was set earlier.

```
FirebaseMessagingService.setFirebaseToken()
```

7\. To handle Notification clicks, you need to set intent-filter on the activity that you wish to open. The intent filter action corresponds to the click\_action value in the Push template.

```
<intent-filter>
    <action android:name="android.intent.action.MAIN" />
    <category android:name="android.intent.category.LAUNCHER" />
</intent-filter>
```

8\. When the user logs out of your app, we need to de-register the device token. Call `logout` to logout the user from Raven.

```
RavenSdk.logout()
```

That's all! The SDK will manage users, tokens and handle rendering of Push Notifications.&#x20;

> Setting user preferences from SDK will be added soon.



#### Setup #2

This setup helps you to set user and manage tokens on Raven. It assumes you already have setup Firebase and are handling the rendering of notifications yourself. Also, you must setup a Firebase Integration on the console and create an event with a Push template as defined [here](push-template.md). Once done, please follow the below steps

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
