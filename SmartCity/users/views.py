from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.forms import UserCreationForm
from .forms import RegisterForm

from django.contrib.auth.models import User
from django.views.generic import UpdateView

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
            profile = form.save(commit=False)
            profile.user = request.user
            profile.save()

          #  form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user_group = form.cleaned_data.get('user_type')
            user = authenticate(username = username, password = password)
            login(request, user)

            if user_group == 'Business':
                return render(request, 'users/business.html')
            elif user_group == 'Student':
                return render(request, 'users/student.html')
            elif user_group == 'Tourist':
                return render(request, 'users/tourist.html')
            else:
                return redirect('main:index')
        else:
            print(RegisterForm.errors)

    else:
        form = RegisterForm()
    return render(request, 'users/register.html', {'form': form})
#    return HttpResponseRedirect(reverse('main:index'))




def business_view(request):
    return render(request, 'users/business.html')

def student_view(request):
    return render(request, 'users/student.html')

def tourist_view(request):
    return render(request, 'users/tourist.html')