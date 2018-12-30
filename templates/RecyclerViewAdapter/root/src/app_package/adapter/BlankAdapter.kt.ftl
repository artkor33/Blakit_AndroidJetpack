package ${packageName}.adapter

class ${adapterName}(<#if includeItems>private val items: List<${modelName}></#if>) : BaseRecyclerViewAdapter<${viewHolderName}>() {

	override fun getItemViewType(position: Int) = ${viewHolderName}.LAYOUT

	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) =
			${viewHolderName}(buildView(parent, viewType))

	override fun onBindViewHolder(holder: ${viewHolderName}, position: Int) {
		<#if includeItems>holder.bind(items[position])</#if>
	}

	override fun getItemCount() = <#if includeItems>items.count()<#else>10</#if>  
}
