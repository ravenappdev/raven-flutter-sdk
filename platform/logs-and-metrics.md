# Logs & Metrics

## 📜 Logs

Every event that is sent to Raven is logged and can be viewed in the [Logs section](https://console.ravenapp.dev/app/dashboard/logs). Since you can send notifications on multiple channels in a single event, you will see the status of each notification by clicking the Event log.

![Logs](<../.gitbook/assets/image (6).png>)

On clicking an Event log, its timeline will be shown. The timeline displays each notification, its status and the callbacks received from the provider. You can also see the payload corresponding to each request/response.

![Log timeline](<../.gitbook/assets/image (7).png>)

### List of Statuses

Following are the list of statuses that are shown in the logs:

| Status      | Desc                                                | Channels    |
| ----------- | --------------------------------------------------- | ----------- |
| `QUEUED`    | Requested queued in Raven                           | All         |
| `REQUESTED` | Raven has sent the request to the provider          | All         |
| `ACCEPTED`  | Provider has accepted the request                   | All         |
| `DELIVERED` | Notification is delivered                           | All         |
| `FAILED`    | Provider API failed, Notification failed to deliver | All         |
| `ERROR`     | Error in the request sent to Raven                  | All         |
| `READ`      | Notification read                                   | WhatsApp    |
| `CLICKED`   | Notification clicked                                | Email, Push |
| `OPENED`    | Notification opened                                 | Email       |
| `DISPLAYED` | Notification shown in UI                            | Push        |

### Advanced

You can reach out to us at **support@ravenapp.dev** if you need any of the following:

* A list of downloadable logs (of all notifications with their statuses) for a time period.&#x20;
* If you do not wish Raven to log the payload data, we will disable logging for your app/account**.** Alternatively, if you have critical data in the payload like OTP, you can mask that information for Viewer and Editor roles. Check out our [Security doc](../account/security.md) for more details.

## 📈 Metrics

![Delivery Metrics](<../.gitbook/assets/image (28).png>)

The [Metrics section ](https://console.ravenapp.dev/app/dashboard/metrics)shows the delivery data of all notifications (note that notifications sent can be more than the number of events, as one event may trigger multiple notifications). You can filter basis the Event, Channel and Integrations. You can even download the aggregate metrics in CSV format for all channels.

### Alerts

You can generate alerts to your email/slack channel, if a condition is met. This feature is currently WIP. You can reach out to us if you want alerts for one of the following:

1. Delivery rate for a channel drops below x%
2. Provider latency drops below x%

