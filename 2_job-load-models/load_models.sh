# Copy Pre-Downloaded LLM models
rm -rf ./models
mkdir models
rm -rf ~/.cache/huggingface/hub
mkdir -p ~/.cache/huggingface/hub

# Copy pre downloaded models
cd models
cp -r /data/cdsw-sample/models/eng-sample/* .
tar -xvf embedding-model.tar
tar -xvf llm-model.tar
rm embedding-model.tar
rm llm-model.tar

# Copy Pre-Downloaded Translation models
cd ~/.cache/huggingface/
cp /data/cdsw-sample/models/translation-sample/hub.tar .
tar -xvf hub.tar
tar hub.tar
