
package com.tamirrabia.vibration;

import android.content.Context;
import android.os.Vibrator;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNVibrationModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNVibrationModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNVibration";
    }

    @ReactMethod
    void vibrate(int milliseconds) {
        Vibrator v = (Vibrator) this.reactContext.getSystemService(Context.VIBRATOR_SERVICE);
        // Vibrate for 500 milliseconds
        v.vibrate(milliseconds);
    }

}