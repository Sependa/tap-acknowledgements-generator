
module CocoapodsAcknowledgementsGenerator
  Pod::HooksManager.register(:post_install) do |installer_context|
    # implementation
    root_path = installer_context.sandbox_root
    installer_context.umbrella_targets.each do |user_target|
      File.open(pod_acknowledgements_path, 'r+') do |f|
        lines = f.readlines[2..-2]
      end

      File.open(pod_acknowledgements_path, 'w+') do |f|
        f.write(lines.join)
      end

      target_path = root_path + "/Target Support Files/" + user_target.cocoapods_target_label + "/" + user_target.cocoapods_target_label + "-acknowledgements.markdown"
      Markup::Runner.new(target_path, :output => aboutFilePath, :force => true).generate_html!

      aboutFileContent = ''
      aboutSpecsFileContent = ''

      File.open(aboutFilePath, 'r+') do |f|
        aboutFileContent = f.read
      end

      File.open(aboutSpecsFilePath, 'r+') do |f|
        aboutSpecsFileContent = f.read
      end

      File.delete(aboutFilePath)
      File.delete(aboutSpecsFilePath)

      File.open(aboutFilePath, 'w+') do |f|
        f.write([aboutFileContent, "\n", aboutSpecsFileContent].join)
      end
    end
  end
end
