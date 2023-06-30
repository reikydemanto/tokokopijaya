import { useLocation } from "react-router-dom";
import { Icon } from "@iconify/react";
import { useEffect, useState } from "react";
import axios from "axios";
import LazyLoad from "react-lazy-load";
import background from "../images/bg-instagram.png";

const Outlet = () => {
  const location = useLocation();

  const baseUrl = `http://localhost:3001/menu/${location.state.nama}`;

  const [menu, setMenu] = useState();
  const [categories, setCategories] = useState();

  useEffect(() => {
    if (menu === undefined) {
      axios.get(baseUrl).then((response) => {
        setMenu(response);
      });
    } else {
      let getCategories = [];

      for (let i = 0; i < menu.data[0].payload.length; i++) {
        getCategories[i] = menu.data[0].payload[i].NAMA_KATEGORI;
        setCategories([...new Set(getCategories)]);
      }
    }
  }, [menu]);

  return (
    <>
      <div className="backgroundColor">
        <div className="container">
          <div className="row justify-content-center">
            <div
              className="col-lg-4 backgroundColor shadow"
              style={{ position: "relative" }}
            >
              <h2 className="mt-4 me-4 Pop-SemiBold text-light">MENU</h2>
              <h5 className="Pop-ExtraLight white-font me-4 mt-2">
                {location.state.tipe}
                <span className="Pop-SemiBold m-2">{location.state.nama}</span>
              </h5>
              <div className="card shadow mx-4 mb-4 mb-1 border-0 rd-16 indexs mt-3">
                <LazyLoad>
                  <img
                    src={require(`../images/Outlet/${location.state.gambar}`)}
                    className="card-img rd-16"
                    alt={location.state.tipe + " " + location.state.gambar}
                  />
                </LazyLoad>
              </div>
              <div className="container-fluid">
                <div className="row">
                  <div className="col mx-2 me-4 p-0">
                    <button className="btn btn button-outlet-big Pop-SemiBold mb-4 py-3 shadow">
                      <Icon
                        icon="ic:round-location-on"
                        width="36"
                        height="36"
                      />
                      <div>
                        <p className="wa-text mb-0 text-end">Location</p>
                        <p className="wa-text mb-0 mt-n1 text-end">On Map</p>
                      </div>
                    </button>
                  </div>
                  <div className="col mx-2 ms-4 p-0">
                    <button
                      className="btn btn button-outlet-big Pop-SemiBold mb-4 py-3 shadow"
                      data-bs-toggle="modal"
                      data-bs-target="#exampleModal"
                    >
                      <Icon
                        icon="ic:round-delivery-dining"
                        width="36"
                        height="36"
                      />
                      <div>
                        <p className="wa-text mb-0 text-end">Online</p>
                        <p className="wa-text mb-0 mt-n1 text-end">Order</p>
                      </div>
                    </button>
                  </div>
                </div>
              </div>
              {categories ? (
                categories.map((itemParent, indexParent) => (
                  <div
                    className="container-fluid pe-4 ps-0 mb-4"
                    key={indexParent}
                  >
                    <h3 className="Pop-SemiBold white-font mb-2">
                      {itemParent}
                    </h3>
                    <div className="carousel gap-2">
                      {menu.data[0].payload.map((item, index) =>
                        item.NAMA_KATEGORI === itemParent ? (
                          <div className="item-menu white-font" key={index}>
                            <div className="image mb-2">
                              <LazyLoad>
                                <img
                                  className="rd-16"
                                  src={require("../images/Menu/kopi_susu_jaya.jpg")}
                                  alt="kopi-susu-jaya"
                                />
                              </LazyLoad>
                            </div>
                            <p className="nama-menu text-center Pop-SemiBold mb-0">
                              {item.NAMA_MENU}
                            </p>
                            <p className="harga text-center Pop-Regular mb-0">
                              Rp {item.HARGA.toLocaleString("id-ID")}
                            </p>
                          </div>
                        ) : null
                      )}
                    </div>
                  </div>
                ))
              ) : (
                <h1>KOSONG</h1>
              )}
              {/* Modal  */}
              <div
                class="modal fade"
                id="exampleModal"
                tabindex="-1"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
              >
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-header text-center color-font-red">
                      <h1 class="modal-title fs-5" id="exampleModalLabel">
                        Online Order
                      </h1>
                    </div>
                    <div class="modal-body">
                      <button
                        onClick={() => {
                          window.open(
                            "https://www.instagram.com/tokokopijaya/"
                          );
                        }}
                        type="button"
                        className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                      >
                        <img
                          className="button-online"
                          src={require("../images/shopeefood.png")}
                        />
                      </button>
                      <button
                        onClick={() => {
                          window.open(
                            "https://www.instagram.com/tokokopijaya/"
                          );
                        }}
                        type="button"
                        className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                      >
                        <img
                          className="button-online"
                          src={require("../images/grabfood.png")}
                        />
                      </button>
                      <button
                        onClick={() => {
                          window.open(
                            "https://www.instagram.com/tokokopijaya/"
                          );
                        }}
                        type="button"
                        className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                      >
                        <img
                          className="button-online"
                          src={require("../images/gofood.png")}
                        />
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Outlet;
