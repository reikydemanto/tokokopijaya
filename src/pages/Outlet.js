import { useLocation } from "react-router-dom";
import { Icon } from "@iconify/react";

const Outlet = () => {
  const location = useLocation();

  const rp = 15000;

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
                <img
                  src={require(`../images/Outlet/${location.state.gambar}`)}
                  className="card-img rd-16"
                  alt={location.state.tipe + " " + location.state.gambar}
                />
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
                    <button className="btn btn button-outlet-big Pop-SemiBold mb-4 py-3 shadow">
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
              <div className="container-fluid pe-4 ps-0 mb-5">
                <h3 className="Pop-SemiBold white-font mb-2">Signature</h3>
                <div className="carousel gap-2">
                  <div className="item-menu white-font">
                    <div className="image mb-2">
                      <img
                        className="rd-16"
                        src={require("../images/Menu/kopi_susu_jaya.jpg")}
                      />
                    </div>
                    <p className="nama-menu text-center Pop-SemiBold mb-0">
                      Kopi Susu Mantap Jaya
                    </p>
                    <p className="harga text-center Pop-Regular mb-0">
                      Rp {rp.toLocaleString("id-ID")}
                    </p>
                  </div>
                  <div className="item-menu white-font">
                    <div className="image mb-2">
                      <img
                        className="rd-16"
                        src={require("../images/Menu/kopi_susu_jaya.jpg")}
                      />
                    </div>
                    <p className="nama-menu text-center Pop-SemiBold mb-0">
                      Kopi Susu Mantap Jaya
                    </p>
                    <p className="harga text-center Pop-Regular mb-0">
                      Rp {rp.toLocaleString("id-ID")}
                    </p>
                  </div>
                  <div className="item-menu white-font">
                    <div className="image mb-2">
                      <img
                        className="rd-16"
                        src={require("../images/Menu/kopi_susu_jaya.jpg")}
                      />
                    </div>
                    <p className="nama-menu text-center Pop-SemiBold mb-0">
                      Kopi Susu Mantap Jaya
                    </p>
                    <p className="harga text-center Pop-Regular mb-0">
                      Rp {rp.toLocaleString("id-ID")}
                    </p>
                  </div>
                  <div className="item-menu white-font">
                    <div className="image mb-2">
                      <img
                        className="rd-16"
                        src={require("../images/Menu/kopi_susu_jaya.jpg")}
                      />
                    </div>
                    <p className="nama-menu text-center Pop-SemiBold mb-0">
                      Kopi Susu Mantap Jaya
                    </p>
                    <p className="harga text-center Pop-Regular mb-0">
                      Rp {rp.toLocaleString("id-ID")}
                    </p>
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
