from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth.forms import UserCreationForm

# Create your views here.
def logout_view(request):
    '''Log out the user'''
    logout(request)
    return HttpResponseRedirect(reverse('main:index'))

def register(request):
    '''Register new user'''
    if request.method != 'POST':
        # Display a blank registration form
        form = UserCreationForm()
    else:
        # Process a complete form
        form = UserCreationForm(data=request.POST)

    if form.is_valid():
        new_user = form.save()
        # Log in and redirect to home page
        authenticated_user = authenticate(username=new_user.username, password = request.POST['password1'])
        login(request, authenticated_user)
        return HttpResponseRedirect(reverse('main:index'))

    context = {'form': form}
    return render(request, 'users/register.html', context)