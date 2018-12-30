package ${packageName}.ui

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${packageName}.R
import ${packageName}.view.${viewName}
import ${packageName}.presenter.${presenterName}

import com.arellomobile.mvp.presenter.InjectPresenter

class ${className} : BaseFragmentView(), ${viewName} {
    companion object {
<#if includeFactory>
        fun createInstance(): ${className}  = 
		${className}().apply {
			arguments = Bundle()
		}
</#if>
    }

	@InjectPresenter
	lateinit var presenter: ${presenterName}

 	<#if createProvidesMethod>
       	@ProvidePresenter
        fun providePresenter() : ${presenterName} = ${presenterName}()
	</#if>


	override fun getLayoutResID() = R.layout.${fragmentName}

	override fun setupView(savedInstanceState: Bundle?){
	}
}
