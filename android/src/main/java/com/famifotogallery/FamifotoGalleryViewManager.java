package com.famifotogallery;

import android.graphics.Color;

import androidx.annotation.Nullable;

import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

@ReactModule(name = FamifotoGalleryViewManager.NAME)
public class FamifotoGalleryViewManager extends FamifotoGalleryViewManagerSpec<FamifotoGalleryView> {

  public static final String NAME = "FamifotoGalleryView";

  @Override
  public String getName() {
    return NAME;
  }

  @Override
  public FamifotoGalleryView createViewInstance(ThemedReactContext context) {
    return new FamifotoGalleryView(context);
  }

  @Override
  @ReactProp(name = "color")
  public void setColor(FamifotoGalleryView view, @Nullable String color) {
    view.setBackgroundColor(Color.parseColor(color));
  }
}
