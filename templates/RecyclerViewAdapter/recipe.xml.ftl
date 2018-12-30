<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/item_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(itemLayoutName)}.xml" />
    </#if>

    <instantiate from="src/app_package/viewholder/BlankViewHolder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view_holder/${viewHolderName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/view_holder/${viewHolderName}.kt" />

    <#if includeRealmAdapter>
      <instantiate from="src/app_package/adapter/BlankRealmAdapter.kt.ftl"
              	     to="${escapeXmlAttribute(srcOut)}/adapter/${adapterName}.kt" />
	
  		  <open file="${escapeXmlAttribute(srcOut)}/adapter/${adapterName}.kt" />
	<#else>
      <instantiate from="src/app_package/adapter/BlankAdapter.kt.ftl"
              	     to="${escapeXmlAttribute(srcOut)}/adapter/${adapterName}.kt" />

      <open file="${escapeXmlAttribute(srcOut)}/adapter/${adapterName}.kt" />
    </#if>

</recipe>
