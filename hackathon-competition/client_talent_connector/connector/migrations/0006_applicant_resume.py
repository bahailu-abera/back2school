# Generated by Django 4.0.4 on 2022-04-30 13:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('connector', '0005_rename_register_applicantsregisteration'),
    ]

    operations = [
        migrations.AddField(
            model_name='applicant',
            name='resume',
            field=models.FileField(blank=True, null=True, upload_to='resumes'),
        ),
    ]
