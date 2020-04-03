//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter;

import com.eclipsesource.v8.JavaCallback;
import com.eclipsesource.v8.JavaVoidCallback;
import com.eclipsesource.v8.V8Array;
import com.eclipsesource.v8.V8Function;
import com.eclipsesource.v8.V8Object;

import android.app.Activity;
import android.content.Context;
import android.util.Log;

import com.eclipsesource.v8.V8;
import com.eclipsesource.v8.utils.V8ObjectUtils;
import com.imatrixteam.jsflutter.utils.FileUtils;
import com.imatrixteam.jsflutter.utils.MXJsScheduledExecutorService;
import com.imatrixteam.jsflutter.utils.MXJsScheduledExecutorService.MXJsTask;

import java.util.Map;

public class MXJSExecutor {

    public static final String TAG = "MXJSExecutor";

    //如果JS初始化在其他线程，不要在主线程使用
    public static V8 runtime;

    private MXJsScheduledExecutorService executor;

    public Context context;

    public MXJSExecutor(Context context) {
        this.context = context;
        executor = new MXJsScheduledExecutorService();
        setup();
    }

    public void executeDelay(MXJsTask action, long delay) {
        executor.schedule(action, delay);
    }

    public void execute(MXJsTask action) {
        executor.execute(action);
    }

    private void setup() {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime = V8.createV8Runtime();
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(JavaVoidCallback callback, String name) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    public void registerJavaMethod(JavaVoidCallback callback, String name, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(JavaCallback callback, String name) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    public void registerJavaMethod(JavaCallback callback, String name, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(callback, name);
            }
        });
    }

    //global js runtime
    public void registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        });
    }

    public void registerJavaMethod(Object object, String methodName, String jsFunctionName, Class<?>[] parameterTypes, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                runtime.registerJavaMethod(object, methodName, jsFunctionName, parameterTypes);
            }
        });
    }

    //global js runtime
    public void executeScriptPath(final String path, ExecuteScriptCallback callback) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                boolean fromAsset = !FileUtils.isCopiedFileFromAssets(MXFlutterApplication.getApplication());
                String absolutePath = path;
                if (!fromAsset) {
                    absolutePath = MXJSFlutterApp.JSFLUTTER_LOCAL_DIR + "/" + path;
                }
                String script = FileUtils.getScriptFromPath(context, absolutePath, fromAsset);
                V8Object result = runtime.executeObjectScript(script);
                callback.onComplete(result);
            }
        });
    }

    public void executeScriptPath(final String path, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                boolean fromAsset = !FileUtils.isCopiedFileFromAssets(MXFlutterApplication.getApplication());
                String absolutePath = path;
                if (!fromAsset) {
                    absolutePath = MXJSFlutterApp.JSFLUTTER_LOCAL_DIR + "/" + path;
                }
                String script = FileUtils.getScriptFromPath(context, absolutePath, fromAsset);
                V8Object result = runtime.executeObjectScript(script);
                callback.onComplete(result);
            }
        });
    }

    //global js runtime
    public void executeScript(String script, ExecuteScriptCallback callback) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                Object result = runtime.executeScript(script);
                ((Activity) context).runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        callback.onComplete(result);
                    }
                });
            }
        });
    }

    public void executeScript(String script, ExecuteScriptCallback callback, V8 runtime) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                Object result = runtime.executeScript(script);
                ((Activity) context).runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        callback.onComplete(result);
                    }
                });
            }
        });
    }

    public void close() {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                if (runtime != null) {
                    runtime.release(false);
                }
            }
        });
    }

    public void invokeJSValue(V8Object jsAppObj, String method, Map args, InvokeJSValueCallback callback) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                //获取执行结果
                if (jsAppObj != null) {
                    try {
                        Object result = jsAppObj.executeFunction(method, new V8Array(runtime).push(V8ObjectUtils.toV8Object(runtime, args)));
                        callback.onSuccess(result);
                    } catch (Exception e) {
                        callback.onError(new Error(e.getMessage()));
                        Log.e(TAG, "", e);
                    }
                } else {
                    callback.onError(new Error("jsObjectNull"));
                }
            }
        });
    }

    public void invokeJsFunction(V8Function v8Function, Map value) {
        executor.execute(new MXJsTask() {
            @Override
            public void excute() {
                v8Function.call(runtime, new V8Array(runtime).push(V8ObjectUtils.toV8Object(runtime, value)));
            }
        });
    }

    interface ExecuteScriptCallback {
        void onComplete(Object value);
    }

    interface InvokeJSValueCallback {
        void onSuccess(Object value);

        void onError(Error error);
    }

}


