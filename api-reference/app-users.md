# Users API

{% swagger baseUrl="https://api.ravenapp.dev" path="/v1/apps/:app_id/users" method="post" summary="Create User" %}
{% swagger-description %}
Creates an AppUser if doesn't exist already, or updates user properties 
{% endswagger-description %}

{% swagger-parameter in="path" name="app_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="header" name="Authorization" type="string" required="true" %}
**AuthKey <api_key>**
{% endswagger-parameter %}

{% swagger-parameter in="body" name="user_id" type="string" required="true" %}
your user identifier. if user_id already exists, user properties will be updated else a new user will be created
{% endswagger-parameter %}

{% swagger-parameter in="body" name="mobile" type="string" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="email" type="string" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="whatsapp_mobile" type="string" %}
include this only when user's whatsapp mobile is different than primary mobile
{% endswagger-parameter %}

{% swagger-response status="200" description="" %}
```
```
{% endswagger-response %}
{% endswagger %}

#### Request. Example

```
POST /v1/apps/{{app_id}}/users HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
Content-Type: application/json

{
    "user_id" : "test",
    "mobile" : "9876543210",
    "email" : "x@ravenapp.dev"
}
```

{% swagger method="get" path="/v1/apps/:app_id/users/:user_id" baseUrl="https://api.ravenapp.dev" summary="Get User Profile" %}
{% swagger-description %}
Gets the requested user profile
{% endswagger-description %}

{% swagger-parameter in="path" name="app_id" required="true" type="string" %}
your AppId
{% endswagger-parameter %}

{% swagger-parameter in="path" name="user_id" required="true" type="string" %}
your user identifier
{% endswagger-parameter %}

{% swagger-response status="200: OK" description="" %}
```javascript
{
    "user_sid": "7cf620d5-8a7d-42d0-aceb-8f51eabddb05",
    "user_id": "john",
    "mobile": "+919876543210",
    "email": "s@ravenapp.dev",
    "whatsapp_mobile": "+919876543210",
    "devices": [
        {
            "created_at": 1613473378532,
            "updated_at": 1613473378532,
            "platform": "android",
            "fcm_token": "asidjaoijddoijqdoiqsjwodjqwodjioqjdijoqdj",
            "device_sid": "02b5a1ee-40a2-4a08-ad92-d6b508cf9819",
            "notifications_disabled": false
        }
    ],
    "created_at": 1612976050750,
    "updated_at": 1616611446951
}
```
{% endswagger-response %}
{% endswagger %}

#### Request Example

```
GET /v1/apps/{{app_id}}/users/{{user_id}} HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
```

### Device APIs for Push

{% swagger baseUrl="https://api.ravenapp.dev" path="/v1/apps/:app_id/users/:user_id/devices" method="post" summary="Add Device" %}
{% swagger-description %}
Add Device for a User
{% endswagger-description %}

{% swagger-parameter in="path" name="user_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="path" name="app_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="header" name="Authorization" type="string" required="true" %}
 

**AuthKey <api_key>**
{% endswagger-parameter %}

{% swagger-parameter in="body" name="fcm_token" type="string" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="platform" type="string" %}
\- anrdoid

\


\- web

\


\- ios
{% endswagger-parameter %}

{% swagger-response status="200" description="" %}
```
```
{% endswagger-response %}
{% endswagger %}

#### Request Example

```
POST /v1/apps/{{app_id}}/users/{{user_id}}/devices/ HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
Content-Type: application/json

{
    "fcm_token" : "qweKu7bdTZumJpzxUqqpxe:APA91bE9FSScPK_kENPpBAj0URYDo4z0tE6aOrBtpgaA1I1OC7GBes1lR71EWRhavLGMzDMKPPLkUoqtvPHzCgq-8ObU4AOJjbPdpkyRWqc8mqrUV2EkvsziLZvFccwtyI7-lQQhSJDe"
    "platform" : "android"
}
```

{% swagger baseUrl="https://api.ravenapp.dev" path="/v1/apps/:app_id/users/:user_id/devices/:device_id" method="put" summary="Update Device" %}
{% swagger-description %}
Update Device for a User
{% endswagger-description %}

{% swagger-parameter in="path" name="device_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="path" name="user_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="path" name="app_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="header" name="Authorization" type="string" required="true" %}
**AuthKey <api_key>**
{% endswagger-parameter %}

{% swagger-parameter in="body" name="platform" type="string" %}

{% endswagger-parameter %}

{% swagger-parameter in="body" name="fcm_token" type="string" %}

{% endswagger-parameter %}

{% swagger-response status="200" description="" %}
```
```
{% endswagger-response %}
{% endswagger %}

#### Request Example

```
POST /v1/apps/{{app_id}}/users/{{user_id}}/devices/{{device_id}} HTTP/1.1
Host: https://api.ravenapp.dev
Authorization: AuthKey {{secret_key}}
Content-Type: application/json

{
    "fcm_token" : "qweKu7bdTZumJpzxUqqpxe:APA91bE9FSScPK_kENPpBAj0URYDo4z0tE6aOrBtpgaA1I1OC7GBes1lR71EWRhavLGMzDMKPPLkUoqtvPHzCgq-8ObU4AOJjbPdpkyRWqc8mqrUV2EkvsziLZvFccwtyI7-lQQhSJDe"
    "platform" : "android"
}
```

{% swagger baseUrl="https://api.ravenapp.dev/v1/apps/:app_id/users/:user_id/devices/:device_id" path="" method="delete" summary="Delete Device" %}
{% swagger-description %}
Delete Device for a User
{% endswagger-description %}

{% swagger-parameter in="path" name="app_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="path" name="user_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-parameter in="path" name="device_id" type="string" required="true" %}

{% endswagger-parameter %}

{% swagger-response status="200" description="" %}
```
```
{% endswagger-response %}
{% endswagger %}
