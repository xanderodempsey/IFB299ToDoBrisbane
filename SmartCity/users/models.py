from django.db import models
from django.contrib.auth.models import User
from django.dispatch import receiver
from django.db.models.signals import post_save
from django import forms


# Create your models here.

ADMIN = 0
BUSINESS = 1
STUDENT = 2
TOURIST = 3
class UserProfile(models.Model):

    user_choices = ( (0, 'Admin'),
            (1, 'Business'),
            (2, 'Student'),
            (3, 'Tourist'),
            )



    # Link UserProfile to User model
  ##  user = models.OneToOneField(User, on_delete = models.CASCADE)
    user = models.OneToOneField(User, on_delete=models.CASCADE)




    # Add attributes to the user model
    user_type = models.CharField(max_length = 50,
                                 choices = user_choices,
                               #  default = 'Business',
                                 blank = False)

    def __str__(self):
        return self.user.username





@receiver( post_save, sender = User)
def create_user_profile( sender, instance, created, **kwargs):
    if created:
        UserProfile.objects.create(user = instance)
    instance.userprofile.save()


#@receiver( post_save, sender = User)
#def save_user_profile(sender, instance, **kwargs):
#    instance.userprofile.save()



