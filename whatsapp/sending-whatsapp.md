# Sending a WhatsApp message

Check the steps below to start sending WhatsApp with Raven using any provider.

1. Start with creating an app and an add your WhatsApp integration. Then, create an event with WhatsApp enabled. For detailed steps, please follow the [docs](../platform/apps/).\

2.  Add a WhatsApp template to the event and make it live. You would have to get your account approved from WhatsApp with your provider. Please check the [doc](whatsapp-template.md) on how to add a WhatsApp template.&#x20;


3. Once the event is setup, you can either create a user with a mobile number on Raven or pass the mobile number directly when triggering the event. Check the[ Users doc](../platform/users.md) for details.\

4. Trigger the event using the console or the Send Event API. Check the testing [doc](broken-reference) for details.

Once you send an event, you will see a log created in the Logs section. The status of the email notification will be updated based on the delivery callback received from the provider.
