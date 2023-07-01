import { useLocation } from "react-router-dom";
import { Icon } from "@iconify/react";
import { useEffect, useState } from "react";
import axios from "axios";
import LazyLoad from "react-lazy-load";

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
                <div className="row gap-3 px-4">
                  {location.state.gmaps ? (
                    <div className="col p-0">
                      <button
                        onClick={() => {
                          window.open(location.state.gmaps);
                        }}
                        className="btn btn button-outlet-big Pop-SemiBold mb-4 py-3 shadow"
                      >
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
                  ) : null}
                  {location.state.shopee ||
                  location.state.grab ||
                  location.state.gojek ? (
                    <div className="col p-0">
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
                  ) : null}
                </div>
              </div>
              {categories ? (
                categories.map((itemParent, indexParent) => (
                  <div
                    className="container-fluid pe-4 ps-0 mb-4"
                    key={indexParent}
                  >
                    <h3 className="Pop-SemiBold white-font mb-2 wrap-text">
                      {itemParent}
                    </h3>
                    <div className="carousel gap-2">
                      {menu.data[0].payload.map((item, index) =>
                        item.NAMA_KATEGORI === itemParent ? (
                          <div className="item-menu white-font" key={index}>
                            <div className="image mb-2">
                              <LazyLoad>
                                {item.GAMBAR ? (
                                  <img
                                    className="rd-16"
                                    src={require(`../images/Menu/${item.GAMBAR}`)}
                                    alt="kopi-susu-jaya"
                                  />
                                ) : (
                                  <img
                                    className="rd-16"
                                    src="https://placeholder.com/200"
                                    alt="kopi-susu-jaya"
                                  />
                                )}
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
              <div className="footer my-5">
                <p>©copyright @tokokopijaya</p>
              </div>
              {/* Modal  */}
              <div
                className="modal fade"
                id="exampleModal"
                tabIndex="-1"
                aria-labelledby="exampleModalLabel"
                aria-hidden="true"
              >
                <div className="modal-dialog modal-dialog-centered">
                  <div className="modal-content">
                    <div className="modal-header text-center color-font-red">
                      <h1 className="modal-title fs-5" id="exampleModalLabel">
                        Online Order
                      </h1>
                    </div>
                    <div className="modal-body">
                      {location.state.shopee ? (
                        <button
                          onClick={() => {
                            window.open(location.state.shopee);
                          }}
                          type="button"
                          className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                        >
                          <img
                            className="button-online"
                            src={require("../images/shopeefood.png")}
                          />
                        </button>
                      ) : null}
                      {location.state.grab ? (
                        <button
                          onClick={() => {
                            window.open(location.state.grab);
                          }}
                          type="button"
                          className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                        >
                          <img
                            className="button-online"
                            src={require("../images/grabfood.png")}
                          />
                        </button>
                      ) : null}
                      {location.state.gojek ? (
                        <button
                          onClick={() => {
                            window.open(location.state.gojek);
                          }}
                          type="button"
                          className="btn btn button-sosmed instagram Pop-SemiBold mx-auto my-4 py-3 shadow"
                        >
                          <img
                            className="button-online"
                            src={require("../images/gofood.png")}
                          />
                        </button>
                      ) : null}
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
