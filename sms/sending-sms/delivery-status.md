---
description: Description of delivery statuses tracked for SMS.
---

# Delivery Status

## 📭 Setup Delivery Reports&#x20;

To track the delivery statuses of your SMS notification, you should first setup delivery reports with the Integration you are sending the SMS with.\
Every Integration has the details on how to setup Delivery reports. Please check the [Integration docs](../integrations/).

## 📃 SMS Delivery Statuses

If the delivery reports are configured properly, you will start seeing the following statuses in the Logs tab for each SMS notification.

| Status          | Description                                                                                                                                                                                                                    |
| --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **`REQUESTED`** | The request has been received by Raven. If the request is valid, Raven will send the notification to the provider integration,                                                                                                 |
| **`ACCEPTED`**  | The request was successfully sent to the provider integration and Raven received a 200 OK response from them.                                                                                                                  |
| **`DELIVERED`** | The notification was successfully delivered to the user.                                                                                                                                                                       |
| **`FAILED`**    | <p>The notification failed to deliver to the user. This could happen in the following cases-</p><p>1. Request to the provider integration failed. </p><p>2. Provider was not able to deliver the notification to the user.</p> |
| **`ERROR`**     | <p>The request sent to Raven is invalid. This could happen </p><ol><li>If the user mobile is invalid or empty.</li><li>Template is incorrect.</li><li>User has opted-out of SMS.</li></ol>                                     |

