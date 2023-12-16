(function ($) {
  "use strict";
  feather.replace();
  // Spinner
  var spinner = function () {
    setTimeout(function () {
      if ($("#spinner").length > 0) {
        $("#spinner").removeClass("show");
      }
    }, 1);
  };
  spinner(0);
  calcDefCart();
  // Sticky Navbar
  $(window).scroll(function () {
    if ($(this).scrollTop() > 40) {
      $(".navbar").addClass("sticky-top");
    } else {
      $(".navbar").removeClass("sticky-top");
    }
  });

  // Dropdown on mouse hover
  $(document).ready(function () {
    function toggleNavbarMethod() {
      if ($(window).width() > 992) {
        $(".navbar .dropdown")
          .on("mouseover", function () {
            $(".dropdown-toggle", this).trigger("click");
          })
          .on("mouseout", function () {
            $(".dropdown-toggle", this).trigger("click").blur();
          });
      } else {
        $(".navbar .dropdown").off("mouseover").off("mouseout");
      }
    }
    toggleNavbarMethod();
    $(window).resize(toggleNavbarMethod);
  });

  // Modal Video
  $(document).ready(function () {
    var $videoSrc;
    $(".btn-play").click(function () {
      $videoSrc = $(this).data("src");
    });

    $("#videoModal").on("shown.bs.modal", function (e) {
      $("#video").attr(
        "src",
        $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0"
      );
    });

    $("#videoModal").on("hide.bs.modal", function (e) {
      $("#video").attr("src", $videoSrc);
    });
  });

  // Back to top button
  $(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
      $(".back-to-top").fadeIn("slow");
    } else {
      $(".back-to-top").fadeOut("slow");
    }
  });

  $(".back-to-top").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 1500, "easeInOutExpo");
    return false;
  });

  /* Product Detail: Submit Button */
  $("#cart-form").submit(function () {
    var sbtn = $(".btn-buy");
    sbtn.html("Added to Cart");
    sbtn.prop("disabled", true);
    //reloadCart();
    var id = sbtn.attr("data-key");
    var pid = sbtn.attr("data-product");
    var price = sbtn.attr("data-price");
    var ftext = sbtn.attr("data-ftext");
    //alert("Buying..."+ price);
    $.get(
      "/cart/bag/add",
      { id: id, pid: pid, ftext: ftext, price: price },
      function () {}
    ).done(function () {
      openOffCanvas("/cart/bag/offcanvas");
      //reloadCart();
      window.location = "/cart/bag/index";
      return false;
    });
  });
  /*********************************/

  function calculate() {
    $(".product").each(function () {
      var total = 0,
        count = 0;
      $(this)
        .find(".product-count")
        .each(function () {
          var qty = $(this).val();
          var sum = $(this).val() * $(this).attr("data-price");
          total += sum;
          count += qty;

          $(this).parents("li").find(".price").text(sum);
        });
      //  $(".amount").html(total);
      //  $(".count").html(count);
      reloadCart();
    });
  }

  function reloadCart() {
    $.get("/cart/bag/block", function (data) {
      $("#shopCart").after(data).remove();
    });
  }

  function recalculateCart() {
    var subTotal = 0;
    var grandTotal = 0;
    var tax = 0;
    var items = $(".cart-item");
    $.each(items, function () {
      // var itemCheck = $(this).find(".cart-item-check");
      var itemQuantity = $(this).find(".cart-item-qty");
      // if (itemCheck.prop("checked")) {
      var itemTotal = itemQuantity.val() * itemQuantity.attr("data-price");
      subTotal += itemTotal;
      // }
    });
  }
  $(".cart-items").on("click", ".plus-button, .minus-button", function (e) {
    // Get quanitity input values

    var qty = $(this).parent().parent().find(".qty-input");
    var val = parseFloat(qty.val());
    var max = parseFloat(qty.attr("max"));
    var min = parseFloat(qty.attr("min"));
    var step = parseFloat(qty.attr("step"));
    console.log("clicked",qty);
    // Check which button is clicked
    if ($(this).is(".plus-button")) {
      // Increase the value
      qty.val(val + step);
    } else {
      // Check if minimum button is clicked and that value is
      // >= to the minimum required
      if (min && min >= val) {
        // Do nothing because value is the minimum required
        qty.val(min);
      } else if (val > 0) {
        // Subtract the value
        qty.val(val - step);
      }
    }
    qty.trigger("change");
    //  reloadCart();
  });

  $(".product-count").change(function () {
    var $this = $(this);
    var parent = $this.parent().parent();
    //parent.find(".cart-item-check").prop("checked", "checked");
    var price = $this.attr("data-price");
    var quantity = $this.val();
    var total = price * quantity;
    parent.find(".cart-item-total").html(total.toFixed(2));
    recalculateCart();
  });
  $(".xx-cart-products").on("change", ".product-count", function (e) {
    e.preventDefault();

    var a = $(this).attr("data-id");
    var b = $(this).val();
    $.get("/cart/bag/set", { id: a, count: b }, function () {
      $('.product-count[data-id="' + a + '"]').val(b);
      calculate();
    });
  });
  $(".cart-products").on("click", ".product-delete", function (e) {
    e.preventDefault();
    var id = $(this).attr("rel");
    $.get("/cart/bag/del", { id: id }, function (data) {
      if (data) {
        $("#i" + id).fadeOut("normal", function () {
          $(this).remove();
          calculate();
        });
        reloadCart();
      }
    });
  });

  $(".featSel")
    .find("input[type=radio]")
    .change(function () {
      $(".btn-buy").prop("disabled", false);
      $(".btn-buy").html("Buy This");
      calcDefCart();
    });

  /*** Product Detail:Calculate Item Price upon Feature Selection ***/
  function calcDefCart() {
    var price = 0,
      id = "",
      ftext = "";
    $(".featSel")
      .find("input[type='radio']:checked")
      .each(function (index) {
        var ntext = "";
        id += $(this).attr("id").replace("buy", "") + "+";
        var newVal = parseFloat($(this).val());
        ntext = $(this).attr("data-ftext");
        console.log(ntext);
        price += newVal;
        ftext += " " + ntext;
      });
    $(".moneyCal").html(price);
    $(".btn-buy").attr("data-key", id.slice(0, -1));
    $(".btn-buy").attr("data-price", price);
    $(".btn-buy").attr("data-ftext", ftext.trim());
  }
  /********************************************************/

  function offCanvasLoad(obj, data) {
    renderData(obj, data.title, ".offcanvas-title");
    renderData(obj, data.body, ".offcanvas-body");
    // renderData(obj, data.footer, '.offCanvas-footer');
    // obj.find('.modal-dialog').removeClass('modal-lg').removeClass('modal-sm').addClass(data.size);
    obj.setAttribute("class", "offcanvas offcanvas-end"); //console.log(obj);
  }

  function renderData(obj, data, sel) {
    const elm = obj.querySelector(sel);
    if (data) {
      elm.innerHTML = data;
      elm.display = "block";
    } else {
      // elm.display = "none";
    }
  }

  function openOffCanvas(action = null, config = {}) {
    if (action === null) {
    } else {
      $.getJSON(action, function (data) {
        var myOffcanvas = document.getElementById("offcanvasCart");
        var bsOffcanvas = new bootstrap.Offcanvas(myOffcanvas);
        data = $.extend(data, config);
        offCanvasLoad(myOffcanvas, data);
        if (!data.backdrop) {
          data.backdrop = false;
        }
        if (!data.keyboard) {
          data.keyboard = true;
        }
        if (!data.scroll) {
          data.scroll = true;
        }
        bsOffcanvas.show();
      });
    }
  }
})(jQuery);
