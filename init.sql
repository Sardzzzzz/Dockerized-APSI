-- Consent Trends Table
CREATE TABLE IF NOT EXISTS public.consent_trends
(
    id SERIAL PRIMARY KEY,
    date date NOT NULL,
    agree integer NOT NULL,
    disagree integer NOT NULL,
    CONSTRAINT unique_date UNIQUE (date)
);

-- Demographics Table
CREATE TABLE IF NOT EXISTS public.demographics
(
    id SERIAL PRIMARY KEY,
    age_range VARCHAR(20) NOT NULL,
    skin_color VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    created_at TIMESTAMP DEFAULT now(),
    CONSTRAINT demographics_gender_check CHECK (gender IN ('male', 'female'))
);

-- Feedback Table
CREATE TABLE IF NOT EXISTS public.feedback
(
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    date DATE NOT NULL DEFAULT CURRENT_DATE
);

-- Products Table
CREATE TABLE IF NOT EXISTS public.products
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC NOT NULL
);

-- Sales Table
CREATE TABLE IF NOT EXISTS public.sales
(
    id SERIAL PRIMARY KEY,
    product VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    demographic VARCHAR(100),
    used BOOLEAN,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- System Logs Table
CREATE TABLE IF NOT EXISTS public.system_logs
(
    id SERIAL PRIMARY KEY,
    "timestamp" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    category VARCHAR(100) NOT NULL
);
-- POPULATE PRODUCTS TABLE
INSERT INTO products (name, price) VALUES
('ACID BLACK INDU', 350),
('Black White x Rust Brown White Stripes Tee''s', 450),
('CLASSIC STRIPED TEES', 450),
('COMBI ASH GRAY BLACKNECK', 430),
('COMBI JADE BLUE BLACKNECK', 430),
('Combi Red x Black Goods x INDU Plain Crewneck', 430),
('COMBination Applegreen Yellowneck INDU Crewneck Shirt', 430),
('Combination Crewneck Navyblue and Yellow', 430),
('COMBINATION SLATEBLUE BLACKNECK', 430),
('Dipaning Altee INDU Shirts', 300),
('EMBROIDERED INDU LOGO TEE', 550),
('GALAXY EXPLORATION INDU SHIRT', 680),
('Goods Supply Crewneck INDU Shirt', 400),
('HGG SCRIPT TEES BY INDU', 350),
('HMGRWN GOODS ANGELES CITY CREWNECK INDU Shirt', 530),
('HMGRWN INDU Glow in the Dark Crewneck Shirt', 470),
('HMGRWN INDU Longsleeve', 530),
('INDU BLACK WHITE AND OFF WHITE', 350),
('INDU Black w/ White Outline Shirt', 300),
('INDU BLACK (Female)', 350),
('INDU Black (Unisex)', 350),
('INDU Classic Arc Logo Shirt', 400),
('INDU COTTON CANDY', 450),
('INDU CREST GLOW IN THE DARK SHIRT', 470),
('INDU EMBROIDERED BOX LOGO SHIRT', 500),
('INDU Embroidered Box Logo Tee', 500),
('INDU FINE LINE', 470),
('INDU GLOWING ASTRO BOY SHIRT', 470),
('INDU HALO-HALO TEE', 430),
('INDU INDUSTYLE Shirt', 400),
('INDU LOGO TYPE', 450),
('INDU NAVY', 350),
('INDU Red Box Shirt', 400),
('INDU Shirt', 350),
('INDU STARGAZER TEE', 470),
('INDU White Goods Tee', 350),
('Plain Army Green Crewneck INDU Shirt', 350),
('Plain Black Crewneck INDU Shirt', 350),
('Plain Maroon Crewneck INDU Shirt', 350),
('Plain Navyblue Crewneck INDU Shirt', 350),
('Plain White Crewneck INDU Shirt', 350)
ON CONFLICT DO NOTHING;
