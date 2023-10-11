from django.urls import path
from .views import HomePageView
from .views import ProductCreateView
from .views import CategoryCreateView

urlpatterns = [
    path("", HomePageView.as_view(), name="home"),
    path("product/new/", ProductCreateView.as_view(), name="product_new"),
    path("catagory/new", CategoryCreateView.as_view(), name="category_new"),
]