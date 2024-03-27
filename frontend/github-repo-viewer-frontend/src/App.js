// src/App.js
import React from 'react';
import './App.css';
import RepoDetails from './RepoDetails';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>GitHub Repo Viewer</h1>
        <RepoDetails owner="ThePrimeagen" repo="fem-git" />
      </header>
    </div>
  );
}

export default App;
