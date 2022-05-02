from multiprocessing import context
import os
from django.conf import settings
from django.shortcuts import render
from django.http import HttpResponse
import tensorflow as tf

from media.extractor import resumeExtractor 
from .apps import ConnectorConfig
from django.http import HttpResponseRedirect
from django.shortcuts import render
from .forms import UploadFileForm
import textract
from django.core.files.storage import FileSystemStorage
from client_talent_connector import settings 
# Imaginary function to handle an uploaded file.
# from somewhere import handle_uploaded_file


dict_model=ConnectorConfig.dict_model
model=ConnectorConfig.model

text= '''
You will have the opportunity to join an artificial intelligence (AI) company for life sciences, that supports the
industry in bringing the right drug to the right patient at speed.
THE ROLE
By joining an established team of data scientists as an NLP specialist, you will:
Work closely with both data engineers and other data scientists
Help model unstructured data sets
You will be creating and delivering Data Science/NLP projects regularly.
You will be effectively collaborating with colleagues to solve business problems.
Build NLP processing pipelines
Work on conducting proper testing to remove bias
Apply state of the art NLP solutions to solve real-world problems
Your Skills And Experience
To be a fit for this position, you need to have:
Strong knowledge of working with Python, SQL, and Python libraries
Proven industry experience working with NLP tools like BERT, NLTK, GenSim, or similar
Knowledge of Public Clouds, ideally AWS is nice to have
Have a background in computational linguistics, text mining, topic modeling, semantic analysis or text classification, or similar
Fluency in English is a must

'''

predicted=model.predict(tf.convert_to_tensor([text])).argmax()

sequences=[ 
{
    "category":dict_model[predicted],
    "name":"Artificial intelligence"
}
]

def home(request):
    context={'sequences':sequences}
    

    return  render(request,"connector/home.html",context)

def upload(request):
    
    if request.method=='POST':
        uploaded_file=request.FILES['file-name']
        fs=FileSystemStorage()
        
        fs.save(uploaded_file.name,uploaded_file)
        file_path=os.path.join(settings.MEDIA_ROOT,uploaded_file.name)
        cleaned_resume=resumeExtractor(file_path=file_path)
        index = model.predict(tf.convert_to_tensor([cleaned_resume])).argmax()
        predicted=dict_model[index]
    
    return render(request,'connector/home.html',context={'predicted':predicted})






























