from django.shortcuts import render

# Create your views here.

def index(request):
    '''The home page for main'''
    return render(request, 'main/index.html')