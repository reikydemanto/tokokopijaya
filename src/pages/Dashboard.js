import { useEffect, useState } from "react";
import OutletCard from "../components/OutletCard";
import "../css/Dashboard.css";
import axios from "axios";
import kirin from "../images/kirin.png";
import { Icon } from "@iconify/react";
import LazyLoad from "react-lazy-load";
import { useSearchParams } from "react-router-dom";

const Dashboard = () => {
  const [outlet, setOutlet] = useState([]);
  const [outletPertama, setOutletPertama] = useState(null);
  const [searchParams] = useSearchParams();

  const baseUrlOutletPertama = `http://localhost:3001/pertama/${searchParams.get(
    "outlet"
  )}`;

  const baseUrl = `http://localhost:3001/${searchParams.get("outlet")}`;

  useEffect(() => {
    if (outlet.length === 0) {
      getDataFromApi();
    } else {
      // console.log(outletPertama);
    }
  }, [outlet, outletPertama]);

  const getDataFromApi = () => {
    axios.get(baseUrl).then((response) => {
      setOutlet(response.data[0].payload);
    });
    if (searchParams.get("outlet") != null) {
      axios.get(baseUrlOutletPertama).then((response) => {
        if (response.data[0].payload[0] === undefined) {
          setOutletPertama(null);
        } else {
          setOutletPertama(response.data[0].payload[0]);
        }
      });
      console.log("PARAMS ADA ISINYA");
    } else {
      console.log("NULL");
    }
  };

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
              {outletPertama == null ? null : (
                <LazyLoad>
                  <OutletCard
                    tipe={outletPertama.TIPE}
                    nama={outletPertama.NAMA_OUTLET}
                    gambar={outletPertama.GAMBAR}
                    shopee={outletPertama.SHOPEEFOOD}
                    grab={outletPertama.GRABFOOD}
                    gojek={outletPertama.GOFOOD}
                    gmaps={outletPertama.LINK_GMAPS}
                  />
                </LazyLoad>
              )}
              {outlet.map((item, index) => (
                <LazyLoad key={index}>
                  <OutletCard
                    tipe={item.TIPE}
                    nama={item.NAMA_OUTLET}
                    gambar={item.GAMBAR}
                    shopee={item.SHOPEEFOOD}
                    grab={item.GRABFOOD}
                    gojek={item.GOFOOD}
                    gmaps={item.LINK_GMAPS}
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
                  className="btn button-sosmed instagram Pop-SemiBold mx-auto mb-5 py-2 shadow"
                  style={{
                    backgroundColor: `radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%,#d6249f 60%,#285AEB 90%`,
                    background: "#d6249f",
                  }}
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
