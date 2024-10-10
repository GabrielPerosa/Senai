import Sidebar from "@/components/Sidebar";
import Header from "@/components/Header";
import React from "react";


export default function Home() {
  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1">
        <Header title="Sensores" username="Letícia Anhaia"/>
        <main>
        <h1>Sensores</h1>
      </main>
      </div>
    </div>

  );
}
