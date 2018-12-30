package ${packageName}.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle

import com.arellomobile.mvp.presenter.InjectPresenter
import ${packageName}.R
import ${packageName}.view.${viewName}
import ${packageName}.presenter.${presenterName}

<#if createProvidesMethod>
import com.arellomobile.mvp.presenter.ProvidePresenter;
</#if>


class ${className} : BaseActivityView(), ${viewName} {
    companion object {
	<#if includeFactory>
        fun createIntent(context: Context): Intent = 
	Intent(context, ${className}::class.java)
	</#if>
    }

	@InjectPresenter
	lateinit var presenter: ${presenterName}

    <#if createProvidesMethod>
        @ProvidePresenter
        fun providePresenter() : ${presenterName} = ${presenterName}()
    </#if>

	override fun getLayoutResID() = R.layout.${activityName}

	override fun setupView(savedInstanceState: Bundle?) {
    	}
}
