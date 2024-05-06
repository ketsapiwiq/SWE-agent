
# docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/app sweagent/swe-agent-run:latest 
python run.py --image_name=sweagent/swe-agent:latest --model_name gpt4  --data_path "./my_issue.md" --repo_path "./" --config_file "config/custom.yaml" --apply_patch_locally --environment_setup="environment.yml"
# --environment_setup "/app/setup_env.sh"