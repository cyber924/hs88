CREATE TABLE IF NOT EXISTS users(id TEXT PRIMARY KEY,email TEXT UNIQUE NOT NULL,name TEXT,password_hash TEXT NOT NULL,created_at TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS sessions(id TEXT PRIMARY KEY,user_id TEXT NOT NULL,expires_at TEXT NOT NULL,created_at TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS documents(id TEXT PRIMARY KEY,user_id TEXT NOT NULL,slug TEXT UNIQUE NOT NULL,type TEXT NOT NULL,domain TEXT NOT NULL,title TEXT NOT NULL,body TEXT NOT NULL,image_key TEXT,seo_title TEXT,seo_description TEXT,status TEXT NOT NULL DEFAULT 'draft',created_at TEXT NOT NULL,updated_at TEXT NOT NULL,published_at TEXT);
CREATE INDEX IF NOT EXISTS documents_public ON documents(status,domain);
