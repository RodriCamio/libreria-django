# Generated by Django 4.2.6 on 2023-11-06 06:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('libreria', '0002_rename_description_libro_descripcion'),
    ]

    operations = [
        migrations.RenameField(
            model_name='libro',
            old_name='image',
            new_name='imagen',
        ),
    ]
