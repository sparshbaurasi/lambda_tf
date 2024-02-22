lambda_function_handler = "lambda_function.lambda_handler"
lambda_memory_size = 512
lambda_runtime = "python3.10"
lambda_timeout = 3

lambda_functions= {
  Dev_environment_upscaler={
    source_code_file_location = "code/downscaler/downscaler.py"
    
    env_vars ={
      ENV = "dev"
    }
    tags = {
      "ENV" = "DEV"
      "Terraform" = "true"
    }
  }
}