<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>International Eats Restaurant COMP3340 Project Team 25</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
 <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Main CSS -->
    <link rel="stylesheet" href="css/main.css">
<!-- Font Awesome -->
    <script src="js/all.js"></script>
<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Mr+Dafoe&display=swap" rel="stylesheet">
<!-- Magnific popup -->
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css">

</head>
    
<!------------------------------------------------------------------------------------------------------------->
    
<!-- Body Starts -->    
<body>

<!--Header Section-->
<header id="header">
    <div class="container">
        <div class="row height-90 align-items-center justify-content-center">
            <div class="col">
               
                <div class="banner text-center">
                    <h1 class="display-1 text-capitalize w-50 mx-auto">
                        <small>International Eats</small>
                        <strong class="primary-color">Restaurant</strong>                    
                    </h1>        
                    <a href="restaurant.php" class="btn main-btn la-btn my-4 text-capitalize">Order Now</a>
                </div>
                
            </div>
        </div>
    </div>
    <a href="#special-items" class="btn header-link primary-color"><span class="i fas fa-arrow-down"></span></a>
</header>
<!--End of Header Section-->

<!-------------------------------------------------------------------------------------------------------------->

<!--Navigation Bar-->

<nav class="navbar navbar-expand-lg">
    <a href="index.php" class="navbar-brand text-uppercase primary-color">International &nbsp; Eats</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
        <div class="toggler-btn">
            <div class="bar bar1"></div>
            <div class="bar bar2"></div>
            <div class="bar bar3"></div>
        </div>
    </button> 
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="navbar-nav mx-auto head-text">
            <li class="nav-item">
                <a href="#special-items" class="nav-link text-capitalize">Gallery</a>
            </li>
            <li class="nav-item">
                <a href="#menu" class="nav-link text-capitalize">Special</a>
            </li>
            <li class="nav-item">
                <a href="#about" class="nav-link text-capitalize">About</a>
            </li>
            <li class="nav-item">
                <a href="#reviews" class="nav-link text-capitalize">Reviews</a>
            </li>
            <li class="nav-item">
                <a href="#contact" class="nav-link text-capitalize">Contact</a>
            </li>
        </ul>
    <form class="form-inline d-none d-lg-block mr-5">
        <ul class="navbar-nav mx-auto">
          <li><a href="restaurant.php" class="btn nav-btn text-capitalize text-cursive">Food Items</a></li>
            <?php
            if(empty($_SESSION["user_id"])) 
            {
              // if user is not login
              echo '<li><a href="login.php" class="btn nav-btn text-capitalize text-cursive">login/signup</a></li>';
            }
            else
            {
              //if user is login
              echo '<li"><a href="your_orders.php" class="btn nav-btn text-capitalize text-cursive">My_Orders</a></li>';
              echo '<li"><a href="logout.php" class="btn nav-btn text-capitalize text-cursive">logout</a></li>';
            }
            ?>            
        </ul>
    </form>
    </div>
</nav>

<!--End of Navigation Bar-->


<!------------------------------------------------------------------------------------------------------------->

<!--Menu Items Section-->

<section class="py-5" id="special-items">
    <div class="container my-5">
        <div class="row parent-container">
<!--Menu Item1-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn1.jpg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn1.jpg">
                       <h1 class="text-uppercase text-center item-link px-3">Burger & Fries</h1>
                   </a>
               </div>
           </div>
<!--Menu Item2-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn2.jpg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn2.jpg">
                       <h1 class="text-uppercase text-center item-link px-3">Beef Champ</h1>
                   </a>
               </div>
           </div>
<!--Menu Item3-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn3.jpg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn3.jpg">
                       <h1 class="text-uppercase text-center item-link px-3">Mutton Champ</h1>
                   </a>
               </div>
           </div>
<!--Menu Item4-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn4.jpg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn4.jpg">
                       <h1 class="text-uppercase text-center item-link px-3">Milano Pizza</h1>
                   </a>
               </div>
           </div>                                 
<!--Menu Item5-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn5.jpg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn5.jpg">
                       <h1 class="text-uppercase text-center item-link px-3">Reshmi Kebab</h1>
                   </a>
               </div>
           </div>                                 
<!--Menu Item6-->
           <div class="col-10 mx-auto col-sm-6 col-lg-4 my-3">
               <div class="item-container">
                   <img src="img\mn6.jpeg" class="img-fluid img-thumbnail item-img" alt="menu item">
                   <a href="img\mn6.jpeg">
                       <h1 class="text-uppercase text-center item-link px-3">Chicken Shawarma</h1>
                   </a>
               </div>
           </div>                                 
        </div>
    </div>
