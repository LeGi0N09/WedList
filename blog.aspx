<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- page banner -->
  <section id="page-banner" class="page-banner" style="background-image: url('images/banner.jpg');"> 
    <div class="overlay-bg"></div>
    <div class="container">
      <div class="banner-dtl text-center">
        <h2 class="banner-heading">Latest News</h2>
        <div class="breadcrumb-block">
          <ol class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Blog</li>
          </ol>
        </div>
      </div>
    </div>
  </section>
<!-- end page banner -->
<!-- blog main page -->
  <section class="ptb120">
    <div class="container">
      <div class="row">
        <div class="col-md-11">
          <div class="blog-block">
            <div class="blog-img">
              <img src="images/blog-page/blog-1.jpg" class="img-responsive" alt="blog-img"/>
              <div class="meta-tag">February 1, 2023</div>
            </div>
            <div class="blog-dtl">
              <h4 class="blog-heading">Sed ut perspiciatis unde omnis iste natus error sit voluptat antium</h4>
              <ul class="meta-tags">
                <li>February 8, 2023</li>
                <li><a href="#">By Swedon Smith</a></li>
                <li>No Comments</li>
              </ul>              
              <p class="blog-dis">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut.</p>
              <a href="#" class="btn btn-pink">Read More</a>
            </div>
          </div>
          <div class="blog-block">
            <div class="blog-img">
            <img src="images/blog-page/blog-2.jpg" class="img-responsive" alt="blog-img"/>
              <div class="meta-tag">February 18, 2023</div>
            </div>
            <div class="blog-dtl">
              <h4 class="blog-heading">Ut enim ad minima veniam quis nostrum exercitationem ullam corp</h4>
              <ul class="meta-tags">
                <li>February 28, 2023</li>
                <li><a href="#">By Swedon Smith</a></li>
                <li>No Comments</li>
              </ul>                 
              <h6 class="blog-dis">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</h6>
              <a href="#" class="btn btn-pink">Read More</a>
            </div>
          </div>
          <div class="blog-block">
            <div class="blog-img">
              <img src="images/blog-page/blog-3.jpg" class="img-responsive" alt="blog-img"/>
              <div class="meta-tag">March 8, 2023</div>
            </div>
            <div class="blog-dtl">
              <h4 class="blog-heading">Excepteur sint occaecat cupidatat non proident sunt in culpa qui</h4>
              <ul class="meta-tags">
                <li>March 18, 2023</li>
                <li><a href="#">By Swedon Smith</a></li>
                <li>No Comments</li>
              </ul>                 
              <p class="blog-dis">Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia conseuntur magni dolores eos qui ratione voluptatem sequi nesciunt dolor sit amet consectetur.</p>
              <a href="#" class="btn btn-pink">Read More</a>
            </div>
          </div>
          <div class="blog-block">
            <div class="blog-img">
             <img src="images/blog-page/blog-4.jpg" class="img-responsive" alt="blog-img"/>
              <div class="meta-tag">March 10, 2017</div>
            </div>
            <div class="blog-dtl">
              <h4 class="blog-heading">quis nostrud exercitation ullamco laboris nisi commodo consequat</h4>
              <ul class="meta-tags">
                <li>March 28, 2023</li>
                <li><a href="#">By Swedon Smith</a></li>
                <li>No Comments</li>
              </ul>                 
              <p class="blog-dis">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
              <a href="#" class="btn btn-pink">Read More</a>
            </div>
          </div>
          <div class="blog-block">
            <div class="blog-img">
              <img src="images/blog-page/blog-5.jpg" class="img-responsive" alt="blog-img"/>
              <div class="meta-tag">March 10, 2023</div>
            </div>
            <div class="blog-dtl">
              <h4 class="blog-heading">beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia</h4>
              <ul class="meta-tags">
                <li>April 8, 2023</li>
                <li><a href="#">By Swedon Smith</a></li>
                <li>No Comments</li>
              </ul>                 
              <p class="blog-dis">Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
              <a href="#" class="btn btn-pink">Read More</a>
            </div>
          </div>
         <%-- <div class="pagination">
            <ul>
              <li class="active"><a href="#" class="btn btn-default">1</a></li>
              <li><a href="#" class="btn btn-default">2</a></li>
              <li><a href="#" class="btn btn-default">3</a></li>
              <li><a href="#" class="btn btn-default">4</a></li>
            </ul>
          </div>--%>
        </div>
        <%--<div class="col-md-3">
          <div class="blog-sidebar">
            <div class="widget blog-search text-right">
              <form>
                <input type="search" id="search" class="form-control" placeholder="Enter Keyword"/>
                <button type="button" class="btn btn-pink">Go</button>
              </form>
            </div> 
            <div class="widget">
              <h4 class="blog-sidebar-heading">Blog Categories</h4>
              <ul>
                <li><a href="#">Wedding Venue <span>(10)</span></a></li>
                <li><a href="#">Wedding Cakes <span>(07)</span></a></li>
                <li><a href="#">Wedding Dress <span>(15)</span></a></li>
                <li><a href="#">Transport <span>(13)</span></a></li>
                <li><a href="#">Jewelery <span>(05)</span></a></li>
              </ul>
            </div>
            <div class="widget blog-latest-news">
              <h4 class="blog-sidebar-heading">Latest News</h4>
              <div class="blog-news">
                <div class="blog-news-img">
                  <img src="images/blog-page/latest-news-1.jpg" class="img-responsive" alt="latest-news">
                </div>
                <div class="blog-news-dtl">
                  <h6 class="blog-news-dtl-heading"><a href="#">Veritatis et qsrch beatae vitae</a></h6>
                  <div class="date">March 13, 2017</div>
                </div>
              </div>
              <div class="blog-news">
                <div class="blog-news-img">
                  <img src="images/blog-page/latest-news-2.jpg" class="img-responsive" alt="latest-news">
                </div>
                <div class="blog-news-dtl">
                  <h6 class="blog-news-dtl-heading"><a href="#">Numqua eius modi tempora incid</a></h6>
                  <div class="date">March 13, 2017</div>
                </div>
              </div>
              <div class="blog-news">
                <div class="blog-news-img">
                  <img src="images/blog-page/latest-news-3.jpg" class="img-responsive" alt="latest-news">
                </div>
                <div class="blog-news-dtl">
                  <h6 class="blog-news-dtl-heading"><a href="#">Vel illum qui dolo eum fugiat</a></h6>
                  <div class="date">March 13, 2017</div>
                </div>
              </div>
            </div>
            <div class="widget popular-tab">
              <h4 class="blog-sidebar-heading">Popular Tags</h4>
              <div class="tabs">
                <a href="#" class="btn btn-default"><span class="badge">Transport</span></a>
                <a href="#" class="btn btn-default"><span class="badge">Venue</span></a>
                <a href="#" class="btn btn-default"><span class="badge">Dress</span></a>
                <a href="#" class="btn btn-default"><span class="badge">Jewelery</span></a>
                <a href="#" class="btn btn-default"><span class="badge">Photography</span></a>
              </div>  
            </div>
            <div class="widget">
              <h4 class="blog-sidebar-heading">Our Archives</h4>
              <ul>
                <li><a href="#">April<span>(05)</span></a></li>
                <li><a href="#">March<span>(13)</span></a></li>
                <li><a href="#">January<span>(07)</span></a></li>
                <li><a href="#">December<span>(02)</span></a></li>
              </ul>
          </div>
    </div>
      </div>--%>
   </div>
        </div>
  </section>
<!-- end blog main page -->
</asp:Content>

