# Generated by Django 4.0.4 on 2022-04-30 13:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('connector', '0002_register'),
    ]

    operations = [
        migrations.RenameField(
            model_name='register',
            old_name='country',
            new_name='location',
        ),
    ]
