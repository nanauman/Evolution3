from django.views.generic import TemplateView


class HomePageView(TemplateView):
    template_name = 'home.html'


class EventPageView(TemplateView):
    template_name = 'event.html'


class VenuePageView(TemplateView):
    template_name = 'venue.html'


class VcalPageView(TemplateView):
    template_name = 'vcal.html'


class CartPageView(TemplateView):
    template_name = 'cart.html'


class AccountPageView(TemplateView):
    template_name = 'account.html'


class DrvenuePageView(TemplateView):
    template_name = 'drvenue.html'


class BratsPageView(TemplateView):
    template_name = 'brats.html'


class MajesticPageView(TemplateView):
    template_name = 'majestic.html'


class BowlPageView(TemplateView):
    template_name = 'bowl.html'


class SylveePageView(TemplateView):
    template_name = 'sylvee.html'


class OrpheumPageView(TemplateView):
    template_name = 'orpheum.html'
