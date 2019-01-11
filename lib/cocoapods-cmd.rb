require 'cocoapods'

module CocoapodsScriptExec
    class ScriptExecutor
        def run(script)
            script = script || ""
            
            if script.empty?
                return
            end
            
            Pod::UI.puts "Running script..."
            print(`#{script}`)
        end
    end
end
