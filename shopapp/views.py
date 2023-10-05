from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import render, get_object_or_404
from django.urls import reverse
from django.core.paginator import Paginator, EmptyPage, InvalidPage
from django.views.generic.edit import CreateView
from .models import Category, Product
from .forms import ProductForm, CategoryForm

# Create your views here.
# def index(request):
#     return HttpResponse("Hey am here")


def allProductCat(request, c_slug=None):
    c_page = None
    product_list = None
    if c_slug != None:
        c_page = get_object_or_404(Category, slug=c_slug)
        product_list = Product.objects.all().filter(category=c_page, available=True)
    else:
        product_list = Product.objects.all().filter(available=True)
    paginator = Paginator(product_list, 6)
    try:
        page = int(request.GET.get("page", "1"))
    except:
        page = 1
    try:
        products = paginator.page(page)
    except (EmptyPage, InvalidPage):
        products = paginator.page(paginator.num_pages)

    return render(request, "category.html", {"category": c_page, "products": products})


def proDetail(request, c_slug, product_slug):
    try:
        product = Product.objects.get(category__slug=c_slug, slug=product_slug)
    except Exception as e:
        raise e

    return render(request, "product.html", {"product": product})


def checkout(request):
    return render(request, "checkout.html")


class ProductCreateView(CreateView):  # new
    model = Product
    template_name = "item_new.html"
    fields = ("name",)


# class CatagoryCreateView(CreateView):  # new
#     model = CategoryForm
#     template_name = "catagery_new.html"
#     fields = "__all__"
