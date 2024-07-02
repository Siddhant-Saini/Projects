import React, { useState } from "react";
import "./experience.css";
import { HiOutlineAcademicCap, HiOutlineBriefcase, HiOutlineCalendar } from "react-icons/hi";

const Experience = () => {
    const [toggleState, setToggleState] = useState(1);

    const toggleTab = (index) => {
        setToggleState(index);
    };
  
    return (
        <section className="qualification section " id="experience" >
            <br/>
      <br/>
     
            <h2 className="section__title">Experience / Roles and Responsibilities </h2>
            <span className="section__subtitle"> 1 month <b>Industrial Experience</b> <p>3 year Student Club Experience</p> </span>
           

            <div className="qualification__container container">
                <div className="qualification__tabs">
                    <div 
                        className={toggleState === 1 ? "qualification__button button--flex qualification__active" 
                        : "qualification__button button--flex"} 
                        onClick={() => toggleTab(1)}
                    >
                        <HiOutlineAcademicCap className="qualification__icon" />
                        Experience
                    </div>
                    <div 
                        className={toggleState === 2 ? "qualification__button button--flex qualification__active" 
                        : "qualification__button button--flex"} 
                        onClick={() => toggleTab(2)}
                    >
                        <HiOutlineBriefcase className="qualification__icon" />
                        Roles & Responsibilities
                    </div>
                </div>

                <div className="qualification__sections">
                    <div className={toggleState === 1 ? "qualification__content qualification__content-active"
                        : "qualification__content"}>
                        <div className="qualification__data">
                            <div>
                                <h3 className="qualification__title">Amazon ML Summer School</h3>
                                <span className="qualification__subtitle"><b>Amazon</b><p> Amazon ML Summer School offers an intensive course on key ML topics like Supervised Learning, Deep Neural Networks, and Generative AI, allowing students to learn directly from Amazon's leading scientists and prepare for a career in machine learning.</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    July'24-Present
                                </div>
                            </div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            
                           
                        </div>
                        <div className="qualification__data">
                          
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                            <div>
                                <h3 className="qualification__title">Project Inter</h3>
                                <span className="qualification__subtitle"><b>Intel Corporation</b><p>Running Generative AI on Intel AI to achieve efficient Focusing on enhancing these LLM models with fine-tuning, leveraging Intel® OpenVINO™ to optimize performance.</p></span>
                                
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    May'24-July'24
                                </div>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div>
                                <h3 className="qualification__title">Web Development Intern</h3>
                                <span className="qualification__subtitle"><b>Prodigy Tech</b><p> I'm working on advanced web development projects using the latest technologies to create innovative and user-friendly web applications. Stay tuned for updates!</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    May'24-July'24
                                </div>
                            </div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                        </div>
                    </div>
                    <div className={toggleState === 2 ? "qualification__content qualification__content-active"
                        : "qualification__content"}>
                        <div className="qualification__data">
                            <div>
                                <h3 className="qualification__title">Executive</h3>
                                <span className="qualification__subtitle"><b>E-Cell MIT</b><p>Official Entrepreneuship Club of MIT, Manipal. To empower entrepreneurs by providing a vibrant start-up ecosystem and transforming ideas into successful ventures through dedicated mentorship.</p>
                                </span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    December'22-December'23
                                </div>
                            </div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            
                           
                        </div>
                        <div className="qualification__data">
                          
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                            <div>
                                <h3 className="qualification__title">Core Commitee</h3>
                                <span className="qualification__subtitle"><b>Apple Developers' Group, Manipal</b><p>A community of budding developers and students focused on development, making an impact through code.</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    December'21-December'23
                                </div>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div>
                                <h3 className="qualification__title">Managing Commitee</h3>
                                <span className="qualification__subtitle"><b>The Data Alchemists</b><p>Official Data Science Club of MIT, Manipal. Currently serving as President, overseeing all club activities and initiatives aimed at promoting data science education and exploration within the MIT Manipal community.</p>
                                </span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    January'21-October'21
                                </div>
                            </div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            
                           
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                            <div>
                                <h3 className="qualification__title">Oragnizing Commitee Member</h3>
                                <span className="qualification__subtitle"><b>Revels MIT Manipal</b><p>MIT Manipal's National level Annual Sports and Cultural Fest.</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    March'23-April'23
                                </div>
                            </div>
                        </div> 
                        <div className="qualification__data">
                            <div>
                                <h3 className="qualification__title">Oragnizing Commitee Member</h3>
                                <span className="qualification__subtitle"><b>TechTatva MIT Manipal</b><p>MIT Manipal's National level Technical Fest.</p>
                                </span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    Sep'22-Oct'22
                                </div>
                            </div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                        </div>
                        <div className="qualification__data">
                            <div></div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                            <div>
                                <h3 className="qualification__title">Organized HackXhibit’23 </h3>
                                <span className="qualification__subtitle"><b>Applab Hackathon</b><p>MIT Manipal's Natinal level Hackathon.</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    April'22
                                </div>
                            </div>
                        </div>
                        {/* <div className="qualification__data">
                            <div></div>
                            <div>
                                <span className="qualification__rounder"></span>
                                <span className="qualification__line"></span>
                            </div>
                            <div>
                                <h3 className="qualification__title">Core Committee Member</h3>
                                <span className="qualification__subtitle"><b>MIT-GPT, Techtatva’23</b><p>Official Technical fest of MIT manipal</p></span>
                                <div className="qualification__calendar">
                                    <HiOutlineCalendar className="qualification__calendar-icon" />
                                    August'23-Oct'23
                                </div>
                            </div>
                        </div> */}
                        
                    </div>
                </div>
            </div>
        </section> 
    );
}

export default Experience;
