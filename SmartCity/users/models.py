from django.db import models
from django.contrib.auth.models import User, Group
from django.dispatch import receiver
from django.db.models.signals import post_save
from django import forms


# Create your models here.

ADMIN = 0
BUSINESS = 1
STUDENT = 2
TOURIST = 3
class UserProfile(models.Model):

    user_choices = ( (ADMIN, 'Admin'),
            (BUSINESS, 'Business'),
            (STUDENT, 'Student'),
            (TOURIST, 'Tourist'),
            )



    # Link UserProfile to User model
  ##  user = models.OneToOneField(User, on_delete = models.CASCADE)
    user = models.OneToOneField(User)

    email = models.EmailField()

    # Add attributes to the user model
    user_type = models.PositiveSmallIntegerField(choices = user_choices, null = True, blank = True)

    def __str__(self):
        return self.user.username





@receiver( post_save, sender = User)
def create_user_profile( sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user = instance)

@receiver( post_save, sender = User)
def save_user_profile(sender, instance, **kwargs):
    instance.userprofile.save()



