<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Gallery</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="Default.aspx">Home</a></li>
            <li class="active">Gallery</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- gallery coloum 3 -->
  <section class="ptb120">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-1.jpg" class="img-responsive" alt="gallery"/>
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>21</span>
              <h4 class="gallery-heading"><a href="images/gallery-1.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-2.jpg" class="img-responsive" alt="gallery"/>
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>50</span>
              <h4 class="gallery-heading"><a href="images/gallery-2.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-3.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>08</span>
              <h4 class="gallery-heading"><a href="images/gallery-3.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-5.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>22</span>
              <h4 class="gallery-heading"><a href="images/gallery-5.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-3.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>45</span>
              <h4 class="gallery-heading"><a href="images/gallery-3.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-2.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>30</span>
              <h4 class="gallery-heading"><a href="images/gallery-2.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-4.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>16</span>
              <h4 class="gallery-heading"><a href="images/gallery-4.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-2.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>18</span>
              <h4 class="gallery-heading"><a href="images/gallery-2.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6">
          <div class="gallery-block">
            <div class="gallery-img">
              <img src="images/gallery-5.jpg" class="img-responsive" alt="gallery">
            </div>
            <div class="overlay-bg"></div>
            <div class="gallery-dtl">
              <i class="fa fa-heart" aria-hidden="true"></i><span>25</span>
              <h4 class="gallery-heading"><a href="images/gallery-5.jpg" title="Weddlist Gallery">Elina &amp; Williams</a></h4>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
<!-- end gallery coloum 3 -->
</asp:Content>

