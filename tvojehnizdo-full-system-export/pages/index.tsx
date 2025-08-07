import Head from "next/head";

export default function Home() {
  return (
    <>
      <Head>
        <title>Tvoje Hnízdo</title>
        <meta name="description" content="Plně funkční systém pro modulární domy" />
      </Head>
      <main style={{ padding: "2rem", textAlign: "center" }}>
        <h1 style={{ fontSize: "2.5rem" }}>🏠 Tvoje Hnízdo je plně spuštěno</h1>
        <p style={{ fontSize: "1.25rem", marginTop: "1rem" }}>
          Konfigurátor, katalog, AI a formuláře jsou připraveny k použití.
        </p>
      </main>
    </>
  );
}