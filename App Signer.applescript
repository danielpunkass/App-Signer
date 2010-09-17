-- Erica Sadun, http://ericasadun.com
-- iPhone Developer's Cookbook, 3.0 Edition
-- BSD License, Use at your own risk
--
--
-- save in Script Editor as Application
-- drag files to its icon in Finder

on open file_items
	-- Set the prompt to match the number of items
	set which_choice to "How do you want to sign this item?"
	if (count file_items) is greater than 1 then set which_choice to "How do you want to sign these items?"
	
	-- Choose how to sign: Custom, default developer, or default distribution
	display dialog which_choice buttons {"Other", "Developer", "Distribution"} default button 1
	set which_option to button returned of result
	
	-- Initialize the custom text, i.e. additional keychain matching
	set custom_text to ""
	
	-- For custom matching, solicit text and a certificate style (dev/distro)
	if which_option is "Other" then
		set new_choice to which_choice & " Enter custom disambiguation text, e.g. for 'iPhone Distribution: Evil Labs', enter Evil Labs and click Distribution. Avoid typos and match case."
		set get_text to display dialog new_choice buttons {"Cancel", "Developer", "Distribution"} default answer ""
		set which_option to button returned of get_text
		set custom_text to text returned of get_text
	end if
	
	-- Only perform the signing if the user selected Developer or Distribution
	if which_option is not "Cancel" then
		repeat with this_item in file_items
			-- Determine whether the item has an .app extension. If not, complain and skip
			set the_file_name to (name of (info for alias this_item))
			set extension_offset to offset of "." in the_file_name
			set file_extension to ""
			if (extension_offset > 0) then set file_extension to text (extension_offset + 1) thru (length of the_file_name) of the_file_name
			if file_extension is not "app" then
				display dialog (the_file_name & " is not an .app file")
			else
				try
					perform_sign(this_item, which_option, custom_text)
				on error errmesg number errn
					display dialog errmesg
				end try
			end if
		end repeat
	end if
end open

to perform_sign(this_item, which_option, which_text)
	
	-- retrieve the item path for the .app bundle
	set the_path to POSIX path of this_item
	
	-- prepare any custom text portion
	if which_text is "" then
		set custom_text to ""
	else
		set custom_text to ": " & which_text
	end if
	
	-- create the shell command
	set unix_command to "/bin/bash -c 'export CODESIGN_ALLOCATE=/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/codesign_allocate; /usr/bin/codesign -f -s \"iPhone " & which_option & custom_text & "\" \"" & the_path & "\"' 2>&1"
	display dialog unix_command
	-- retrieve any results of executing the command
	set command_result to do shell script unix_command
	
	-- on success, show the successful results (errors are handled in the try block above)
	set user_results to "Signing " & (name of (info for this_item)) & " with " & which_option & " Certificate

" & command_result
	display dialog user_results
end perform_sign
