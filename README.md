# AI Deal Qualification Engine (MVP)

## Overview
This is a 3-page B2B deal qualification tool built with Lovable and Supabase.

The system allows a sales team to:
- Create and store new deals
- View all deals in a table
- Run qualification scoring
- Save AI (mock) results back to the database

---

## Tech Stack
- Frontend: Lovable (React)
- Database: Supabase (Postgres)
- Qualification logic: Deterministic mock scoring (no OpenAI key)

---

## Features

### 1. Deals List (/)
Displays:
- Company
- Industry
- Budget
- AI Score
- Status (Hot / Warm / Cold)

### 2. New Deal (/deals/new)
Validated form that inserts into:
public.deals

### 3. Deal Details (/deals/:id)
- Shows deal information
- Runs qualification scoring
- Saves results to:
  - ai_score
  - ai_classification
  - ai_risks
  - ai_next_step
  - ai_reasoning
  - ai_model = "mock"

---

## Database

Table: public.deals

Schema is stored in:
- db/schema.sql
- db/seed.sql

---

## Current Status

MVP complete.
External Supabase connected.
Qualification engine working (mock version).

Future improvement:
Replace mock scorer with real AI API.
