import "../css/Home.css";
import OutletBox from "../components/OutletBox";

const Home = () => {
  return (
    <div className="homeFrame">
      <h1 className="titlePage">TOKO KOPI JAYA</h1>
      <OutletBox NamaOutlet="IJEN" />
      <OutletBox NamaOutlet="BEGAWAN" />
      <OutletBox NamaOutlet="SUKUN" />
      <OutletBox NamaOutlet="JBDM" />
      <OutletBox NamaOutlet="SAWOJAJAR" />
    </div>
  );
};

export default Home;
