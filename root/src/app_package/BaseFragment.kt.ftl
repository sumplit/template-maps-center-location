package ${packageName}

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import ${applicationPackage}.util.obtainViewModel
import ${applicationPackage}.databinding.${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding
import kotlinx.android.synthetic.main.${fragmentLayoutName}.*

class ${className}Fragment: Fragment(), ${className}UserActionListener {
	
	lateinit var mViewDataBinding: ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding
	lateinit var mViewModel: ${className}ViewModel

	override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
						savedInstanceState: Bundle?): View? {

		mViewDataBinding = ${fragmentLayoutName?replace('_', ' ')?capitalize?replace(' ','')}Binding.inflate(inflater,container, false)
		mViewModel = (activity as ${className}Activity).obtainViewModel()

		mViewDataBinding.mViewModel = mViewModel.apply {

		}

		mViewDataBinding.mListener = this@${className}Fragment

		return mViewDataBinding.root
	}

	override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        maps.onCreate(savedInstanceState)
        maps.onPause()
        maps.getMapAsync(mViewDataBinding.mViewModel)
        maps.onResume()
    }

	override fun onGetMyLocation(){

	}

	override fun onGetLatLongAddressFromCenterMaps(){
		mViewModel.getCenterLocationMaps()
	}

	companion object {

		fun newInstance() = ${className}Fragment().apply {

		}
	}

}