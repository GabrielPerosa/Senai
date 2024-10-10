
import React from "react";
import Image from "next/image";
import Navbar from "./Navbar";

export default function Sidebar() {

  return (
    <aside className="sidebar">
      <Image src="/images/logo.jpg" width={1000} height={0}
        className="h-28 mb-4 rounded-lg"alt="logo"
      />
    <Navbar />
    </aside>
    
  );
}


//mb => <margin-bottom>
// mr - margin-right
// p - padding
