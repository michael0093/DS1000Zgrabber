<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
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
		<Item Name="DS1000Z_Image_Grabber.vi" Type="VI" URL="../DS1000Z_Image_Grabber.vi"/>
		<Item Name="nixie_n_FEc_icon.ico" Type="Document" URL="../../Nixie/Images for Manual, Logos/nixie_n_FEc_icon.ico"/>
		<Item Name="RIGOL DS1000 Series.lvlib" Type="Library" URL="../rigol_ds1000_series/RIGOL DS1000 Series/RIGOL DS1000 Series.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Low Level/Abort.vi"/>
				<Item Name="Autosetup.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Autosetup.vi"/>
				<Item Name="Close.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Close.vi"/>
				<Item Name="Configure Acquisition Type.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Acquisition Type.vi"/>
				<Item Name="Configure Channel Characteristics.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Channel Characteristics.vi"/>
				<Item Name="Configure Channel Unit.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Channel Unit.vi"/>
				<Item Name="Configure Channel.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Channel.vi"/>
				<Item Name="Configure Logic Analyzer Channel.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Logic Analyzer Channel.vi"/>
				<Item Name="Configure Logic Analyzer Group.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Logic Analyzer Group.vi"/>
				<Item Name="Configure Timebase Mode.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Timebase Mode.vi"/>
				<Item Name="Configure Timebase.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Timebase.vi"/>
				<Item Name="Configure Trigger (Edge).vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Trigger (Edge).vi"/>
				<Item Name="Configure Trigger Midpoint.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Trigger Midpoint.vi"/>
				<Item Name="Configure Trigger Setup.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Trigger Setup.vi"/>
				<Item Name="Configure Trigger Sweep.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Trigger Sweep.vi"/>
				<Item Name="Configure Trigger.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Configure/Configure Trigger.vi"/>
				<Item Name="Delay.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Utility/Delay.vi"/>
				<Item Name="Enable Logic Analyzer Display.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Action-Status/Enable Logic Analyzer Display.vi"/>
				<Item Name="Fetch Digital Waveform.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Low Level/Fetch Digital Waveform.vi"/>
				<Item Name="Fetch Waveform Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Low Level/Fetch Waveform Measurement.vi"/>
				<Item Name="Fetch Waveform.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Low Level/Fetch Waveform.vi"/>
				<Item Name="Initialize.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Initialize.vi"/>
				<Item Name="Initiate.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Low Level/Initiate.vi"/>
				<Item Name="Read (Single Waveform).vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Read (Single Waveform).vi"/>
				<Item Name="Read Waveform Measurement.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Read Waveform Measurement.vi"/>
				<Item Name="Read.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Data/Read.vi"/>
				<Item Name="Reset Waveform Position.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Action-Status/Reset Waveform Position.vi"/>
				<Item Name="Reset.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Utility/Reset.vi"/>
				<Item Name="Revision Query.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Utility/Revision Query.vi"/>
				<Item Name="RIGOL DS1000 Series.lvlib" Type="Library" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/RIGOL DS1000 Series.lvlib"/>
				<Item Name="Switch Logic Analyzer State.vi" Type="VI" URL="/&lt;instrlib&gt;/RIGOL DS1000 Series/Public/Action-Status/Switch Logic Analyzer State.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Binary to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Binary to Digital.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Compress Digital.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DTbl Binary U8 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Binary U8 to Digital.vi"/>
				<Item Name="DTbl Binary U16 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Binary U16 to Digital.vi"/>
				<Item Name="DTbl Binary U32 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Binary U32 to Digital.vi"/>
				<Item Name="DTbl Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Compress Digital.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DWDT Binary U8 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Binary U8 to Digital.vi"/>
				<Item Name="DWDT Binary U16 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Binary U16 to Digital.vi"/>
				<Item Name="DWDT Binary U32 to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Binary U32 to Digital.vi"/>
				<Item Name="DWDT Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Compress Digital.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="Escape Characters for HTTP.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Escape Characters for HTTP.vi"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FormatTime String.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Open URL in Default Browser (path).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (path).vi"/>
				<Item Name="Open URL in Default Browser (string).vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser (string).vi"/>
				<Item Name="Open URL in Default Browser core.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser core.vi"/>
				<Item Name="Open URL in Default Browser.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/browser.llb/Open URL in Default Browser.vi"/>
				<Item Name="Path to URL inner.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL inner.vi"/>
				<Item Name="Path to URL.vi" Type="VI" URL="/&lt;vilib&gt;/printing/PathToURL.llb/Path to URL.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="subElapsedTime.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="DS1000Z_ImageGrabber" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{F2A19A61-4715-44B0-BA74-3CECB345B24E}</Property>
				<Property Name="App_INI_GUID" Type="Str">{F55E7507-4ACD-47D3-8DC3-C080928E955E}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{1824C235-950C-4188-A645-63736A7CECC9}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">DS1000Z_ImageGrabber</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{70326DE0-F3BF-40AB-A278-FA9710D0E228}</Property>
				<Property Name="Bld_version.build" Type="Int">9</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">DS1000Z_ImageGrabber.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/DS1000Z_ImageGrabber.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/nixie_n_FEc_icon.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{C67662BF-43C1-4250-8F8B-72B3E73F2A20}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/DS1000Z_Image_Grabber.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">EDMI Pty Ltd</Property>
				<Property Name="TgtF_fileDescription" Type="Str">DS1000Z_ImageGrabber</Property>
				<Property Name="TgtF_internalName" Type="Str">DS1000Z_ImageGrabber</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2020 EDMI Pty Ltd</Property>
				<Property Name="TgtF_productName" Type="Str">DS1000Z_ImageGrabber</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{69AEC7D2-B573-460D-8A66-9B2C50ACD743}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">DS1000Z_ImageGrabber.exe</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
