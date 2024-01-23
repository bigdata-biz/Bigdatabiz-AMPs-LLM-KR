# Copy Pre-Downloaded LLM models
rm -rf ./models
mkdir models
cd models

cp -r /tmp/models/eng-sample/* .
tar -xvf ./embedding-model.tar
tar -xvf ./llm-model.tar
rm ./*.tar

# Copy Pre-Downloaded Translation models
rm -rf ~/.cache/huggingface/hub
mkdir -p ~/.cache/huggingface/hub
cp -r /tmp/models/translation-sample/* ~/.cache/huggingface/hub/
