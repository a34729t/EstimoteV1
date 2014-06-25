CAVEATS:

* When testing, if you go into the background next to a beacon, in general when you wake up you won't notice it. You want to turn off the app manually and restart it to make it work.
* The location (via CoreLocation) is  unreliable in a noisy RF environment. Your beacon will flip between 'Unknown Proximity' and 'Near' and others quite frequently.
* I've restricted the app to use only our 6 estimote beacons (hardcoded into Config.h and BeaconManager.m)
* Region enter/exit can take 10-15s to register with app.

Important Code:

* AppDelegate local notification methods
* Config.h with constants for UUIDs
* BeaconManager for CoreLocation and beacon management methods
* Project settings & capabilities: Use Location updates + Uses Bluetooth LE accessories
