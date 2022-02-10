# Channel Fallback

When configuring channels for an Event, the default option shows the channels to which the notifications will go first. You can also decide what happens when a notification fails to deliver on a channel. Select the "More Options" to enable channel fallback. You can then click on the arrow icon beside a channel to configure the fallback conditions.

![](<../../.gitbook/assets/ezgif.com-gif-maker (8).gif>)



### When to fallback to another channel

There can various reasons for which you can set up a fallback:

1. Provider API fails with 4xx, 5xx or times out.
2. Provider was not able to deliver the notification within X seconds.
3. Recipient details unavailable or User has opted-out of the channel

Raven allows you to add any of these conditions easily without writing any code. Let's check each of these case by case:

#### Case 1: Provider API failure

![](<../../.gitbook/assets/image (25).png>)

This example says that: If the provider API fails (4xx, 5xx) or connection times out within 30s, then fallback to WhatsApp. The fallback channel is triggered as soon as the API fails. Raven waits for 30s only if there is a delay in API success/failure response.&#x20;

Note that, an API success from the provider **DOES NOT** guarantee a successful delivery of the notification (SMS, Push, Email, WhatsApp, Voice). It means that the provider has accepted the request and will now attempt to deliver. If you want to fallback when the notification has not delivered instead, then check out condition below.

#### Case 2: Notification not delivered

![](<../../.gitbook/assets/image (26).png>)

This example says that: If the notification does not deliver within 10s, then fallback to WhatsApp. This rule is a super set of Case 1 and considers both options:&#x20;

1. API failure
2. Delivery failure (can happen due to unavailability of recipient, network issue etc)

Raven will trigger the fallback immediately if the provider API fails and if the API is successful, will wait for 10s to deliver the notification. Raven waits for the delivery report from the provider and decides based on the type of callback received. If a callback is received which does not confirm the delivery of the notification, the fallback will be triggered.

#### Case 3: Recipient unavailable or User opted-out

Currently, fallback by default gets triggered if the recipient details are not present (like mobile number is empty) or if the user has opted out from the channel. You can [manage the user details and channel preferences](../users.md) on Raven or pass it in the Send Event API.

{% hint style="info" %}
📘 **Note:** \
In case the provider is throttling requests due to some rate-limit set for your account, Raven will retry the request automatically till there is a resolution. You need not setup fallbacks in this case.
{% endhint %}

