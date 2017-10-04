from django.conf.urls import url,include
from django.views.generic import ListView, DetailView
from CityInformation.models import Park, Zoo, Museum, Restaurant, Mall
from . import views

urlpatterns = [ url(r'^$', views.InfoList.as_view(), name ='InfoList'),
                url(r'^$', views.index, name='index'),]
