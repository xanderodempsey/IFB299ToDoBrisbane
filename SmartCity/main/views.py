from django.shortcuts import render

# Create your views here.

def index(request):
    '''The home page for main'''
    return render(request, 'main/index.html')

def contact(request):
    '''The contact page'''
    return render(request, 'main/contact.html')

def faq(request):
    '''The faq page'''
    return render(request, 'main/faq.html')