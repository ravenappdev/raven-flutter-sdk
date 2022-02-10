# Sending Push

You can start sending Push Notifications to Android, iOS or Web with Raven using any push provider.&#x20;

### Firebase Push&#x20;

1. Start with creating an app and an add a Firebase integration. Then, create an event with push enabled. For detailed steps, please follow the [docs](../platform/apps/). \
   If you are trying in Sandbox, then a Firebase integration is already in place. The sandbox account only supports web push on the Raven console. You can retrieve the device token by clicking the Firebase integration.\

2. Add a push template to the event and it make it live. Please check the [doc](push-template.md) on how to add a push template.\

3. Once the event is setup, you can either create a user with token on Raven or pass the device token directly when triggering the event. Check the [Users doc ](../platform/users.md)for details.\

4. Trigger the event using the console or the Send Event API. Check the testing [doc](broken-reference) for details.

Once you send an event, you will see a log created in the Logs section. The status of the notification will be updated based on the delivery, or whether the notification is clicked or dismissed.