</section>

<!--End of Menu Items Section-->

<!------------------------------------------------------------------------------------------------------------->

<!--Menu product Section-->

<section id="menu" class="py-5 my-5">
    <div class="container">
        <div class="row">
          
          
           <!--Start of first Coloumn-->
            <div class="col-md-6">

<!-------------------------------------------->          

            <!--Title-->
                <div class="row">
                    <div class="col">
                        <h1 class="primary-color text-uppercase">Soups</h1>
                    </div>
                </div>
            <!--End of Title-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Chicken Soup</h2>
                       <h4 class="text-muted">Chicken, Carrot, Barley</h4>
                    </div>
                </div>
            <!--End of Single Item-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3 special">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Special Soup</h2>
                       <h4 class="text-muted">Chicken, Carrot, Barley, Pepper, Egg</h4>
                    </div>
                    <h3 class="special-text text-capitalize">Chef Speciality</h3>
                </div>
            <!--End of Single Item1-->

<!-------------------------------------------->           
            
            <!--Title-->
                <div class="row">
                    <div class="col">
                        <h1 class="primary-color text-uppercase">karahi</h1>
                    </div>
                </div>
            <!--End of Title-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Mutton Karahi</h2>
                       <h4 class="text-muted">Mutton, Yogurt, Round Chili, Mutton Masala</h4>
                    </div>
                </div>
            <!--End of Single Item-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3 special">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Chicken Karahi</h2>
                       <h4 class="text-muted">Chicken, Karahi Masala, Barley, Pepper, Yogurt</h4>
                    </div>
                    <h3 class="special-text text-capitalize">Chef Speciality</h3>
                </div>
            <!--End of Single Item2-->

<!-------------------------------------------->          

            </div>
            <!--End of first coloumn-->            

<!-------------------------------------------------------------------------------------------------------------->          

            <!--Start of second coloumn-->     
            <div class="col-md-6">
<!-------------------------------------------->          

            <!--Title-->
                <div class="row">
                    <div class="col">
                        <h1 class="primary-color text-uppercase">Biryani & Rice</h1>
                    </div>
                </div>
            <!--End of Title-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3 special">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Fried Rice</h2>
                       <h4 class="text-muted">Chicken, Carrot, Barley, Pepper, Egg, Cabbage</h4>
                    </div>
                    <h3 class="special-text text-capitalize">Chef Speciality</h3>
                </div>
            <!--End of Single Item-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Hot & Spicy Biryani</h2>
                       <h4 class="text-muted">Rice, Biryani Masala, Chicken</h4>
                    </div>
                </div>
            <!--End of Single Item3-->

<!-------------------------------------------->           
            
            <!--Title-->
                <div class="row">
                    <div class="col">
                        <h1 class="primary-color text-uppercase">Pizza</h1>
                    </div>
                </div>
            <!--End of Title-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3 special">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Milano Pizza</h2>
                       <h4 class="text-muted">Mutton, Black Olive, Barley, Pepper, Cheeze, Butter, Bread</h4>
                    </div>
                    <h3 class="special-text text-capitalize">Chef Speciality</h3>
                </div>
            <!--End of Single Item-->
            <!--Single Item-->
                <div class="single-item d-flex justify-content-between my-3 p-3">
                    <div class="single-item-text">
                       <h2 class="text-uppercase text-dark head-text">Margaritta Pizza</h2>
                       <h4 class="text-muted">Chicken, Olive, Chilies, Cheeze, Bread</h4>
                    </div>
                </div>
            <!--End of Single Item4-->

<!-------------------------------------------->
            </div>
            <!--End of second coloumn-->     

        </div>
    </div>
</section>

<!--End of Menu Product Section-->

<!------------------------------------------------------------------------------------------------------------->

<!--Start About Section-->

<section id="about" class="py-5">
    
