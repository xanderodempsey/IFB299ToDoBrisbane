from django.db import models

# Create your models here.
class Park(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Zoo(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Museum(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Restaurant(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Mall(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Hotel(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Industry(models.Model):
    name = models.TextField()
    address = models.TextField()
    type = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class College(models.Model):
    name = models.TextField()
    address = models.TextField()
    departments = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name

class Library(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()
    latitude = models.TextField(blank=True)
    longitude = models.TextField(blank=True)

    def __str__(self):
        return self.name