from django import forms
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.forms import ModelChoiceField
from django.contrib.auth.models import User, Group
from .models import UserProfile


##TEST
# class UserForm(forms.ModelForm):
#     password = forms.CharField(widget=forms.PasswordInput())
#
#     class Meta:
#         model = User
#         fields = ('username', 'email', 'password')
#
# class UserProfileForm(forms.ModelForm):
#     class Meta:
#         model = UserProfile
#         fields = ('user_type',)
##END TEST




class RegisterForm(UserCreationForm):

    first_name = forms.CharField(max_length=50, required=False, help_text='Not required.')
    last_name = forms.CharField(max_length=50, required=False, help_text='Not required.')
    email = forms.EmailField(max_length=300, required=True, help_text='Please input a valid email address.')

    user_types = ((1, 'Business'), (2, 'Student'), (3, 'Tourist'))

    user_type = forms.ChoiceField(choices = user_types)

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'user_type', 'password1', 'password2',)



class ProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfile
        fields = ('user_type',)