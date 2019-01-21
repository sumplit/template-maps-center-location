package ${packageName}

import android.content.Context
import android.content.Intent
import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import ${applicationPackage}.R
import ${applicationPackage}.util.obtainViewModel
import ${applicationPackage}.util.replaceFragmentInActivity

class ${className}Activity: AppCompatActivity() {
	
	override fun onCreate(savedInstanceState: Bundle?){
		super.onCreate(savedInstanceState)
		setContentView(R.layout.${layoutName})
		setupFragment()
	}

	fun obtainViewModel(): ${className}ViewModel = obtainViewModel(${className}ViewModel::class.java)

	private fun setupFragment(){
		supportFragmentManager.findFragmentById(R.id.frame_main_content)
		${className}Fragment.newInstance().let {
			replaceFragmentInActivity(it, R.id.frame_main_content)
		}
	}

	companion object {
		fun start${className}Activity(context: Context) {
			context.startActivity(Intent(context, ${className}Activity::class.java))
		}
	}

}