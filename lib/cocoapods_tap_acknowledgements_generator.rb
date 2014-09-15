module CocoapodsTapAcknowledgementsGenerator
	VERSION = "0.0.1"

	Pod::HooksManager.register(:post_install) do |installer_context|
		# implementation
		puts "Wat?"
	end
end
