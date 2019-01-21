<layout xmlns:android="http://schemas.android.com/apk/res/android"
		xmlns:tools="http://schemas.android.com/tools"
		xmlns:app="http://schemas.android.com/apk/res-auto">

	<data>

        <import type="android.view.View" />
        
		<variable
			name="mViewModel"
			type="${packageName}.${className}ViewModel" />

		<variable
			name="mListener"
			type="${packageName}.${className}UserActionListener" />				
	</data>
	
	<RelativeLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <com.google.android.gms.maps.MapView
            android:id="@+id/maps"
            android:layout_width="match_parent"
            android:layout_height="match_parent" />

        <EditText
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_alignParentTop="true"
            android:layout_margin="@dimen/dimen_16dp"
            android:background="@android:color/white"
            android:ellipsize="end"
            android:gravity="center_vertical"
            android:maxLines="1"
            android:singleLine="true"
            android:text="@={mViewModel.textSearchLocation}"
            tools:text="Bandung" />

        <ImageView
            android:layout_width="@dimen/dimen_48dp"
            android:layout_height="@dimen/dimen_48dp"
            android:layout_centerInParent="true"
            app:srcCompat="@drawable/ic_launcher_foreground" />

        <ProgressBar
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_alignParentBottom="true"
            android:layout_marginBottom="@dimen/dimen_16dp"
            android:layout_marginLeft="@dimen/dimen_16dp"
            android:layout_marginRight="@dimen/dimen_16dp"
            android:visibility="@{mViewModel.loadingSearch ? View.VISIBLE : View.GONE}"/>

        <Button
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_alignParentBottom="true"
            android:layout_marginBottom="@dimen/dimen_16dp"
            android:layout_marginLeft="@dimen/dimen_16dp"
            android:layout_marginRight="@dimen/dimen_16dp"
            android:onClick="@{()->mListener.onGetLatLongAddressFromCenterMaps()}"
            android:text="AMBIL LOKASI"
            android:visibility="@{mViewModel.loadingSearch ? View.GONE : View.VISIBLE}"/>

    </RelativeLayout>

</layout>