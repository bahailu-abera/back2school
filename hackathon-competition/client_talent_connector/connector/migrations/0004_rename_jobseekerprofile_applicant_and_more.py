# Generated by Django 4.0.4 on 2022-04-30 13:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('connector', '0003_rename_country_register_location'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='JobSeekerProfile',
            new_name='Applicant',
        ),
        migrations.RenameModel(
            old_name='ClientProfile',
            new_name='Client',
        ),
    ]