# Sending Email

Check the steps below to start sending Email with Raven using any provider.

1. Start with creating an app and an add your Email integration. Then, create an event with email enabled. For detailed steps, please follow the [docs](../platform/apps/). \
   If you are trying in Sandbox, then a SendGrid email integration is already in place.\

2.  Add an email template to the event and make it live. Please check the [doc](email-template.md) on how to add an email template.&#x20;


3. Once the event is setup, you can either create a user with an email on Raven or pass the email directly when triggering the event. Check the[ Users doc](../platform/users.md) for details.\

4. Trigger the event using the console or the Send Event API. Check the testing [doc](broken-reference) for details.

Once you send an event, you will see a log created in the Logs section. The status of the email notification will be updated based on the delivery callback received from the provider.
