locals {
      config = merge([
        for file in fileset(path.cwd, "config/*.yaml") : {
            for k, v in yamldecode(file(file)) : k => v
        }
      ]...)    
}