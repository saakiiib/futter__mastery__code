# Flutter Google Maps Integration

This repository provides a step-by-step guide on integrating Google Maps into your Flutter application using the Google Maps Android API.

![Application Screenshot](path/to/ss1.png)

## Getting Started

### Step 1: Enable the Google Maps API

1. Go to the [Google Cloud Console](https://console.cloud.google.com/).
2. Create or select a project for your Flutter application.
3. Navigate to "APIs & Services" > "Dashboard" in the left sidebar.
4. Click on "+ ENABLE APIS AND SERVICES."
5. Search for "Maps SDK for Android" and enable it.
6. If payment is required, click the back button multiple times until it's enabled.

### Step 2: Create API Key

1. From the Google Cloud Console, go to "APIs & Services" > "Credentials."
2. Click "+ CREATE CREDENTIALS" and select "API key."
3. Configure the generated API key in the next step.

### Step 3: Configure API Key for Android

1. In the API key configuration page, scroll to "Key restriction."
2. Under "Application restrictions," choose "Android apps."
3. Enter your Flutter application's package name.
4. Enter the SHA-1 fingerprint of your debug or release keystore.

   - To get the SHA-1 fingerprint for debug keystore:

     ```
     keytool -list -v -keystore "C:\Users\{Profile}\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android

     ```

5. Click "Save" to save the changes.

### Step 4: Copy API Key

1. Copy the generated API key.

### Step 5: Add API Key to Flutter Application

1. Open your Flutter project.
2. Navigate to `android/app/src/main/AndroidManifest.xml`.
3. Add the following `<meta-data>` element inside the `<application>` element, replacing `YOUR_API_KEY` with the copied API key:

```xml
<application>
  <!-- ... other configurations ... -->
  <meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY"/>
</application>
```
