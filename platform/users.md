# Users

Raven allows you to create users and their preferences by using our SDK or Users API. Although its optional, there are a few advantages -&#x20;

1. It allows you to trigger notifications using the user identifier instead of passing the individual email, phone, token data in the Send Event API.
2. Raven can manage user preferences for each channel. This allows Raven to route notifications correctly.
3. Push token management can be handled by Raven.

### Manage Users & Preferences

There are two ways to manage users on Raven-

1. Raven Client SDK - With Raven SDK, you can set the user details during your signup/login flow in your client (Android, iOS, Web). The SDK will take care of creating and managing the user on Raven. Check more about the Client SDK [here](../push/push-client-sdk/android-sdk.md).
2. Users API - You can also manage users by hitting our [Users API](../api-reference/app-users.md).&#x20;
