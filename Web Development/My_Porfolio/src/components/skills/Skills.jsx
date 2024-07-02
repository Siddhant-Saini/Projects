import React from 'react';
import "./skills.css";
import Language from './Language';
import Developer from './Developer';
import SoftSkill from './SoftSkill';
import Tool from './Tool';

const Skills = () => {
  return (
    
    <section className="skills section" id="skills">
        <br/>
      <br/>
      
        <h2 className="section__title">Skills</h2>
        <span className="section__subtitle">Technical and Non - Technical Level</span>
        <br/>
     
      
        <div className="skills__container container grid">
            <Language />
            <Developer />
            <SoftSkill />  
            <Tool /> 
        </div>
    </section>
  );
}

export default Skills;