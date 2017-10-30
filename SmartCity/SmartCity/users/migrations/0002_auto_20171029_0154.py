# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2017-10-28 15:54
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userprofile',
            name='email',
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='user_type',
            field=models.CharField(choices=[(0, 'Admin'), (1, 'Business'), (2, 'Student'), (3, 'Tourist')], max_length=50),
        ),
    ]
