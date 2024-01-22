-- Open trackpad settings
do shell script "open \"x-apple.systempreferences:com.apple.Trackpad-Settings.extension\""

tell application "System Events"
	tell application process "System Settings"
		tell group 1 of group 2 of splitter group 1 of group 1 of window 1
			
			-- Select "Scroll & Zoom" tab
			repeat until tab group 1 exists
				delay 0
			end repeat
			tell tab group 1
				click radio button 2
			end tell
			
			-- Toggle "Natural scrolling" flag
			repeat until group 1 of scroll area 1 exists
				delay 0
			end repeat
			tell group 1 of scroll area 1
				click checkbox 1
			end tell
			
			delay 0.1
			tell application "System Settings"
				quit
			end tell
			
		end tell
	end tell
end tell
