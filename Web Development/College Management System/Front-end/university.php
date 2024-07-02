<?php include('server.php') ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>MIT</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="student_index.php">MIT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="university.php">University</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="student.php">Student</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profile.php">Profile</a>
            </li>
          </ul>
        </div>
        <a class="navbar-brand"></a>
        <form method="post" action="login.php" class="form-inline">
            <button type="submit" name="log_out" class="btn btn-default btn-sm">

          <span class="glyphicon glyphicon-log-out"></span> Log out</button>
        </form>
      </nav>
      
      <div id="accordion">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                Dining Hall
              </button>
            </h5>
          </div>
      
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                   <table class="table table-striped" style="margin: auto;">
                  <th scope="col">Juice</th>
                  <th scope="col">Main Dish</th>
                  <th scope="col">Fruits</th>
                  <th scope="col">Dessert</th>
                  <th scope="col">Date</th>
                  <?php 

                    $query = "SELECT * FROM dining";
                    $results = mysqli_query($db, $query);
                    while($row = mysqli_fetch_array($results))
                    { ?>

                      <tr> 
                        <td><?php echo $row['Juice']; ?></td>
                        <td><?php echo $row['main_dish']; ?></td>
                        <td><?php echo $row['Fruits']; ?></td>
                        <td><?php echo $row['dessert']; ?></td>
                        <td><?php echo $row['date']; ?></td>
                      </tr>

                   <?php } ?> 

                   
                </table>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingTwo">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                Library
              </button>
            </h5>
          </div>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
            <div class="card-body">
                Search for a book:
      
                <form method="post" action="university.php" > 
                    <div class="form-group row">
                      <label for="inlineFormInputName1" class="col-sm-2 col-form-label">Book Name</label>
                      <div class="col-sm-10">
                        <input name="book_name" type="text" class="form-control" id="inlineFormInputName1" placeholder="Ex: 'The Lord of the Rings'">
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="inlineFormInputName2" class="col-sm-2 col-form-label">Author</label>
                      <div class="col-sm-10">
                        <input name="book_author" type="text" class="form-control" id="inlineFormInputName2" placeholder="Ex: 'J. R. R. Tolkien'">
                      </div>
                    </div>
                    <div class="form-group row">
                      <div class="col-sm-10">
                        <button name="search_book" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                      </div>
                    </div>


                  </form>

                  <?php

                  if(isset($_POST['search_book']))
                  {
                    $name=$_POST['book_name'];
                    $author=$_POST['book_author'];

                    $query = "SELECT * FROM book WHERE book_name = '$name' AND author = '$author'";
                    $results = mysqli_query($db, $query);

                    $row = mysqli_fetch_array($results);
                  

                   ?>

                   <table class="table table-striped" style="margin: auto;">
                     <th>Book</th>
                     <th>Author</th>
                     <th>Campus</th>
                     <th>Status</th>

                     <tr>
                       <td><?php echo $row['book_name']; ?></td>
                       <td><?php echo $row['author']; ?></td>
                       <td><?php echo $row['library_name']; ?></td>
                       <td><?php echo $row['book_status']; ?></td>
                     </tr>
                   </table>

                   <?php }  ?>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingThree">
            <h5 class="mb-0">
              <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                Student Clubs
              </button>
            </h5>
          </div>
          <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
            <div class="card-body">
                  <div class="card-group">
                    <div class="card">
                      <img class="card-img-top" src="https://media.licdn.com/dms/image/C560BAQG2M-zgBYTgCA/company-logo_200_200/0/1630652795200/ecellmit_logo?e=2147483647&v=beta&t=4tBbGAY6880RfAmhMfSvWHCMkW3-0hAOyzZKsb9O5fk" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title">E-Cell MIT</h5>
                        <form method="post" action="university.php">
                          <button type="submit" class="btn btn-primary" name="participate_kizilay">Participate</button>
                        </form>
                      </div>
                    </div>
                    <div class="card">
                      <img class="card-img-top" src="https://media.licdn.com/dms/image/C510BAQFGir2QQrl5Dg/company-logo_200_200/0/1631426717958/mit_ieee_sb_logo?e=2147483647&v=beta&t=-WqQEeCz6HqvrrU4hf9J70LeJcbrhNf6xy_M7ZfYUGk" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title">IEEE</h5>
                        <form method="post" action="university.php">
                          <button type="submit" class="btn btn-primary" name="participate_ieee">Participate</button>
                        </form>
                      </div>
                    </div>
                    <div class="card">
                      <img class="card-img-top" src="https://media.licdn.com/dms/image/C560BAQHQ-X2RxFBXhA/company-logo_200_200/0/1642404202181/adg_manipal_logo?e=2147483647&v=beta&t=2ip2TlPFnfXsJ-kvB46aDjB3RwiDQIEl70urvDGoS5Q" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title">ADG MIT</h5>
                        <form method="post" action="university.php">
                          <button type="submit" class="btn btn-primary" name="participate_girisimcilik">Participate</button>
                        </form>
                      </div>
                    </div>
                    <div class="card">
                      <img class="card-img-top" src="https://media.licdn.com/dms/image/C4E0BAQGwDsSAhdHfbg/company-logo_200_200/0/1630612004863?e=2147483647&v=beta&t=uOmT72MwSCiyQdebBqj647ImwXHIR7BwEr87WNETzrA" alt="Card image cap">
                      <div class="card-body">
                        <h5 class="card-title">Goonj Mahe</h5>
                        <form method="post" action="university.php">
                          <button type="submit" class="btn btn-primary" name="participate_mec">Participate</button>
                        </form>
                      </div>
                    </div>
                  </div>
            </div>
          </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingFour">
              <h5 class="mb-0">
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                  Programs
                </button>
              </h5>
            </div>
            <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
              <div class="card-body">
                <div class="jumbotron">
                    <h1 class="display-4">Revels</h1>
                    <p class="lead">The annual Sports and Cultural event held on grant note at MIT. From March 6th to 9th, Manipal Institute of Technology, Manipal Academy of Higher Education, hosted this highly anticipated event, bringing the campus to life with energy and excitement.</p>
                    <hr class="my-4">
                    <p>A Spectacular Showcase of Talent and Excitement was organised at MIT</p>
                    <p class="lead">
                      <a class="btn btn-primary btn-lg" href="https://www.manipal.edu/mit/news-events/Revels2024/Revels2024.html" role="button">Learn more</a>
                    </p>
                  </div>
              </div>
              <div class="jumbotron">
                <h1 class="display-4">TechTatva MIT</h1>
                <p class="lead">TechTatva, is a platform for young, innovative minds across the country to present themselves. This technical extravaganza stands out as one of the most anticipated technical festivals across the country, and is widely recognised as Karnataka’s largest technical festival for students.</p>
                <hr class="my-4">
                <p>TechTatva 2024 hosts an array of technical competitions catering to all technical domains, such as Computer Science, Mechanical, Civil, Electronics, and Chemical.</p>
                <p class="lead">
                  <a class="btn btn-primary btn-lg" href="https://www.manipal.edu/mu/news-events/techtatva-2023.html" role="button">Learn more</a>
                </p>
              </div>
              <div class="jumbotron">
                <h1 class="display-4">MES (Manipal Entrepreneurship Summit)</h1>
                <p class="lead">Manipal Entrepreneurship Summit’23</p>
                <hr class="my-4">
                <p>We present a summit that brings together students, budding entrepreneurs, speakers, alumni, corporates, angel investors, and a slew of venture capitalists on one stage.</p>
                <p class="lead">
                  <a class="btn btn-primary btn-lg" href="https://www.manipal.edu/mit/news-events/MES.html" role="button">Learn more</a>
                </p>
              </div>
            </div>
        </div>
      </div>
</body>
</html>