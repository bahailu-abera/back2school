from tkinter import HIDDEN
from turtle import color
from click import Choice
from django.db import models

# Create your models here.

class Applicant(models.Model):
    jobTitle=models.CharField(max_length=50,null=False,blank=False)
    username=models.CharField(max_length=20,unique=True,null=False,blank=False)
    email=models.EmailField(max_length=100,unique=True,default='@gmail.com',null=False,blank=False)
    jobApplied=models.CharField(max_length=50)
    resume = models.FileField(upload_to='resumes', null=True, blank=True)
class Client(models.Model):
    jobTitle=models.CharField(max_length=50,null=False,blank=False)
    organizationName=models.CharField(max_length=50,null=False,blank=False)
    username=models.CharField(max_length=20,unique=True,null=False,blank=False)
    email=models.EmailField(max_length=100,unique=True,default='@gmail.com',null=False,blank=False)
    postJob=models.TextField(default='post job here')
class ApplicantsRegisteration(models.Model):
    CHOICES=[
        ("ADDIS ABABAB",'ADDIS ABABA'),
        ("BAHIR DAR","BAHIR DAR"),
        ("HAWASSA","HAWASSA"),
    ]

    firstName=models.CharField(max_length=30)
    lastName=models.CharField(max_length=30)
    location=models.CharField(max_length=20,choices=CHOICES)
    username=models.CharField(max_length=30)


