'''Defines URL patterns for main'''

from django.conf.urls import url
from . import views

urlpatterns = [
 # Home page
url(r'^$', views.index, name='index'),
url(r'^contact/$', views.contact, name='contact'),
url(r'^faq/$', views.faq, name='faq')


]