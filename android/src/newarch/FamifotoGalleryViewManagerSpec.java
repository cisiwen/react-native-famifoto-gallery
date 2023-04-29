package com.famifotogallery;

import android.view.View;

import androidx.annotation.Nullable;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.FamifotoGalleryViewManagerDelegate;
import com.facebook.react.viewmanagers.FamifotoGalleryViewManagerInterface;
import com.facebook.soloader.SoLoader;

public abstract class FamifotoGalleryViewManagerSpec<T extends View> extends SimpleViewManager<T> implements FamifotoGalleryViewManagerInterface<T> {
  static {
    if (BuildConfig.CODEGEN_MODULE_REGISTRATION != null) {
      SoLoader.loadLibrary(BuildConfig.CODEGEN_MODULE_REGISTRATION);
    }
  }

  private final ViewManagerDelegate<T> mDelegate;

  public FamifotoGalleryViewManagerSpec() {
    mDelegate = new FamifotoGalleryViewManagerDelegate(this);
  }

  @Nullable
  @Override
  protected ViewManagerDelegate<T> getDelegate() {
    return mDelegate;
  }
}
