import Sidebar from "@/components/Sidebar";
import Header from "@/components/Header";
import React from "react";


export default function Home() {
  return (
    <div className="flex">
      <Sidebar />
      <div className="flex-1">
        <Header title="Página Inicial" username="Letícia Anhaia"/>
        <main>
        <div className="flex gap-4 justify-center mt-4">
        <div className="p-16 bg-gray-200 rounded-lg">
          Dados 1
        </div>
        <div className="p-16 bg-gray-200 rounded-lg">
          Dados 2
        </div>
        <div className="p-16 bg-gray-200 rounded-lg">
          Dados 3
        </div>
        <div className="p-16 bg-gray-200 rounded-lg">
          Dados 4
        </div>
      </div>

      <div className="flex gap-4 justify-center mt-20">
        <div className="p-20 bg-gray-200 rounded-lg">
          Dados 1
        </div>
        <div className="p-20 bg-gray-200 rounded-lg">
          Dados 2
      </div>
      </div>
      </main>
      </div>
    </div>

  );
}
