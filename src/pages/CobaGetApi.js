import { useState, useEffect } from "react";
import axios from "axios";

const CobaGetApi = () => {
  const baseUrl = "http://localhost:3001/";

  const [user, setUser] = useState([]);

  useEffect(() => {
    axios.get(baseUrl).then((response) => {
      setUser(response.data[0].payload);
      console.log(response.data[0].payload);
    });
    // console.log(user.data);
    // fetch("http://localhost/API_tokokopijaya/tes.php")
    //   .then((response) => response.json())
    //   .then((json) => console.log(json));
  }, []);

  return (
    <>
      <ul>
        {user.map((item, index) => (
          <li key={index}>{item.Nama}</li>
        ))}
      </ul>
    </>
  );
};

export default CobaGetApi;
