# Clear out any existing checked out models
rm -rf ./models
mkdir models
cd models

# Copy pre downloaded models
cp -r /tmp/models/eng-sample/* .

# Decomp & rm tar files
tar -xvf ./embedding-model.tar
tar -xvf ./llm-model.tar
rm ./*.tar
cd ..