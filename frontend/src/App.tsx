import React from 'react';
import { connectWallet } from './connect';
import { voteA, voteB, voteC } from './contract';

function App() {
  return (
    <div style={{ padding: "20px", fontFamily: "sans-serif" }}>
      <h1>Stacks Poll DApp</h1>
      <button onClick={connectWallet} style={{ margin: "5px" }}>Connect Wallet</button>
      <div style={{ marginTop: "10px" }}>
        <button onClick={voteA} style={{ margin: "5px" }}>Vote A</button>
        <button onClick={voteB} style={{ margin: "5px" }}>Vote B</button>
        <button onClick={voteC} style={{ margin: "5px" }}>Vote C</button>
      </div>
    </div>
  );
}

export default App;
