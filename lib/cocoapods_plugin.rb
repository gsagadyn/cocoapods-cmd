require_relative 'cocoapods-cmd'

module CocoapodsScriptExec
    Pod::HooksManager.register('cocoapods-cmd', :pre_install) do |context, options|
        ScriptExecutor.new().run(options[:pre_install])
    end
    
    Pod::HooksManager.register('cocoapods-cmd', :post_install) do |context, options|
        ScriptExecutor.new().run(options[:post_install])
    end
end
