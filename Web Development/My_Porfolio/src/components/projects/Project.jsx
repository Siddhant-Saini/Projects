import React, { useState } from 'react';
import './project.css';
import { HiOutlineClipboardList, HiOutlineArrowSmRight, HiOutlineCheckCircle, HiX } from 'react-icons/hi';

const Services = () => {
    const [toggleState, setToggleState] = useState(0);

    const toggleTab = (index) => {
        setToggleState(index);
    };

    return (
        <section className="services section" id="projects">
            <br />
            <h2 className="section__title">Projects</h2>
            <span className="section__subtitle"> Worked on Many projects During my Btech Degree </span>
        
            <div className="services__container container grid">
                <div className="services__content">
                <div>
                    <HiOutlineClipboardList className="services__icon" />
                    <h3 className="services__title">Data Science Project</h3>
                </div>
                <span className="services__button" onClick={() => toggleTab(1)}>
                    View More
                    <HiOutlineArrowSmRight className="services__button-icon" />
                </span>
                <div className={toggleState === 1 ? "services__modal active-modal" : "services__modal"}>
                    <div className="services__modal-content">
                        <HiX onClick={() => toggleTab(0)} className="services__modal-close" />
                        <h3 className="services__modal-title">AI-ML-NLP-CV</h3>
                        <p className="services__modal-description">
                        Created 7 quality projects link will be added soon.
                        </p>
                        <ul className="services__modal-services grid">
                            <li className="services__modal-service">
                                <HiOutlineCheckCircle className="services__modal-icon" />
                                <p className="services__modal-info">
                                    Medical Chatbot - AI
                                </p>
                            </li>
                            <li className="services__modal-service">
                                <HiOutlineCheckCircle className="services__modal-icon" />
                                <p className="services__modal-info">
                                    Face Recognition and Detection System - Computer Vision
                                </p>
                            </li>
                            <li className="services__modal-service">
                                <HiOutlineCheckCircle className="services__modal-icon" />
                                <p className="services__modal-info">
                                    House Price Prediction - ML
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div className="services__content">
                    <div>
                        <HiOutlineClipboardList className="services__icon" />
                        <h3 className="services__title">Web Development</h3>
                    </div>
                    <span className="services__button" onClick={() => toggleTab(3)}>
                        View More
                        <HiOutlineArrowSmRight className="services__button-icon" />
                    </span>
                    <div className={toggleState === 3 ? "services__modal active-modal" : "services__modal"}>
                        <div className="services__modal-content">
                            <HiX onClick={() => toggleTab(0)} className="services__modal-close" />
                            <h3 className="services__modal-title">Developer</h3>
                            <p className="services__modal-description">
                            Created 6 quality projects link will be added soon.
                            </p>
                            <ul className="services__modal-services grid">
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                        Movie Streaming Website
                                    </p>
                                </li>
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                        My Portfolio
                                    </p>
                                </li>
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                    Stopwatch Web Application
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div className="services__content">
                    <div>
                        <HiOutlineClipboardList className="services__icon" />
                        <h3 className="services__title">Big Data and DBMS </h3>
                    </div>
                    <span className="services__button" onClick={() => toggleTab(2)}>
                        View More
                        <HiOutlineArrowSmRight className="services__button-icon" />
                    </span>
                    <div className={toggleState === 2 ? "services__modal active-modal" : "services__modal"}>
                        <div className="services__modal-content">
                            <HiX onClick={() => toggleTab(0)} className="services__modal-close" />
                            <h3 className="services__modal-title">Big Data and DBMS</h3>
                            <p className="services__modal-description">
                                Database management system and networking link will be added soon
                            </p>
                            <ul className="services__modal-services grid">
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                        Bus Reservation system
                                    </p>
                                </li>
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                        Airline Operational Efficiency Analysis
                                    </p>
                                </li>
                                <li className="services__modal-service">
                                    <HiOutlineCheckCircle className="services__modal-icon" />
                                    <p className="services__modal-info">
                                        to be added
                                    </p>
                                </li>
                                
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
}

export default Services;
