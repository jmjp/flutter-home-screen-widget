package com.un1versum.penny

import android.app.Activity
import android.appwidget.AppWidgetManager
import android.content.*
import android.net.Uri
import android.widget.RemoteViews
import android.util.Log;
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;


class AppWidgetProvider : HomeWidgetProvider(){
   override fun onEnabled(context: Context){
       super.onEnabled(context);
              val retriveData = HomeWidgetBackgroundIntent.getBroadcast(context,
                        Uri.parse("myAppWidget://retriveData"))
        retriveData.send();
        
       Log.w("Schedule", "OnEnabled called");
   }
   override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray, widgetData: SharedPreferences) {

        appWidgetIds.forEach { widgetId ->
            val views = RemoteViews(context.packageName, R.layout.widget_layout).apply {
                 val retriveData = HomeWidgetBackgroundIntent.getBroadcast(context,
                        Uri.parse("myAppWidget://retriveData"))
                // Open App on Widget Click
                val pendingIntentWithData = HomeWidgetLaunchIntent.getActivity(
                    context,
                    MainActivity::class.java,
                    Uri.parse("myAppWidget://fodase"))

                setOnClickPendingIntent(R.id.widget_root, pendingIntentWithData)

                val counter = widgetData.getString("_data","{'title': 'WAITING'}");

                val json: JSONObject = JSONObject(counter);

                var counterText = json.getString("title");

                setTextViewText(R.id.tv_counter, counterText)

                // Pending intent to update counter on button click
                val backgroundIntent = HomeWidgetBackgroundIntent.getBroadcast(context,
                        Uri.parse("myAppWidget://retriveData"))
                setOnClickPendingIntent(R.id.bt_update, backgroundIntent)
            }
            appWidgetManager.updateAppWidget(widgetId, views)
        }
    }
}