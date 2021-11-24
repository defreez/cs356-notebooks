FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-runtime

# For colab local runtime
RUN pip install jupyter_http_over_ws && jupyter serverextension enable --py jupyter_http_over_ws

# For FastAI course
RUN pip install fastbook graphviz wandb rise

CMD jupyter notebook \
	--ip 0.0.0.0 --no-browser --allow-root \
	--NotebookApp.allow_origin='https://colab.research.google.com' \
	--port=8888 --NotebookApp.port_retries=0 \
	--NotebookApp.notebook_dir='/notebooks'
