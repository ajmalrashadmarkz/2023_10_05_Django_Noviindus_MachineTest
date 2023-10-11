from django.shortcuts import render
from django.views.generic import TemplateView
from shopapp.models import Category, Product
from django.views.generic.edit import CreateView

# Create your views here.


class HomePageView(TemplateView):
    template_name = "home.html"



class ProductCreateView(CreateView):  # new
    model = Product
    template_name = "product_new.html"
    fields = [
        "name",
        "slug",
        "description",
        "price",
        "category",
        "image",
        "stock",
        "available",
    ]


class CategoryCreateView(CreateView):  # new
    model = Category
    template_name = "category_new.html"
    fields = "__all__"