<div class="container">
    <div class="row">
        <div class="col-md-6 my-4">
            <center><h1 class="text-uppercase primary-color">About Us</h1></center>
            <h2 class="text-about">International Eats Restaurant is the name of quality and taste, which provides its services for more than 20 years in the city, always co-operating with customers, improving its services, maintaining the high quality with low rates and standard food to the customers</h2>
            <center><a href="" class="btn main-btn my-4 text-capitalize">Learn More</a></center>
        </div>
        <div class="col-md-6 about-pictures my-4 d-none d-lg-block">
            <img src="img/mn1.jpg" alt="Menu" class="img-1 img-thumbnail about-image">
            <img src="img/mn2.jpg" alt="Menu" class="img-2 img-thumbnail about-image">
            <img src="img/mn3.jpg" alt="Menu" class="img-3 img-thumbnail about-image">
            <img src="img/mn4.jpg" alt="Menu" class="img-4 img-thumbnail about-image">
            <img src="img/mn5.jpg" alt="Menu" class="img-5 img-thumbnail about-image">
        </div>
    </div>
</div>

</section>

<!--End of About Section-->

<!------------------------------------------------------------------------------------------------------------->

<!--Start of Review Section-->

<section id="reviews" class="py-5">
    
    <div id="slider" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">

<!---------------------------------------------------->

<!--Carousel Items 1-->
               <div class="carousel-item active">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 mx-auto d-flex justify-content-between review-item py-3">
<!--Image 1-->
                               <div class="align-self-center ml-3">
                                   <img src="img/icon.jpg" alt="" class="rounded-circle review-img">
                               </div>
<!--End of Image 1-->
<!--Text Review 1-->

                               <div class="review-text px-5">
                                   <h1 class="text-capitalize mb-3 testimonial-color head-text">Quentin Lambkin</h1>
                                    <p class="lead text-new">International Eats Restaurant is one of the top online restaurant in Windsor. I order from here almost 10 times a week. They have excellent taste, brilliant service and pure healthy food.</p>
                               </div>                 
                            
<!--End of Text Review 1-->
                            </div>
                        </div>
                    </div>
               </div>
<!--End of Carousel Item 1-->               

<!--Carousel Items 2-->
               <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 mx-auto d-flex justify-content-between review-item py-3">
<!--Image 2-->
                               <div class="align-self-center ml-3">
                                   <img src="img/icon.jpg" alt="" class="rounded-circle review-img">
                               </div>
<!--End of Image 2-->
<!--Text Review 2-->

                               <div class="review-text px-5">
                                   <h1 class="text-capitalize mb-3 testimonial-color head-text">Sawyer King</h1>
                                    <p class="lead text-new">International Eats Restaurant is the name of quality and taste. Brilliant restaurant in a sense of service and customer managemnet is outstanding.</p>
                               </div>                 
                            
<!--End of Text Review 2-->
                            </div>
                        </div>
                    </div>
               </div>
<!--End of Carousel Item 2-->               

               
<!--Carousel Items 3-->
               <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 mx-auto d-flex justify-content-between review-item py-3">
<!--Image 3-->
                               <div class="align-self-center ml-3">
                                   <img src="img/icon.jpg" alt="" class="rounded-circle review-img">
                               </div>
<!--End of Image 3-->
<!--Text Review 3-->

                               <div class="review-text px-5">
                                   <h1 class="text-capitalize mb-3 testimonial-color head-text">Robert Odoh</h1>
                                    <p class="lead text-new">International Eats Restaurant is located in one of the prime location, I ordered there meals, food quality and taste is excellent.</p>
                               </div>                 
                            
<!--End of Text Review 3-->
                            </div>
                        </div>
                    </div>
               </div>
<!--End of Carousel Item 3-->   
              
<!--Carousel Items 4-->
               <div class="carousel-item">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 mx-auto d-flex justify-content-between review-item py-3">
<!--Image 4-->
                               <div class="align-self-center ml-3">
                                   <img src="img/female.jpg" alt="" class="rounded-circle review-img">
                               </div>
<!--End of Image 4-->
<!--Text Review 4-->

                               <div class="review-text px-5">
                                   <h1 class="text-capitalize mb-3 testimonial-color head-text">Rose Cheriachen Edassery</h1>
                                    <p class="lead text-new">I like every dish but the one I love the most is specaial pizza, special soup, chiken fried rice and mutton karhai these are there speciality.</p>
                               </div>                 
                            
<!--End of Text Review 4-->
                            </div>
                        </div>
                    </div>
               </div>
<!--End of Carousel Item 4--> 

<!-------------------------------------------------->                          
                
<!--Carousel Controls 1-->
          
           <a href="#slider" class="carousel-control-prev" role="button" data-slide="prev">
               <span class="carousel-control-prev-icon">
               </span>
           </a>  

