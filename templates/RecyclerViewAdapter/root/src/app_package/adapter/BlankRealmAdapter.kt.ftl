package ${packageName}.adapter

class ${adapterName}(items: OrderedRealmCollection<${modelName}>) : BaseRealmRecyclerViewAdapter<${modelName}, ${viewHolderName}>(items) {

	override fun getItemViewType(position: Int) = ${viewHolderName}.LAYOUT

	override fun onCreateViewHolder(parent: ViewGroup, viewType: Int) =
			${viewHolderName}(buildView(parent, viewType))

	override fun onBindViewHolder(holder: ${viewHolderName}, position: Int) {
		getItem(position)?.let { holder.bind(it) }
	}
}
