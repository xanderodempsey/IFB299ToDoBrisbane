# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-10-28 16:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('CityInformation', '0006_college'),
    ]

    operations = [
        migrations.CreateModel(
            name='Library',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('address', models.TextField()),
                ('phone', models.TextField()),
                ('emailAddress', models.TextField()),
            ],
        ),
    ]
