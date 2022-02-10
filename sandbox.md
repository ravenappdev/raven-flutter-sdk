# Sandbox

After signup, a sandbox app is created in your account with the name: `sample_project`. This app has a few default integrations in place for Push, SMS, Email & WhatsApp.

The default integrations are:\
1\. Push - Firebase (This Firebase integration is set up for the Raven console web app)\
2\. SMS - Twilio\
3\. Email - SendGrid\
4\. WhatsApp - _Coming Soon_

{% hint style="info" %}
The default Firebase integration is only for demo purposes and will only work for the Raven console web app. This means you can send web push only to the Raven console for testing. To generate the Firebase token, please open the Firebase integration and click Generate Token. \
You can then use this token later on while testing.
{% endhint %}

### Test the Sandbox

* You can start by creating an event and then using the Send Event API to trigger the event. Please check our docs to create an event [here](platform/events/).&#x20;
* Either create a user using our [Users API](api-reference/app-users.md) or directly send the mobile/email/token while triggering the event. To know more about users, please check [here](platform/users.md).
* Once you have created an event, trigger the event either user our [Test Console](broken-reference) or [Send Event API](api-reference/send-event.md).

If you wish to understand more about the platform, please check our platform [docs](platform/home.md).&#x20;

### After testing the Sandbox

Once you have successfully tested the Sandbox, you can proceed by creating your own app and adding your own integrations.

> For any issues, feel free to reach out to sriyansh@ravenapp.dev



