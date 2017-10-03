from django.shortcuts import render
from django.views.generic import ListView
from CityInformation.models import *

# Create your views here.
def index(request):
    return render(request, 'templates/CityInformation/CityInformation.html')

class InfoList(ListView):
    context_object_name = 'city_info_list'
    template_name = 'CityInformation/CityInformation.html'
    queryset = Park.objects.all()

    def get_context_data(self, **kwargs):
        context = super(InfoList, self).get_context_data(**kwargs)
        context['parks'] = self.queryset
        context['zoos'] = Zoo.objects.all()
        context['museums'] = Museum.objects.all()
        context['restaurants'] = Restaurant.objects.all()
        context['malls'] = Mall.objects.all()
        return context
