<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="13008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="combustao.vi" Type="VI" URL="../combustao.vi"/>
		<Item Name="combustion.jpg" Type="Document" URL="../combustion.jpg"/>
		<Item Name="Elegantthemes-Beautiful-Flat-Flame.ico" Type="Document" URL="../Elegantthemes-Beautiful-Flat-Flame.ico"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Estequiometria de Combustao" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{72D16E4D-734D-4986-8F0B-5B4F3F3A4296}</Property>
				<Property Name="App_INI_GUID" Type="Str">{E30F3C96-0EE6-4422-BCF3-3109FA9A6819}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{23F3A259-BC36-495F-85F2-5AE2633092F1}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Estequiometria de Combustao</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../Build</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{8BE51D8F-DB41-4B88-8B00-234EDEC90BD6}</Property>
				<Property Name="Bld_version.build" Type="Int">10</Property>
				<Property Name="Bld_version.major" Type="Int">2</Property>
				<Property Name="Bld_version.patch" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Combustao.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../Build/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../Build/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Elegantthemes-Beautiful-Flat-Flame.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{D0F76D75-D8EF-4282-8327-4D7ABCDEB1AA}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/combustao.vi</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Show menu bar</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Show toolbar</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[2].type" Type="Str">Show Abort button</Property>
				<Property Name="Source[1].properties[2].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[3].type" Type="Str">Run when opened</Property>
				<Property Name="Source[1].properties[3].value" Type="Bool">true</Property>
				<Property Name="Source[1].properties[4].type" Type="Str">Show vertical scroll bar</Property>
				<Property Name="Source[1].properties[4].value" Type="Bool">false</Property>
				<Property Name="Source[1].properties[5].type" Type="Str">Show horizontal scroll bar</Property>
				<Property Name="Source[1].properties[5].value" Type="Bool">false</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">6</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">UFSC</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Programa desenvolvido pelos estudantes de Engenharia de Controle e Automação da Universidade Federal de Santa Catarina João Paulo Zomer Machado, Ígor Assis Rocha Yamamoto, Iago de Oliveira Silvestre, Bruno Rodrigo Marchi Rumich e Luis Felipe Pelison durante a disciplina EQA 5115 - Química Tecnológica Geral C com o intuito de facilitar os cálculos estequiométricos da combustão.</Property>
				<Property Name="TgtF_internalName" Type="Str">Combustao</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 UFSC</Property>
				<Property Name="TgtF_productName" Type="Str">Estequiometria da Combustão</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{D4B8E76B-4942-4DD9-8666-3B165E767A63}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Combustao.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
