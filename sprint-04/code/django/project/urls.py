from django.urls import path
from .views import (
    PostListView,
    PostDetailView,
    PostCreateView,
    PostUpdateView,
    PostDeleteView,
    CommentView,
    KarmaView
    )

from . import views

urlpatterns = [
    path('', PostListView.as_view(), name='project-home'),
    path('post/<int:pk>/', PostDetailView.as_view(), name='post-detail'),
    path('post/new/', PostCreateView.as_view(), name='post-create'),
    path('post/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('post/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
    path('about/', views.about, name='project-about'),
    path('karma/', KarmaView.as_view(), name='karma'),
    path('post/<int:pk>/comment', CommentView.as_view(), name='add_comment')
]