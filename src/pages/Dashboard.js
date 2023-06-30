import { useEffect, useState } from "react";
import OutletCard from "../components/OutletCard";
import "../css/Dashboard.css";
import axios from "axios";
import background from "../images/bg-instagram.png";
import kirin from "../images/kirin.png";
import { Icon } from "@iconify/react";
import LazyLoad from "react-lazy-load";

const Dashboard = () => {
  const baseUrl = "http://localhost:3001/";

  const [outlet, setOutlet] = useState([]);

  useEffect(() => {
    axios.get(baseUrl).then((response) => {
      setOutlet(response.data[0].payload);
    });
    return () => {
      setOutlet([]);
    };
  }, []);

  return (
    <>
      <div className="backgroundColor">
        <div className="container">
          <div className="row justify-content-center">
            <div
              className="col-lg-4 backgroundColor shadow"
              style={{ position: "relative" }}
            >
              <h2 className="my-4 me-4 Pop-SemiBold text-light">
                TOKO KOPI JAYA
              </h2>
              {outlet.map((item, index) => (
                <LazyLoad key={index}>
                  <OutletCard
                    tipe={item.TIPE}
                    nama={item.NAMA_OUTLET}
                    gambar={item.GAMBAR}
                  />
                </LazyLoad>
              ))}
              <div
                className="image-kirin-kanan"
                style={{ backgroundImage: `url(${kirin})` }}
              ></div>
              <div
                className="image-kirin-kiri"
                style={{ backgroundImage: `url(${kirin})` }}
              ></div>
              <LazyLoad>
                <button
                  onClick={() => {
                    window.open("https://wa.me/+6281133332323");
                  }}
                  type="button"
                  className="btn btn button-sosmed whatsapp Pop-SemiBold mx-auto mb-4 py-2 shadow"
                >
                  <Icon icon="ic:round-whatsapp" width="36" height="36" />
                  <p className="wa-text mb-0">Admin Jaya Group</p>
                </button>
              </LazyLoad>
              <LazyLoad>
                <button
                  onClick={() => {
                    window.open("https://www.instagram.com/tokokopijaya/");
                  }}
                  type="button"
                  className="btn btn button-sosmed instagram Pop-SemiBold mx-auto mb-5 py-2 shadow"
                  style={{ backgroundImage: `url(${background})` }}
                >
                  <Icon icon="mdi:instagram" width="36" height="36" />
                  <p className="wa-text mb-0">Admin Jaya Group</p>
                </button>
              </LazyLoad>
              <div className="footer my-5">
                <p>©copyright @tokokopijaya</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Dashboard;
