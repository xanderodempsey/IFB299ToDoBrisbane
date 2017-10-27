"""Defines URL patterns for users"""
from django.conf.urls import url
from django.contrib.auth.views import login
from . import views
from django.contrib.auth import views as auth_views


urlpatterns = [
 # Login page
#url(r'^login/$', login, {'template_name': 'users/login.html'}, name='login'),

#url(r'^login/$', login, {'template_name': 'users/login.html'}, name='login'),

url(r'^login/$', views.log_in, name='login'),

# Logout page
url(r'^logout/$', views.logout_view, name='logout'),

# Register page
url(r'^register/$', views.register, name='register'),


# Business page
url(r'^business/$', views.business_view, name='business'),

# Student page
url(r'^student/$', views.student_view, name='student'),

# Tourist page
url(r'^tourist/$', views.tourist_view, name = 'tourist'),



 ]