<?xml version="1.0"?>
<recipe>

    <#if includeLayout>
        <instantiate from="res/layout/activity_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityName)}.xml" />
    </#if>


    <instantiate from="src/app_package/ui/activity/BlankActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${className}.kt" />
				   
	<open file="${escapeXmlAttribute(srcOut)}/ui/${className}.kt" />
		
    <#if includeView>
    <instantiate from="src/app_package/presentation/view/BlankView.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${viewName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/view/${viewName}.kt" />
    </#if>

    <#if includePresenter>
    <instantiate from="src/app_package/presentation/presenter/BlankPresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${presenterName}.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/presenter/${presenterName}.kt" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
                                      
</recipe>
