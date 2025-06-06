# 📚 SmartRecs – Real-Time Recommendation System

## Overview

This project is my attempt to build a real-time recommendation system using the MovieLens dataset. The goal is to simulate the kind of systems used at companies like Google, Netflix, or Amazon—end-to-end: from data to deployed API.

---

## 🔧 Project Goals

- ✅ Learn how large-scale recommender systems work
- ✅ Practice working with real-world data (MovieLens 100k)
- ✅ Build a model that can generate personalized recommendations
- ✅ Serve those recommendations via an API (FastAPI)
- ✅ Simulate user interactions in real-time
- ✅ Containerize and potentially deploy (GCP or Render)

---

## 📁 Project Structure (WIP)
smartrecs/
│
├── data/ # Raw & cleaned MovieLens data
├── notebooks/ # EDA and model prototyping
├── app/ # FastAPI backend
├── simulate/ # Scripts for simulating user behavior
├── scripts/ # Utility scripts (data prep, training)
├── docker/ # Dockerfiles and configs
├── requirements.txt # Dependencies
└── README.md

---

## 🧪 Tech Stack

- **Python** – core language
- **Pandas, NumPy, Scikit-learn, Surprise** – for data wrangling + modeling
- **FastAPI** – lightweight web framework to serve recommendations
- **Redis or Kafka** – to simulate real-time streams (may experiment with both)
- **Docker** – to containerize the system
- **Jupyter Notebooks** – for initial exploration and prototyping

---

## 🔄 Planned Pipeline

1. **Data Cleaning**
   - Use MovieLens 100k dataset
   - Merge ratings and metadata
   - Save as flat cleaned CSV

2. **Model Building**
   - Start with User-Based and Item-Based CF
   - Then try Matrix Factorization with `Surprise`
   - Eventually explore Neural CF or sequence-based models

3. **Backend API**
   - FastAPI endpoint: `/recommend/{user_id}`
   - Serve top-N movie recommendations

4. **Simulated Streaming**
   - Write a script to simulate user behavior (views, clicks, ratings)
   - Push these into Redis/Kafka and potentially retrain/influence model

5. **Deployment (stretch goal)**
   - Dockerize everything
   - Try deployment on GCP Cloud Run or similar service

---

## 🗂️ Current Status

- Working on creating the preliminary model. 

---

## 📌 Notes to Self

- Prioritize making things modular
- Consider caching repeated recommendations
- Keep an eye on scalability — even if fake data, structure matters
- If I hit a wall, don’t overcomplicate — ship something that works first, then improve