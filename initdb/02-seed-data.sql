-- Clear existing data
TRUNCATE TABLE swipes, matches, messages, profile_interests, profile_photos, profiles, users, interests CASCADE;


-- Insert 5 comprehensive users
INSERT INTO users (id, email, password_hash, is_verified)
VALUES 
    ('user_001', 'alice.martin@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj/VQUmGJC3W', true),
    ('user_002', 'bob.dupont@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj/VQUmGJC3W', true),
    ('user_003', 'claire.rousseau@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj/VQUmGJC3W', true),
    ('user_004', 'david.bernard@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj/VQUmGJC3W', true),
    ('user_005', 'emma.lefevre@example.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj/VQUmGJC3W', true);

-- Insert 5 comprehensive profiles
INSERT INTO profiles (
    id, user_id, first_name, bio, date_of_birth, gender, sexual_orientation, 
    interested_in_genders, location_city, location_country, latitude, longitude,
    max_distance, min_age, max_age, drinks_level, smoke_level, looking_for,
    onboarding_completed
)
VALUES
    (
        '11111111-1111-1111-1111-111111111111', 
        'user_001', 
        'Alice', 
        'Passionnée de voyage et de photographie. J''adore découvrir de nouveaux endroits et capturer des moments uniques. Toujours partante pour une nouvelle aventure ! 📸✈️',
        '1995-03-15', 
        'female', 
        'straight', 
        ARRAY['male'], 
        'Paris', 
        'France', 
        48.8566, 
        2.3522,
        50,
        23,
        35,
        'i_drink_socially',
        'i_dont_smoke',
        'relationship',
        true
    ),
    (
        '22222222-2222-2222-2222-222222222222', 
        'user_002', 
        'Bob', 
        'Chef cuisinier passionné. J''aime créer de nouveaux plats et partager de bons moments autour d''un repas. La cuisine est mon langage d''amour ! 👨‍🍳🍝',
        '1992-07-22', 
        'male', 
        'straight', 
        ARRAY['female'], 
        'Lyon', 
        'France', 
        45.7640, 
        4.8357,
        80,
        25,
        40,
        'i_drink_often',
        'i_dont_smoke',
        'relationship',
        true
    ),
    (
        '33333333-3333-3333-3333-333333333333', 
        'user_003', 
        'Claire', 
        'Artiste peintre et amoureuse de la nature. Je trouve mon inspiration dans les couchers de soleil et les paysages urbains. Créons ensemble de beaux souvenirs ! 🎨🌅',
        '1997-11-08', 
        'female', 
        'bisexual', 
        ARRAY['male', 'female'], 
        'Marseille', 
        'France', 
        43.2965, 
        5.3698,
        60,
        22,
        32,
        'i_drink_socially',
        'i_smoke_occasionally',
        'casual',
        true
    ),
    (
        '44444444-4444-4444-4444-444444444444', 
        'user_004', 
        'David', 
        'Développeur passionné de technologie et amateur de jeux vidéo. Quand je ne code pas, je lis ou je fais du sport. Toujours curieux d''apprendre ! 💻🎮',
        '1990-05-03', 
        'male', 
        'straight', 
        ARRAY['female'], 
        'Toulouse', 
        'France', 
        43.6047, 
        1.4442,
        100,
        24,
        35,
        'i_dont_drink',
        'i_dont_smoke',
        'friendship',
        true
    ),
    (
        '55555555-5555-5555-5555-555555555555', 
        'user_005', 
        'Emma', 
        'Professeure de yoga et danseuse. Je crois au pouvoir de la méditation et du mouvement pour transformer nos vies. Zen attitude ! 🧘‍♀️💃',
        '1994-09-18', 
        'female', 
        'straight', 
        ARRAY['male'], 
        'Nice', 
        'France', 
        43.7102, 
        7.2620,
        70,
        26,
        38,
        'i_dont_drink',
        'i_dont_smoke',
        'relationship',
        true
    );

