from django.db import models

# Create your models here.
class Park(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()

    def __str__(self):
        return self.name

class Zoo(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()

    def __str__(self):
        return self.name

class Museum(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()

    def __str__(self):
        return self.name

class Restaurant(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()

    def __str__(self):
        return self.name

class Mall(models.Model):
    name = models.TextField()
    address = models.TextField()
    phone = models.TextField()
    emailAddress = models.TextField()

    def __str__(self):
        return self.name
