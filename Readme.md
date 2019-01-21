Template Maps menggunakan google maps untuk pattern MVVM Kotlin. 

## Installing

- ekstra/unzip source template ke folder - > [folder android studio]/plugins/android/lib/templates/other/

- Restart Android Studio

## Cara menggunakan

- Siapkan Akun Google untuk mendapatkan Key Google Maps 
	
	buka -> https://console.cloud.google.com/google/maps-apis/overview?hl=ID

	Klik “Get API Key” atau “Dapatkan Kunci”

	Pilih “+ Create a new project”

- Tambah permissions di Android Manifest

```
  <uses-permission android:name="android.permission.INTERNET" />
  <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
  <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

- Tambah di string.xml

```
  <string name="google_maps_api_key" templateMergeStrategy="preserve" translatable="true">api key dari google</string>
```

- Tambahkan depedencies berikut kedalam gradle
```
  dependencies {
  	...
  		implementation 'com.google.android.gms:play-services-maps:11.8.0'
  	...
	}
```

- Tambahkan key google maps dimanifest
```
	<meta-data
	    android:name="com.google.android.geo.API_KEY"
	    android:value="YOU_KEY"/>
```

