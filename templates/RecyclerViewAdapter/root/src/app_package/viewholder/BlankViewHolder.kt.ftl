package ${packageName}.view_holder

import android.view.View

class ${viewHolderName}(itemView: View) : BaseViewHolder(itemView) {
	companion object {
		const val LAYOUT = R.layout.${itemLayoutName}
	}
	
	<#if includeItems> fun bind(item: ${modelName}) {
	}</#if>
}
