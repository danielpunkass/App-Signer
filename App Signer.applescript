-- Erica Sadun, http://ericasadun.com
-- iPhone Developer's Cookbook, 3.0 Edition
-- BSD License, Use at your own risk
--
-- Modified by Daniel Jalkut to avoid UI interaction and also add signed apps to iTunes.
-- http://github.com/danielpunkass/App-Signer
--
-- Instructions for use:
--
-- 1. Edit the configuration constants below to match your desired signing profile/etc.
-- 2. Save in Script Editor as Application
-- 3. Drag application bundle to its icon in Finder
-- 4. Sync your phone!
--

-- Signing configuration
set gSigningIdentity to "iPhone Developer"
global gSigningIdentity

-- IF you like to live dangerously and rewrite .ipas and Payload folders that already exist...
set gParanoidAboutFileDestruction to true
global gParanoidAboutFileDestruction

on fullNameForFile(inFile)
	return (name of (info for inFile))
end fullNameForFile

on baseAndExtensionForFile(inFile)
	set fullName to fullNameForFile(inFile)
	set baseFileName to fullName
	set extension to ""
	set dotOffset to offset of "." in baseFileName
	if (dotOffset > 0) then
		set baseFileName to text 1 thru (dotOffset - 1) of fullName
		set extension to text (dotOffset + 1) thru (length of fullName) of fullName
	end if
	
	return {baseFileName, extension}
end baseAndExtensionForFile

on userFriendlyNameForFile(inFile)
	return item 1 of baseAndExtensionForFile(inFile)
end userFriendlyNameForFile

on extensionForFile(inFile)
	return item 2 of baseAndExtensionForFile(inFile)
end extensionForFile

on open file_items
	-- Do the signing
	repeat with this_item in file_items
		set this_item to alias this_item
		
		-- Determine whether the item has an .app extension. If not, complain and skip
		set the_file_name to fullNameForFile(this_item)
		set file_extension to extensionForFile(this_item)
		if file_extension is not "app" and file_extension is not "ipa" then
			display dialog (the_file_name & " is not an .app or .ipa file. Don't know what to do with it!")
		else
			try
				-- If it's an IPA we need to get the app out first 
				if file_extension is "ipa" then
					set this_item to unzipAppFromIPA(this_item)
				end if
				
				signApplication(this_item, gSigningIdentity)
				
				-- Now send it to iTunes ... we have to pack it back up as an .ipa
				my copyAppToITunes(this_item)
				
				display dialog "We're all done!"
			on error errmesg number errn
				display dialog errmesg
			end try
		end if
	end repeat
end open

to signApplication(inApp, signingIdentity)
	
	-- retrieve the item path for the .app bundle
	set appPath to POSIX path of inApp
	
	-- create the shell command
	set unix_command to "/bin/bash -c 'export CODESIGN_ALLOCATE=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/codesign_allocate; /usr/bin/codesign -f -s \"" & signingIdentity & "\" \"" & appPath & "\"' 2>&1"
	log unix_command
	
	-- retrieve any results of executing the command
	set command_result to do shell script unix_command
	
end signApplication

-- If we are starting with an ipa input, we unzip it to sign, then repack
on unzipAppFromIPA(inIPAFile)
	set uniqueID to do shell script "uuidgen"
	set uniqueExtractionDir to "/tmp/" & uniqueID
	set ipaPath to quoted form of POSIX path of inIPAFile
	set unzipCommand to "mkdir -p " & quoted form of uniqueExtractionDir & "; unzip " & ipaPath & " -d " & quoted form of uniqueExtractionDir
	do shell script unzipCommand
	
	# find the resulting app
	set payloadDir to uniqueExtractionDir & "/Payload"
	set unzippedAppPath to do shell script "find " & quoted form of payloadDir & " -name \\*.app"
	return POSIX file unzippedAppPath as alias
end unzipAppFromIPA

-- To install on iTunes, we pack the app back up in a .ipa and ask iTunes to open it
on copyAppToITunes(theApp)
	tell application "Finder"
		
		set appName to my userFriendlyNameForFile(theApp)
		
		set targetFolder to (folder of theApp as alias)
		set payloadPath to POSIX path of targetFolder & "Payload"
		set ipaPath to POSIX path of targetFolder & appName & ".ipa"
		
		if (gParanoidAboutFileDestruction is true) then
			try
				if (exists (POSIX file payloadPath as alias)) then
					display dialog "Sorry... \"" & payloadPath & "\" already exists, and I am afraid to destroy your data."
					return
				end if
				
				if (exists (POSIX file ipaPath as alias)) then
					display dialog "Sorry... \"" & payloadPath & "\" already exists, and I am afraid to destroy your data."
					return
				end if
			end try
		end if
		
		set payloadAppPath to payloadPath & "/" & appName & ".app"
		
		set copyCommand to "mkdir " & quoted form of payloadPath & "; " & "cp -R " & quoted form of POSIX path of theApp & " " & quoted form of payloadAppPath
		do shell script copyCommand
		
		set zipCommand to "ditto -c -k --sequesterRsrc --keepParent " & quoted form of POSIX path of payloadPath & " " & quoted form of ipaPath
		do shell script zipCommand
		open ipaPath as POSIX file
	end tell
end copyAppToITunes
