create table public.deals (
    id uuid primary key default gen_random_uuid(),
    created_at timestamptz default now(),

    -- User input fields
    company_name text,
    industry text,
    company_size text,
    budget_range text,
    request_type text,
    notes text,

    -- AI output fields
    ai_score int4,
    ai_classification text,
    ai_risks text,
    ai_next_step text,
    ai_reasoning text,
    ai_model text
);