-- Insert multiple profile photos for each user
INSERT INTO profile_photos (profile_id, photo_url, is_primary, photo_order)
VALUES
    -- Alice's photos
    ('11111111-1111-1111-1111-111111111111', 'https://images.unsplash.com/photo-1494790108755-2616b612b829', true, 1),
    ('11111111-1111-1111-1111-111111111111', 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1', false, 2),
    ('11111111-1111-1111-1111-111111111111', 'https://images.unsplash.com/photo-1513475382585-d06e58bcb0e0', false, 3),
    
    -- Bob's photos
    ('22222222-2222-2222-2222-222222222222', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d', true, 1),
    ('22222222-2222-2222-2222-222222222222', 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64', false, 2),
    ('22222222-2222-2222-2222-222222222222', 'https://images.unsplash.com/photo-1556909114-f6e7ad7d3136', false, 3),
    
    -- Claire's photos
    ('33333333-3333-3333-3333-333333333333', 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80', true, 1),
    ('33333333-3333-3333-3333-333333333333', 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e', false, 2),
    ('33333333-3333-3333-3333-333333333333', 'https://images.unsplash.com/photo-1506863530036-1efeddceb993', false, 3),
    
    -- David's photos
    ('44444444-4444-4444-4444-444444444444', 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e', true, 1),
    ('44444444-4444-4444-4444-444444444444', 'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7', false, 2),
    
    -- Emma's photos
    ('55555555-5555-5555-5555-555555555555', 'https://images.unsplash.com/photo-1544005313-94ddf0286df2', true, 1),
    ('55555555-5555-5555-5555-555555555555', 'https://images.unsplash.com/photo-1517841905240-472988babdf9', false, 2),
    ('55555555-5555-5555-5555-555555555555', 'https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453', false, 3);

-- Link diverse interests to profiles
INSERT INTO profile_interests (profile_id, interest_id)
SELECT '11111111-1111-1111-1111-111111111111', id FROM interests WHERE name IN ('Photography', 'Traveling', 'Hiking', 'Coffee');

INSERT INTO profile_interests (profile_id, interest_id)
SELECT '22222222-2222-2222-2222-222222222222', id FROM interests WHERE name IN ('Cooking', 'Music', 'Reading', 'Movies');

INSERT INTO profile_interests (profile_id, interest_id)
SELECT '33333333-3333-3333-3333-333333333333', id FROM interests WHERE name IN ('Art', 'Photography', 'Music', 'Dancing');

INSERT INTO profile_interests (profile_id, interest_id)
SELECT '44444444-4444-4444-4444-444444444444', id FROM interests WHERE name IN ('Gaming', 'Reading', 'Fitness', 'Writing');

INSERT INTO profile_interests (profile_id, interest_id)
SELECT '55555555-5555-5555-5555-555555555555', id FROM interests WHERE name IN ('Yoga', 'Dancing', 'Swimming', 'Coffee');

-- Insert various swipes to create realistic interactions
INSERT INTO swipes (swiper_id, swiped_id, is_like)
VALUES
    -- Alice likes Bob and Claire
    ('11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', true),
    ('11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333', true),
    ('11111111-1111-1111-1111-111111111111', '44444444-4444-4444-4444-444444444444', false),
    
    -- Bob likes Alice and Emma
    ('22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', true),
    ('22222222-2222-2222-2222-222222222222', '55555555-5555-5555-5555-555555555555', true),
    ('22222222-2222-2222-2222-222222222222', '33333333-3333-3333-3333-333333333333', false),
    
    -- Claire likes Alice and David
    ('33333333-3333-3333-3333-333333333333', '11111111-1111-1111-1111-111111111111', true),
    ('33333333-3333-3333-3333-333333333333', '44444444-4444-4444-4444-444444444444', true),
    
    -- David likes Claire and Emma
    ('44444444-4444-4444-4444-444444444444', '33333333-3333-3333-3333-333333333333', true),
    ('44444444-4444-4444-4444-444444444444', '55555555-5555-5555-5555-555555555555', false),
    
    -- Emma likes Bob
    ('55555555-5555-5555-5555-555555555555', '22222222-2222-2222-2222-222222222222', true);

-- Insert matches based on mutual likes
INSERT INTO matches (profile1_id, profile2_id)
VALUES 
    ('11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222'),
    ('11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333'),
    ('22222222-2222-2222-2222-222222222222', '55555555-5555-5555-5555-555555555555'),
    ('33333333-3333-3333-3333-333333333333', '44444444-4444-4444-4444-444444444444');

-- Insert realistic conversation messages
INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '11111111-1111-1111-1111-111111111111', 'Salut Bob ! J''ai vu que tu es chef, ça doit être passionnant ! 👨‍🍳'
FROM matches m WHERE m.profile1_id = '11111111-1111-1111-1111-111111111111' AND m.profile2_id = '22222222-2222-2222-2222-222222222222';

INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '22222222-2222-2222-2222-222222222222', 'Salut Alice ! Oui j''adore ça, et toi la photographie c''est ton métier ou ta passion ?'
FROM matches m WHERE m.profile1_id = '11111111-1111-1111-1111-111111111111' AND m.profile2_id = '22222222-2222-2222-2222-222222222222';

INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '11111111-1111-1111-1111-111111111111', 'C''est ma passion ! J''aimerais beaucoup photographier tes créations culinaires un jour 📸'
FROM matches m WHERE m.profile1_id = '11111111-1111-1111-1111-111111111111' AND m.profile2_id = '22222222-2222-2222-2222-222222222222';

INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '33333333-3333-3333-3333-333333333333', 'Hey Alice ! J''adore tes photos de voyage, tu as l''œil artistique ! 🎨'
FROM matches m WHERE m.profile1_id = '11111111-1111-1111-1111-111111111111' AND m.profile2_id = '33333333-3333-3333-3333-333333333333';

INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '22222222-2222-2222-2222-222222222222', 'Salut Emma ! Ton profil yoga m''intrigue, tu donnes des cours ?'
FROM matches m WHERE m.profile1_id = '22222222-2222-2222-2222-222222222222' AND m.profile2_id = '55555555-5555-5555-5555-555555555555';

INSERT INTO messages (match_id, sender_id, content)
SELECT m.id, '55555555-5555-5555-5555-555555555555', 'Salut Bob ! Oui je donne des cours à Nice, et toi tu cuisines végétarien parfois ? 🧘‍♀️'
FROM matches m WHERE m.profile1_id = '22222222-2222-2222-2222-222222222222' AND m.profile2_id = '55555555-5555-5555-5555-555555555555';

-- Done
SELECT 'Complete seed with 5 detailed users executed successfully' AS status;
