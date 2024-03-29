"""SmartCity URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.conf.urls import include, url
from django.contrib import admin
from django.conf.urls import include, url
from django.contrib import admin
from django.utils.translation import ugettext_lazy as _
from django.conf import settings
from django.conf.urls import include, url

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'', include('main.urls', namespace='main')),
    url(r'^users/', include('users.urls', namespace='users')),
    url(r'^CityInformation/', include('CityInformation.urls', namespace='CityInformation')),

]

# Change admin site title
admin.site.site_header = _("SmartCity Administration")
admin.site.site_title = _("SmartCity Admin")



#debugging#
if settings.DEBUG:
    import debug_toolbar
    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns


