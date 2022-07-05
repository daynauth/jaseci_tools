from transformers import AutoTokenizer, AutoModelForTokenClassification

model_path = 'prajjwal1/bert-tiny'
tokenizer = AutoTokenizer.from_pretrained(model_path)
model = AutoModelForTokenClassification.from_pretrained(model_path)