<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bookhaus | Advance Search</title>

<!-- Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="css/slider.css" rel="stylesheet">
<link href="css/jquery-ui.min.css" rel="stylesheet">
<link href="./css/custom.css" rel="stylesheet">
<link href="css/simple-sidebar.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="wrapper">
		<jsp:include page="header.jsp"></jsp:include>
		<section id="page-wrapper">
			<h3 class="heading">
				Advance Search for
				<div class="btn-group" id="adv-search-dropdown">
					<button type="button" class="btn btn-primary dropdown-toggle"
						data-toggle="dropdown">
						<span class="selected-item">Books</span><span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#books-tab">Books</a></li>
						<li><a href="#music-tab">Music</a></li>
						<li><a href="#supplies-tab">Office Supplies</a></li>
						<li><a href="#accessories-tab">Accessories</a></li>
					</ul>
				</div>
			</h3>
			<div id="content">
				<div id="my-tab-content" class="tab-content">
					<div class="tab-pane active" id="books-tab">
						<form class="form-horizontal search-form" action="AdvanceSearch">
							<p class="text-center">Please enter search criteria for Books and click Search.</p>
							<div class="row">
								<div class="col-sm-4 filter-box">
									<div class="form-group">
										<label for="genre" class="control-label">Price Range</label>
										<div>
											<span>$5</span> <input id="booksPriceFilter" type="text"
												class="span2" value="" data-slider-min="0"
												data-slider-max="200" data-slider-tooltip="hide"
												data-slider-step="10" data-slider-value="[5,100]"
												data-input="#booksPrice" /> <span>$100</span>
										</div>
										<input type="hidden" id="booksPrice" value="5-100"
											name="price">
									</div>

									<div class="form-group">
										<label for="genre" class="control-label">Published
											Year</label>
										<div>
											<span>1900</span> <input id="booksYearFilter" type="text"
												class="span2" value="" data-slider-min="1900"
												data-slider-max="2014" data-slider-tooltip="hide"
												data-slider-step="2" data-slider-value="[1990, 2010]"
												data-input="#booksYear" /> <span>2010</span>
										</div>
										<input type="hidden" id="booksYear"
											value="1990-01-01_2010-01-01" name="published_date">
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 1</label>
										<div>
											<select class="form-control" name="sortBy1" id="booksSort1" data-block="#booksSort2, #booksSort3"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="published_date asc">Year - Ascending</option>
												<option value="published_date desc">Year - Descending</option>
												<option value="author asc">Author [A-Z]</option>
												<option value="author desc">Author [Z-A]</option>
												<option value="title asc">Title [A-Z]</option>
												<option value="title desc">Title [Z-A]</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 2</label>
										<div>
											<select class="form-control" name="sortBy2" id="booksSort2" data-block="#booksSort3"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="published_date asc">Year - Ascending</option>
												<option value="published_date desc">Year - Descending</option>
												<option value="author asc">Author [A-Z]</option>
												<option value="author desc">Author [Z-A]</option>
												<option value="title asc">Title [A-Z]</option>
												<option value="title desc">Title [Z-A]</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 3</label>
										<div>
											<select class="form-control" name="sortBy3" id="booksSort3"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="published_date asc">Year - Ascending</option>
												<option value="published_date desc">Year - Descending</option>
												<option value="author asc">Author [A-Z]</option>
												<option value="author desc">Author [Z-A]</option>
												<option value="title asc">Title [A-Z]</option>
												<option value="title desc">Title [Z-A]</option>
											</select>
										</div>
									</div>
									<input type="hidden" name="sortOrder" value=""/>
								</div>
								<div class="col-sm-8">
									<div class="form-group">
										<label for="isbn" class="col-sm-3 control-label">ISBN</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="isbn" name="isbn"
												placeholder="ISBN">
										</div>
									</div>
									<p class="text-center">------------------- OR
										-------------------</p>
									<div class="form-group">
										<label for="title" class="col-sm-3 control-label">Title</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="title"
												name="title" placeholder="Title of the book">
										</div>
									</div>
									<div class="form-group">
										<label for="author" class="col-sm-3 control-label">Author</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="author"
												name="author" placeholder="Author's Name">
										</div>
									</div>
									<div class="form-group">
										<label for="publisher" class="col-sm-3 control-label">Publisher</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="publisher"
												name="publisher" placeholder="Publisher's Name">
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="col-sm-3 control-label">Subject</label>
										<div class="col-sm-9">
											<select class="form-control" name="genre">
												<option value="">Select Subject</option>
												<option value="architecture">Architecture</option>
												<option value="fantasy">Fantasy</option>
												<option value="fiction">Fiction</option>
												<option value="science">Science</option>
												<option value="travel">Travel</option>
											</select>
										</div>
									</div>									
									<div class="form-group">
										<label for="description" class="col-sm-3 control-label">Keywords</label>
										<div class="col-sm-9">
											<textarea rows="3" class="form-control" id="description"
												name="description" placeholder="Keywords in Description"></textarea>
										</div>
									</div>
								</div>
							</div>

							<input type="hidden" name="category" value="Books">
							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-primary">Search</button>
									<button type="reset" class="btn btn-primary">Clear</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="music-tab">
						<form class="form-horizontal search-form" action="AdvanceSearch">
							<p class="text-center">Please enter search criteria for Music and click Search.</p>
							<div class="row">
								<div class="col-sm-4 filter-box">
									<div class="form-group">
										<label for="genre" class="control-label">Price Range</label>
										<div>
											<span>$5</span> <input id="musicPriceFilter" type="text"
												class="span2" value="" data-slider-min="0"
												data-slider-max="100" data-slider-tooltip="hide"
												data-slider-step="10" data-slider-value="[5,60]"
												data-input="#musicPrice" /> <span>$60</span>
										</div>
										<input type="hidden" id="musicPrice" value="5-60" name="price">
									</div>

									<div class="form-group">
										<label for="genre" class="control-label">Release Year</label>
										<div>
											<span>2006</span> <input id="musicYearFilter" type="text"
												class="span2" value="" data-slider-min="2000"
												data-slider-max="2014" data-slider-tooltip="hide"
												data-slider-step="1" data-slider-value="[2006, 2012]"
												data-input="#musicYear" /> <span>2012</span>
										</div>
										<input type="hidden" id="musicYear" value="2006-2012"
											name="year">
									</div>

									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 1</label>
										<div>
											<select class="form-control" name="sortBy1"  id="musicSort3" data-block="#musicSort1, #musicSort2"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="year asc">Year - Ascending</option>
												<option value="year desc">Year - Descending</option>
												<option value="artist asc">Artist [A-Z]</option>
												<option value="artist desc">Artist [Z-A]</option>
												<option value="album_title asc">Album [A-Z]</option>
												<option value="album_title desc">Album [Z-A]</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 2</label>
										<div>
											<select class="form-control" name="sortBy2" id="musicSort2" data-block="#musicSort1, #musicSort3"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="year asc">Year - Ascending</option>
												<option value="year desc">Year - Descending</option>
												<option value="artist asc">Artist [A-Z]</option>
												<option value="artist desc">Artist [Z-A]</option>
												<option value="album_title asc">Album [A-Z]</option>
												<option value="album_title desc">Album [Z-A]</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 3</label>
										<div>
											<select class="form-control" name="sortBy3" id="musicSort3" data-block="#musicSort1, #musicSort2"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="year asc">Year - Ascending</option>
												<option value="year desc">Year - Descending</option>
												<option value="artist asc">Artist [A-Z]</option>
												<option value="artist desc">Artist [Z-A]</option>
												<option value="album_title asc">Album [A-Z]</option>
												<option value="album_title desc">Album [Z-A]</option>
											</select>
										</div>
										<input type="hidden" name="sortOrder" value=""/>
									</div>
								</div>
								<div class="col-sm-8">
									<div class="form-group">
										<label for="album_title" class="col-sm-2 control-label">Album</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="album_title"
												name="album_title" placeholder="Album Name">
										</div>
									</div>
									<div class="form-group">
										<label for="artist" class="col-sm-2 control-label">Artist</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="artist"
												name="artist" placeholder="Artist Name">
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="col-sm-2 control-label">Genre</label>
										<div class="col-sm-10">
											<select class="form-control" name="genre">
												<option value="">Select Genre</option>
												<option value="country">Country</option>
												<option value="pop">Pop</option>
												<option value="rock">Rock</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="description" class="col-sm-2 control-label">Keywords</label>
										<div class="col-sm-10">
											<textarea rows="3" class="form-control" id="description"
												name="description" placeholder="Keywords in Description"></textarea>
										</div>
									</div>
								</div>
							</div>

							<input type="hidden" name="category" value="Music">
							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-primary">Search</button>
									<button type="reset" class="btn btn-primary">Clear</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="supplies-tab">
						<form class="form-horizontal search-form" action="AdvanceSearch">
							<p class="text-center">Please enter search criteria for Office Supplies and click Search.</p>
							<div class="row">
								<div class="col-sm-4 filter-box">
									<div class="form-group">
										<label for="genre" class="control-label">Price Range</label>
										<div>
											<span>$5</span> <input id="suppliesPriceFilter" type="text"
												class="span2" value="" data-slider-min="0"
												data-slider-max="100" data-slider-tooltip="hide"
												data-slider-step="10" data-slider-value="[5,60]"
												data-input="#suppliesPrice" /> <span>$60</span>
										</div>
										<input type="hidden" id="suppliesPrice" value="5-60"
											name="price">
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 1</label>
										<div>
											<select class="form-control" name="sortBy1"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="item_name asc">Name [A-Z]</option>
												<option value="item_name desc">Name [Z-A]</option>
												
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 2</label>
										<div>
											<select class="form-control" name="sortBy2"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="item_name asc">Name [A-Z]</option>
												<option value="item_name desc">Name [Z-A]</option>
											</select>
											<input type="hidden" name="sortOrder" value=""/>
										</div>
									</div>
								</div>
								<div class="col-sm-8">
									<div class="form-group">
										<label for="item_name" class="col-sm-2 control-label">Name</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="item_name"
												name="item_name" placeholder="Item Name">
										</div>
									</div>
									<div class="form-group">
										<label for="description" class="col-sm-2 control-label">Keywords</label>
										<div class="col-sm-10">
											<textarea rows="3" class="form-control" id="description"
												name="description" placeholder="Keywords in Description"></textarea>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" name="category" value="Office Supplies">
							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-primary">Search</button>
									<button type="reset" class="btn btn-primary">Clear</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane" id="accessories-tab">
						<form class="form-horizontal search-form" action="AdvanceSearch">
							<p class="text-center">Please enter search criteria for Accessories and click Search.</p>
							<div class="row">
								<div class="col-sm-4 filter-box">
									<div class="form-group">
										<label for="genre" class="control-label">Price Range</label>
										<div>
											<span>$5</span> <input id="accessPriceFilter" type="text"
												class="span2" value="" data-slider-min="0"
												data-slider-max="100" data-slider-tooltip="hide"
												data-slider-step="10" data-slider-value="[5,60]"
												data-input="#accessPrice" /> <span>$60</span>
										</div>
										<input type="hidden" id="accessPrice" value="5-60"
											name="price" />
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 1</label>
										<div>
											<select class="form-control" name="sortBy1"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="name asc">Name [A-Z]</option>
												<option value="name desc">Name [Z-A]</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="genre" class="control-label">Sort Order 2</label>
										<div>
											<select class="form-control" name="sortBy2"
												style="margin-top: 6px;">
												<option value="">Select Sort Order</option>
												<option value="price asc">Price - Ascending</option>
												<option value="price desc">Price - Descending</option>
												<option value="name asc">Name [A-Z]</option>
												<option value="name desc">Name [Z-A]</option>
											</select>
											<input type="hidden" name="sortOrder" value=""/>
										</div>
									</div>
								</div>
								<div class="col-sm-8">
									<div class="form-group">
										<label for="name" class="col-sm-2 control-label">Name</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="name" name="name"
												placeholder="Item Name">
										</div>
									</div>
									<div class="form-group">
										<label for="description" class="col-sm-2 control-label">Keywords</label>
										<div class="col-sm-10">
											<textarea rows="3" class="form-control" id="description"
												name="description" placeholder="Keywords in Description"></textarea>
										</div>
									</div>
								</div>
							</div>

							<input type="hidden" name="category" value="Accessories">
							<div class="form-group">
								<div class="col-sm-offset-5 col-sm-7">
									<button type="submit" class="btn btn-primary">Search</button>
									<button type="reset" class="btn btn-primary">Clear</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		<!-- /page wrapper -->
	</div>
	<!--  wrapper -->

	<div id="authorListData" hidden>
		<c:forEach var="item" items="${authorList}">
			<span>${item}</span>
		</c:forEach>
	</div>
	<div id="artistListData" hidden>
		<c:forEach var="item" items="${artistList}">
			<span>${item}</span>
		</c:forEach>
	</div>

	<div id="publisherListData" hidden>
		<c:forEach var="item" items="${publisherList}">
			<span>${item}</span>
		</c:forEach>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-1.11.1.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/script.js"></script>
	<script src="js/advSearch.js"></script>
</body>
</html>