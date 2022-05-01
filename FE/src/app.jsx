import React from "react";
import { createRoot } from "react-dom/client";

function App(){
    return (<h1>Hello World! odio{(new Date()).toLocaleString()}</h1>);
}

createRoot(document.querySelector("#app")).render(<App />);
