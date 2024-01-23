"""
Model source (License:cc-by-4.0)
  NHNDQ/nllb-finetuned-en2ko: https://huggingface.co/NHNDQ/nllb-finetuned-en2ko
  NHNDQ/nllb-finetuned-ko2en: https://huggingface.co/NHNDQ/nllb-finetuned-ko2en
"""

from transformers import pipeline
import re

trans_model_en2ko = pipeline('translation'
, model='NHNDQ/nllb-finetuned-en2ko'
, src_lang='eng_Latn'
, tgt_lang='kor_Hang'
, max_length=512)

trans_model_ko2en = pipeline('translation'
, model='NHNDQ/nllb-finetuned-ko2en'
, src_lang='kor_Hang'
, tgt_lang='eng_Latn'
, max_length=512)

def check_kr(text):
    kr_text = re.sub(r"[^ㄱ-ㅣ가-힣\s]", "", text.replace(' ', ''))
    return len(kr_text)!=0

def trans_ko2en(ko_text, max_length=512):
	output = trans_model_ko2en(ko_text, max_length=max_length)
	return output[0]['translation_text']

def trans_en2ko(en_text, max_length=512):
	output =trans_model_en2ko(en_text, max_length=max_length)
	return output[0]['translation_text']