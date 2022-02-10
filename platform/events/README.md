# Events

Events are triggers that define:

1. The channels on which notifications will be sent.
2. Content of the notifications
3. Integrations/rules to be used to send a notification

Notifications are sent by triggering an event to Raven using the [Send Event API](../../api-reference/send-event.md). When Raven receives an event, it will use the configuration to send the notifications. \
You can view all your events in the [Events](https://console.ravenapp.dev/app/management/events) tab, as shown in the image below. You can create a new event by using the New Event button.

![List of Events](<../../.gitbook/assets/image (5).png>)

## ✨ Creating a new Event

An event has 3 parts - a name, channels & routing and templates. When you start creating an event, it will be saved in a **`DRAFT`** state, until you finish configuring all the parts.

### Step 1. Event Name

An event name uniquely identifies an event. You would use this event name while sending an event via the Send Event API.



### Step 2. Event Channels

Define the channels you want to send the notifications on. Suppose for example, we want to send a login OTP (One time password) to our users. We configure this in the following way:

![Sending OTP on SMS, Email, WhatsApp](<../../.gitbook/assets/Screenshot 2021-10-06 at 4.06.45 PM.png>)

This says, Send OTP on SMS and Email first. Beside every channel we can select the Integration or Rule with which it should be sent. Here, we have selected Twilio for SMS and SendGrid for Email. Note that here we have also added WhatsApp as a fallback channel to SMS. This means, if SMS fails to deliver for some reason, try sending the OTP via WhatsApp. \
We cover more on adding channel fallbacks in our doc below:

{% content-ref url="channel-fallback.md" %}
[channel-fallback.md](channel-fallback.md)
{% endcontent-ref %}



### Step 3. Event Templates

Once the channels are defined, the final step is to configure the notification content for each channel. We have a channel wise doc on templates. Check them out below 👇

* [SMS Template](../../sms/template.md)
* [Email Template](../../email/email-template.md)
* [Push Template](../../push/push-template.md)
* [WhatsApp Template](../../whatsapp/whatsapp-template.md)
* [Voice Template](../../voice/voice-template.md)
* [Slack Template](../../others/slack.md)

#### Dynamic Fields

Our channel wise template docs above cover this in more detail. In brief, you can pass dynamic or custom data in the templates like Invoice ID, user name, tracking link etc by specifying them within handlebars `{{ user_name }}` . Raven uses [Handlebars.js](https://handlebarsjs.com/guide/#what-is-handlebars) to parse the template and all handlebar operations are supported like nested objects, #if, #each etc. You will need to pass the value of the variables in the `data` object of [Send Event API](../../api-reference/send-event.md).



### Step 4. Test&#x20;

Once everything is configured, its status is changed from **`DRAFT`** to **`LIVE`**. You can now use the Send Event API to test, by sending an event with the configured event name. You can also trigger the Event from the dashboard. Go to Event List > Send Event (Airplane Icon).&#x20;

## 🛎️ Important Links

{% content-ref url="../../sms/sending-sms/" %}
[sending-sms](../../sms/sending-sms/)
{% endcontent-ref %}

{% content-ref url="../../email/sending-email.md" %}
[sending-email.md](../../email/sending-email.md)
{% endcontent-ref %}

{% content-ref url="../../push/sending-push.md" %}
[sending-push.md](../../push/sending-push.md)
{% endcontent-ref %}

{% content-ref url="../../whatsapp/sending-whatsapp.md" %}
[sending-whatsapp.md](../../whatsapp/sending-whatsapp.md)
{% endcontent-ref %}

{% content-ref url="../../voice/sending-voice.md" %}
[sending-voice.md](../../voice/sending-voice.md)
{% endcontent-ref %}

{% content-ref url="../../others/slack.md" %}
[slack.md](../../others/slack.md)
{% endcontent-ref %}
