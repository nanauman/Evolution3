from django.urls import path, include
from . import views


urlpatterns = [
    path('', views.HomePageView.as_view(), name='home'),
    path('event/', views.EventPageView.as_view(), name='event'),
    path('venue/', views.VenuePageView.as_view(), name='venue'),
    path('vcal/', views.VcalPageView.as_view(), name='vcal'),
    path('cart/', views.CartPageView.as_view(), name='cart'),
    path('account/', views.AccountPageView.as_view(), name='account'),
    path('drvenue/', views.DrvenuePageView.as_view(), name='drvenue'),
    path('brats/', views.BratsPageView.as_view(), name='brats'),
    path('majestic/', views.MajesticPageView.as_view(), name='majestic'),
    path('bowl/', views.BowlPageView.as_view(), name="bowl"),
    path('sylvee/', views.SylveePageView.as_view(), name="sylvee"),
    path('orpheum/', views.OrpheumPageView.as_view(), name="orpheum"),

]