<!--Carousel Controls 2-->

           <a href="#slider" class="carousel-control-next" role="button" data-slide="next">
               <span class="carousel-control-next-icon">
               </span>
           </a>
             
        </div>
    </div>
    
</section>

<!--End of Review Section-->

<!------------------------------------------------------------------------------------------------------------->

<!--Team & Manager-->

<section id="team" class="py-5">
    
</section>

<!--End of Team Manager-->

<!------------------------------------------------------------------------------------------------------------->

<!--Contact Section-->

<section id="contact">
    
    <div class="container-fluid no-padding">
        <div class="row">
            <div class="col-md-6 my-3">
                <div class="embed-responsive embed-responsive-21by9 height">
                    <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2950.791498342494!2d-83.06823304871091!3d42.304314179088564!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x883b2d77c6ec4bef%3A0x1a44f1192a4e41ee!2sUniversity%20of%20Windsor!5e0!3m2!1sen!2sca!4v1627276440032!5m2!1sen!2sca " width="100%"frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
            <div class="col-md-6 my-3">
                <div class="card text-center">
                    <div class="card-header">
                        <h1 class="text-uppercase">Contact List</h1>
                    </div>
                    <div class="card-body">
                        <form action="" method="post">
<!------------Input Groups------------->
                          <div class="input-group my-3 align-self-center">
                              <div class="input-group-prepend">
                                  <span class="input-group-text" id="input-cnic">
                                      <i class="fas fa-id-card"></i>
                                  </span>
                              </div>
                              <input type="text" id="text" class="form-control form-control-lg" placeholder="Enter Your CNIC" name="cnic">
                          </div>
<!------------------------------------->
                          <div class="input-group my-3">
                              <div class="input-group-prepend">
                                  <span class="input-group-text" id="input-text">
                                      <i class="fas fa-user"></i>
                                  </span>
                              </div>
                              <input type="text" id="text" class="form-control form-control-lg" placeholder="Enter Your Name" name="name">
                          </div>
<!------------------------------------->
                          <div class="input-group my-3">
                              <div class="input-group-prepend">
                                  <span class="input-group-text" id="input-phone">
                                      <i class="fas fa-phone"></i>
                                  </span>
                              </div>
                              <input type="text" id="phone" class="form-control form-control-lg" placeholder="Enter Your Phone No" name="phone">
                          </div>
<!------------------------------------->
                          <div class="input-group my-3">
                              <div class="input-group-prepend">
                                  <span class="input-group-text" id="input-email">
                                      <i class="fas fa-envelope"></i>
                                  </span>
                              </div>
                              <input type="email" id="text" class="form-control form-control-lg" placeholder="Enter Your Email" name="email">
                          </div>
<!------------------------------------->
<!-------Submit Button-------->
                           <button type="submit" class="btn btn-block btn-lg text-uppercase contact-btn" name="submit" value="login"><i class="far fa-hand-point-right mr-2"></i>Click Here</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>

<?php

include ("connection/connect.php");

if(!empty($_POST["submit"]))      //if records were not empty
{

  $query = "INSERT INTO contact(CNIC,Name,Phone,Email) VALUES('".$_POST['cnic']."','".$_POST['name']."','".$_POST['phone']."','".$_POST['email']."')";

  mysqli_query($db,$query);

  header("location: index.php");
}
?>



<!--End of Contact Section-->

<!------------------------------------------------------------------------------------------------------------->

<!--Footer social icons-->

<div class="container-fluid info p-3">
    <div class="row">     
        <div class="col d-flex justify-content-between align-items-baseline flex-wrap">
            <h2 class="primary-color p-2 text-capitalize">&copy;Copyright 2020  International Eats Restaurant</h2>
        </div>
    </div>
</div>    
<!-------------------------->
<!-------------------------->
<a href="#top-icons" id="back-to-top" class="p-1 scrollTop"><span class="i fas fa-arrow-up primary-color fa-2x"></span></a>
<!-------------------------->
<!-------------------------->

<!--End of Footer Social Icons-->

<!------------------------------------------------------------------------------------------------------------->

   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!-- JQuery -->
    <script src="js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap js -->
    <script src="js/bootstrap.bundle.min.js"></script>
<!-- Magnific Popup -->
    <script src="magnific-popup/jquery.magnific-popup.js"></script>
<!-- Ripple Effect -->
   <script src="js/jquery.ripples-min.js"></script>
<!-- JavaScript -->
   <script src="js/script.js"></script>

    
</body>
</html>