# install gsutil
# https://cloud.google.com/storage/docs/gsutil_install#deb
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt install -y apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt update && sudo apt install google-cloud-sdk

# teste
gcloud init

# globcover 2019
gsutil -m cp -r \
  "gs://earthenginepartners-hansen/GLCLU_2019/legend.xlsx" \
  "gs://earthenginepartners-hansen/GLCLU_2019/map/" \
  "gs://earthenginepartners-hansen/GLCLU_2019/strata/" \
  .
  
# mapbiomas v5
gsutil -m cp -r \
  "gs://mapbiomas-public/COLECAO/5/DOWNLOADS/COLECOES/ANUAL/" \
  "gs://mapbiomas-public/brasil/" \
  .
