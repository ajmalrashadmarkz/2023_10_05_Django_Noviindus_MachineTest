from django.contrib import admin
from django.urls import path
from . import views


app_name = "shopapp"
from django_project import settings

urlpatterns = [
    path("", views.allProductCat, name="allProductCat"),
    path("<slug:c_slug>/", views.allProductCat, name="product_by_category"),
    path("<slug:c_slug>/<slug:product_slug>/", views.proDetail, name="prodCatdetail"),
    path("checkout/", views.checkout, name="checkout"),
]
