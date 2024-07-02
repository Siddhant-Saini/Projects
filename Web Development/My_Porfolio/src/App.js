import React from 'react';
import Header from './components/header/Header';
import Home from './components/home/Home';
import './App.css';
import About from './components/about/About';
import Contact from './components/contact/Contact';
import Skills from './components/skills/Skills';
import Project from './components/projects/Project'
import Experience from './components/experience/Experience';
import Footer from './components/footer/Footer';
import Scrollup from './components/scrollup/Scrollup'

function App() {
  return (
    <>
    <Header />
    <main className= "main">
      <Home />
      <br/>
      <br/>
      
      <About />
      <br/>
      <br/>
      <Skills/>
      <br/>
      <br/>
      <Project/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <br/>
      <Experience/>
      <br/>
      <br/>
      <Contact/>
      <br/>
      <br/>
      {/* <Footer/> */}
      
      <Scrollup/>

    </main>
    </>
  );
}

export default App;
