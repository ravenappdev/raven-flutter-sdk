# Apps

Apps contain all your notification data in one place. You can segregate your Integrations, Users, Events in different Apps. You can create multiple apps as per your use-case like a Merchant and Customer app or separate environments like a Production and Staging app.

### Default App

On sign up, we create a default app in your account: **`your_account_name test`**. You can use this App to play around with the platform. In the default App, we add a Raven SMS and Email Integration by default. You can use them in Events to test the platform. To view them, go to the [Integrations tab](https://console.ravenapp.dev/app/management/integrations) in the dashboard. Check our [platform doc on Integrations](../integrations/) for more details.

### Create a new App

![Creating a new App](<../../.gitbook/assets/ezgif.com-gif-maker (2).gif>)

* Go to the [Settings tab](https://console.ravenapp.dev/app/management/settings) in the dashboard and click on `New App` button
* Fill in the details like App Name and Environment. Environment signifies which type of App this is. Learn more about Environment [here](environment.md).
* You can switch to other Apps either by clicking `Switch App` button or from the dropdown in the left-side Nav bar.

### App ID

Every app has an associated identifier: App ID. You will need this identifier in the Raven APIs.

![](<../../.gitbook/assets/image (11).png>)
