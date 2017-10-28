from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.forms import UserCreationForm
from .forms import RegisterForm, ProfileForm

from django.contrib.auth.models import User
from django.views.generic import UpdateView
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth.models import Group, User
from django.http import HttpResponse
from django.template import loader
from .models import *















# Create your views here.
def logout_view(request):
    '''Log out the user'''
    logout(request)
    return HttpResponseRedirect(reverse('main:index'))

##TEST
# def register(request):
#     '''Register new user'''
#     if request.method != 'POST':
#         # Display a blank registration form
#         form = RegisterForm(request.POST)
#
#         user_form = UserCreationForm(request.POST, instance=request.user)
#         UserProfile_form = RegisterForm(request.POST, instance=request.user)
#     else:
#         # Process a complete form
#         form = RegisterForm(data=request.POST)
#
#         user_form = UserCreationForm(request.POST, instance=request.user)
#         UserProfile_form = RegisterForm(request.POST, instance=request.user)
#
#
#
#         if form.is_valid() & RegisterForm.is_valid():
#             new_user = user_form.save()
#             UserProfile_form.save()
#
#          ###   new_user = form.save()
#             # Log in and redirect to home page
#             authenticated_user = authenticate(username=new_user.username, password = request.POST['password1'])
#             login(request, authenticated_user)
#
# #        if user_type == 'Business':
# #            return HttpResponseRedirect(reverse('main:business'))
# #        if user_type == 'Student':
# #            return HttpResponseRedirect(reverse('main:business'))
#
# #        else:
#         return HttpResponseRedirect(reverse('main:index'))
##ENDTEST



def register(request):

    if request.method == 'POST':
        form = RegisterForm(data=request.POST)
        if form.is_valid():



            user = form.save()
            profile = user.userprofile
            user_group = form.cleaned_data.get('user_type')
            profile.user_type = user_group
            profile.save()


          #  form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user_group = form.cleaned_data.get('user_type')
            user = authenticate(username = username, password = password)
            login(request, user)

            if user_group == '1':
                return HttpResponseRedirect(reverse('users:business'))

            elif user_group == '2':
        #        return redirect('student')
                return HttpResponseRedirect(reverse('users:student'))

            elif user_group == '3':
               # return redirect('tourist')
                return HttpResponseRedirect(reverse('users:tourist'))
            else:
                return redirect('main:index')
        else:
            print(RegisterForm.errors)

    else:
        form = RegisterForm()
    return render(request, 'users/register.html', {'form': form})
#    return HttpResponseRedirect(reverse('main:index'))


#def login(request):
#    if request.method == 'POST':
#        form = AuthenticationForm(request, data=request.POST)
#        if form.is_valid():
#            username = form.cleaned_data.get('username')
#            password = form.cleaned_data.get('password')
#            user_group = profile.user_type
#            user = authenticate(username=username, password=password)
#            login(request, user)
#            if user_group == '1':
#                return render(request, 'users/business.html')
#            elif user_group == '2':
#                return render(request, 'users/student.html')
#            elif user_group == '3':
#                return render(request, 'users/tourist.html')
#            else:
#                return redirect('main:index')
#    else:
#        form = AuthenticationForm(request)
#    return render(request, 'login/login.html', {'form': form})





def log_in(request):
    if request.method == 'POST':
        form = AuthenticationForm(data=request.POST)

        if form.is_valid():
            user = form.user_cache
            profile = user.userprofile
            user_group = profile.user_type



            form.clean()
            login(request, form.user_cache)



            if user_group == '1':
                return HttpResponseRedirect(reverse('users:business'))
            elif user_group == '2':
                return HttpResponseRedirect(reverse('users:student'))
            elif user_group == '3':
                return HttpResponseRedirect(reverse('users:tourist'))
            else:
                return redirect('main:contact')
    else:
        form = AuthenticationForm()

    return render(request, 'users/login.html', {'form' : form})












def business_view(request):
    return render(request, 'users/business.html')

def student_view(request):
    return render(request, 'users/student.html')

def tourist_view(request):
    return render(request, 'users/tourist.html')