<%@page import="com.rami.connection.DbCon"%> <%@page
import="com.rami.dao.ProductDao"%> <%@page import="java.util.List"%> <%@page
import="com.rami.model.Cart"%> <%@page import="java.util.ArrayList"%> <%@ page
language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <% ArrayList<Cart>
  cart_list = (ArrayList<Cart
    >) session.getAttribute("cart-list"); List<Cart>
      cartProduct = null; if (cart_list != null) { ProductDao pd = new
      ProductDao(DbCon.getConnection()); cartProduct =
      pd.getCartProducts(cart_list); double total =
      pd.getTotalCartPrice(cart_list); request.setAttribute("cart_list",
      cart_list); request.setAttribute("total", total); } %>

      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="ISO-8859-1" />
          <title>Online Shopping Cart</title>

          <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

          <script
            src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
            crossorigin="anonymous"
          ></script>

          <link
            href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
            rel="stylesheet"
            type="text/css"
          />
          <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet"
            type="text/css"
          />
          <!-- Core theme CSS (includes Bootstrap)-->
          <link href="css/index-styles.css" rel="stylesheet" />

          <style>
            <i class="bi bi-person-circle"></i>
          </style>
        </head>
        <body id="page-top" style="background-color: #2e8b57">
          <!-- Navigation-->
          <nav
            class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
            id="mainNav"
          >
            <div class="container">
              <a class="navbar-brand" href="index.jsp"
                ><i class="fa fa-home"></i>RSP</a
              >
              <button
                class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                Menu <i class="fas fa-bars"></i>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item mx-0 mx-lg-1">
                    <a
                      class="nav-link py-3 px-0 px-lg-3 rounded"
                      href="product.jsp"
                      >Products
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-phone"
                        viewBox="0 0 16 16"
                      >
                        <path
                          d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"
                        />
                        <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" />
                      </svg>
                    </a>
                  </li>
                  <li class="nav-item mx-0 mx-lg-1">
                    <a
                      class="nav-link py-3 px-0 px-lg-3 rounded"
                      href="cart.jsp"
                      >Cart
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-cart-plus-fill"
                        viewBox="0 0 16 16"
                      >
                        <path
                          d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zM9 5.5V7h1.5a.5.5 0 0 1 0 1H9v1.5a.5.5 0 0 1-1 0V8H6.5a.5.5 0 0 1 0-1H8V5.5a.5.5 0 0 1 1 0z"
                        /></svg
                      ><span
                        class="badge badge-danger px-1"
                        style="background-color: red"
                        >${ cart_list.size() }</span
                      >
                    </a>
                  </li>
                  <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded" href=""
                      >Help
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        fill="currentColor"
                        class="bi bi-question-circle"
                        viewBox="0 0 16 16"
                      >
                        <path
                          d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"
                        />
                        <path
                          d="M5.255 5.786a.237.237 0 0 0 .241.247h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286zm1.557 5.763c0 .533.425.927 1.01.927.609 0 1.028-.394 1.028-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94z"
                        /></svg
                    ></a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          <br /><br /><br /><br /><br />

          <div class="container">
            <div class="d-flex py-3">
              <h3>Total Price : ${total} $</h3>
              <a class="mx-3 btn btn-primary" href="#"
                >Shopping
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  width="16"
                  height="16"
                  fill="currentColor"
                  class="bi bi-cart"
                  viewBox="0 0 16 16"
                >
                  <path
                    d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"
                  /></svg
              ></a>
            </div>

            <table class="table table-loght">
              <thead>
                <tr>
                  <th scope="col">Category</th>
                  <th scope="col">Serie</th>
                  <th scope="col">Price</th>
                  <th scope="col">Description</th>
                  <th scope="col">Quantity</th>
                  <th scope="col">Cancel</th>
                </tr>
              </thead>

              <tbody>
                <% if (cart_list != null) { for (Cart c : cartProduct) { %>

                <tr>
                  <td><%=c.getCategory()%></td>
                  <td><%=c.getSerie()%></td>
                  <td><%= c.getPrice()%>$</td>
                  <td><%=c.getDescription()%></td>
                  <td>
                    <form action="" method="post" class="form-inline">
                      <input
                        type="hidden"
                        name="id"
                        value="<%=c.getId()%>"
                        class="form-input"
                      />
                      <div
                        class="form-group d-flex justify-content-between w-50"
                      >
                        <a
                          class="btn btn-sm btn-decre"
                          href="quontity-inc-dec?action=dec&id=<%=c.getId()%>"
                          ><i class="fas fa-minus-square"></i
                        ></a>
                        <input
                          type="text"
                          name="quontity"
                          class="form-control w-50"
                          value="<%=c.getQuantity()%>"
                          readonly
                        />
                        <a
                          class="btn btn-sm btn-incre"
                          href="quontity-inc-dec?action=inc&id=<%=c.getId()%>"
                          ><i class="fas fa-plus-square"></i
                        ></a>
                      </div>
                    </form>
                  </td>
                  <td>
                    <a
                      class="btn btn-sm btn-danger"
                      href="romove-product-from-cart?id=<%=c.getId()%>"
                      >Remove</a
                    >
                  </td>
                </tr>

                <% } } %>
              </tbody>
            </table>
          </div>

          <!-- Footer-->
          <footer class="footer text-center">
            <div class="container">
              <div class="row">
                <!-- Footer Location-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                  <h4 class="text-uppercase mb-4">Location</h4>
                  <p class="lead mb-0">
                    Sidi Bennour <br />
                    Oulad Boussakken
                  </p>
                </div>
                <!-- Footer Social Icons-->
                <div class="col-lg-4 mb-5 mb-lg-0">
                  <h4 class="text-uppercase mb-4">Around the Web</h4>
                  <a class="btn btn-outline-light btn-social mx-1" href="#!"
                    ><i class="fab fa-fw fa-facebook-f"></i
                  ></a>
                  <a class="btn btn-outline-light btn-social mx-1" href="#!"
                    ><i class="fab fa-fw fa-twitter"></i
                  ></a>
                  <a class="btn btn-outline-light btn-social mx-1" href="#!"
                    ><i class="fab fa-fw fa-linkedin-in"></i
                  ></a>
                  <a class="btn btn-outline-light btn-social mx-1" href="#!"
                    ><i class="fab fa-fw fa-dribbble"></i
                  ></a>
                </div>
                <!-- Footer About Text-->
                <div class="col-lg-4">
                  <h4 class="text-uppercase mb-4">About RSP</h4>
                  <p class="lead mb-0">RSP is....</p>
                </div>
              </div>
            </div>
          </footer>
          <!-- Copyright Section-->
          <div class="copyright py-4 text-center text-white">
            <div class="container">
              <small> ri_simohamed &copy;2022</small>
            </div>
          </div>
        </body>
      </html></Cart
    ></Cart
  ></Cart
>
