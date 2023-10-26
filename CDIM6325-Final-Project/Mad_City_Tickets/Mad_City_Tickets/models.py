from django.db import models


class Venue(models.Model):
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=50)


class Event(models.Model):
    name = models.CharField(max_length=50)
    date = models.DateField()
    time = models.TimeField()
    cost = models.IntegerField()


class Account(models.Model):
    email = models.CharField(max_length=200)
