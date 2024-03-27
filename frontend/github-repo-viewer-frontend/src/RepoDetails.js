// src/RepoDetails.js
import React, { useState, useEffect } from 'react';

function RepoDetails({ owner, repo }) {
  const [details, setDetails] = useState({ pull_requests: 0, issues: 0 });

  useEffect(() => {
    const url = `http://localhost:3001/repos/${owner}/${repo}`;
    fetch(url)
      .then(response => response.json())
      .then(data => {
        setDetails({
          pull_requests: data.pull_requests,
          issues: data.issues
        });
      })
      .catch(error => console.error('Error fetching data:', error));
  }, [owner, repo]);

  return (
    <div>
      <h2>{owner}/{repo} Details</h2>
      <p>Open Pull Requests: {details.pull_requests}</p>
      <p>Open Issues: {details.issues}</p>
    </div>
  );
}

export default RepoDetails;
