PGDMP         7                v            postgres    10.4    10.4 O    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            L           1262    12938    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Turkish_Turkey.1254' LC_CTYPE = 'Turkish_Turkey.1254';
    DROP DATABASE postgres;
             postgres    false            M           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    2892            	            2615    16402    MeetInterest    SCHEMA        CREATE SCHEMA "MeetInterest";
    DROP SCHEMA "MeetInterest";
             postgres    false            N           0    0    SCHEMA "MeetInterest"    COMMENT     .   COMMENT ON SCHEMA "MeetInterest" IS 'Schema';
                  postgres    false    9                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            O           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    4                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            P           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    2                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            Q           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16451    tb_chat    TABLE     �   CREATE TABLE "MeetInterest".tb_chat (
    chat_id integer NOT NULL,
    chat_time timestamp with time zone NOT NULL,
    message text,
    chat_user_id integer NOT NULL
);
 #   DROP TABLE "MeetInterest".tb_chat;
       MeetInterest         postgres    false    9            R           0    0    COLUMN tb_chat.chat_user_id    COMMENT     R   COMMENT ON COLUMN "MeetInterest".tb_chat.chat_user_id IS 'Konuştuğumuz kişi.';
            MeetInterest       postgres    false    202            �            1259    16449    tb_chat_chat_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_chat_chat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE "MeetInterest".tb_chat_chat_id_seq;
       MeetInterest       postgres    false    9    202            S           0    0    tb_chat_chat_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "MeetInterest".tb_chat_chat_id_seq OWNED BY "MeetInterest".tb_chat.chat_id;
            MeetInterest       postgres    false    201            �            1259    16468 	   tb_cities    TABLE     �   CREATE TABLE "MeetInterest".tb_cities (
    city_id bigint NOT NULL,
    "city name" character varying(50) NOT NULL,
    country_id integer NOT NULL
);
 %   DROP TABLE "MeetInterest".tb_cities;
       MeetInterest         postgres    false    9            T           0    0    TABLE tb_cities    COMMENT     X   COMMENT ON TABLE "MeetInterest".tb_cities IS 'şehirler ülkelerin idsini alacaklar. ';
            MeetInterest       postgres    false    206            �            1259    16466    tb_cities_city_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_cities_city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE "MeetInterest".tb_cities_city_id_seq;
       MeetInterest       postgres    false    9    206            U           0    0    tb_cities_city_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE "MeetInterest".tb_cities_city_id_seq OWNED BY "MeetInterest".tb_cities.city_id;
            MeetInterest       postgres    false    205            �            1259    16460 
   tb_country    TABLE       CREATE TABLE "MeetInterest".tb_country (
    id integer NOT NULL,
    iso character varying(2) NOT NULL,
    name character varying(50) NOT NULL,
    nicename character varying(50) NOT NULL,
    iso3 character varying(3),
    numcode smallint NOT NULL,
    phonecode integer NOT NULL
);
 &   DROP TABLE "MeetInterest".tb_country;
       MeetInterest         postgres    false    9            �            1259    16458    tb_country_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "MeetInterest".tb_country_id_seq;
       MeetInterest       postgres    false    9    204            V           0    0    tb_country_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "MeetInterest".tb_country_id_seq OWNED BY "MeetInterest".tb_country.id;
            MeetInterest       postgres    false    203            �            1259    16495 	   tb_images    TABLE     �   CREATE TABLE "MeetInterest".tb_images (
    img_id bigint NOT NULL,
    img_byte bytea NOT NULL,
    user_id integer NOT NULL
);
 %   DROP TABLE "MeetInterest".tb_images;
       MeetInterest         postgres    false    9            W           0    0    TABLE tb_images    COMMENT     �   COMMENT ON TABLE "MeetInterest".tb_images IS 'image ler direkt bu tabloya yüklensin. user_id o an yükleyen kişinin id sini alsın. yüklenen image e atanan id useraccount tablosuna gönderilsin.';
            MeetInterest       postgres    false    208            �            1259    16493    tb_images_img_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_images_img_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE "MeetInterest".tb_images_img_id_seq;
       MeetInterest       postgres    false    208    9            X           0    0    tb_images_img_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "MeetInterest".tb_images_img_id_seq OWNED BY "MeetInterest".tb_images.img_id;
            MeetInterest       postgres    false    207            �            1259    16440    tb_interest    TABLE     �   CREATE TABLE "MeetInterest".tb_interest (
    interest_id integer NOT NULL,
    interest_name character varying(48)[] NOT NULL,
    interest_genre json
);
 '   DROP TABLE "MeetInterest".tb_interest;
       MeetInterest         postgres    false    9            �            1259    16438    tb_interest_interest_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_interest_interest_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE "MeetInterest".tb_interest_interest_id_seq;
       MeetInterest       postgres    false    9    200            Y           0    0    tb_interest_interest_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "MeetInterest".tb_interest_interest_id_seq OWNED BY "MeetInterest".tb_interest.interest_id;
            MeetInterest       postgres    false    199            �            1259    16432    tb_useraccount    TABLE       CREATE TABLE "MeetInterest".tb_useraccount (
    user_name character varying(20)[] NOT NULL,
    name character varying(20)[],
    surname character varying(20)[],
    dateofcreation date NOT NULL,
    birthdate date,
    phone character varying(11)[],
    email character varying(35)[] NOT NULL,
    rating real NOT NULL,
    user_id integer NOT NULL,
    user_password character varying(15) NOT NULL,
    user_photo integer,
    chat_id integer,
    country integer NOT NULL,
    city integer,
    interest_id integer
);
 *   DROP TABLE "MeetInterest".tb_useraccount;
       MeetInterest         postgres    false    9            Z           0    0    TABLE tb_useraccount    COMMENT     c   COMMENT ON TABLE "MeetInterest".tb_useraccount IS 'Kullanıcı hesap bilgileri burada tutulacak.';
            MeetInterest       postgres    false    198            �            1259    24585    tb_useraccount_user_id_seq    SEQUENCE     �   CREATE SEQUENCE "MeetInterest".tb_useraccount_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE "MeetInterest".tb_useraccount_user_id_seq;
       MeetInterest       postgres    false    9    198            [           0    0    tb_useraccount_user_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "MeetInterest".tb_useraccount_user_id_seq OWNED BY "MeetInterest".tb_useraccount.user_id;
            MeetInterest       postgres    false    209            �
           2604    16454    tb_chat chat_id    DEFAULT     �   ALTER TABLE ONLY "MeetInterest".tb_chat ALTER COLUMN chat_id SET DEFAULT nextval('"MeetInterest".tb_chat_chat_id_seq'::regclass);
 F   ALTER TABLE "MeetInterest".tb_chat ALTER COLUMN chat_id DROP DEFAULT;
       MeetInterest       postgres    false    201    202    202            �
           2604    16471    tb_cities city_id    DEFAULT     �   ALTER TABLE ONLY "MeetInterest".tb_cities ALTER COLUMN city_id SET DEFAULT nextval('"MeetInterest".tb_cities_city_id_seq'::regclass);
 H   ALTER TABLE "MeetInterest".tb_cities ALTER COLUMN city_id DROP DEFAULT;
       MeetInterest       postgres    false    205    206    206            �
           2604    16463    tb_country id    DEFAULT     ~   ALTER TABLE ONLY "MeetInterest".tb_country ALTER COLUMN id SET DEFAULT nextval('"MeetInterest".tb_country_id_seq'::regclass);
 D   ALTER TABLE "MeetInterest".tb_country ALTER COLUMN id DROP DEFAULT;
       MeetInterest       postgres    false    203    204    204            �
           2604    16498    tb_images img_id    DEFAULT     �   ALTER TABLE ONLY "MeetInterest".tb_images ALTER COLUMN img_id SET DEFAULT nextval('"MeetInterest".tb_images_img_id_seq'::regclass);
 G   ALTER TABLE "MeetInterest".tb_images ALTER COLUMN img_id DROP DEFAULT;
       MeetInterest       postgres    false    208    207    208            �
           2604    16443    tb_interest interest_id    DEFAULT     �   ALTER TABLE ONLY "MeetInterest".tb_interest ALTER COLUMN interest_id SET DEFAULT nextval('"MeetInterest".tb_interest_interest_id_seq'::regclass);
 N   ALTER TABLE "MeetInterest".tb_interest ALTER COLUMN interest_id DROP DEFAULT;
       MeetInterest       postgres    false    200    199    200            �
           2604    24587    tb_useraccount user_id    DEFAULT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount ALTER COLUMN user_id SET DEFAULT nextval('"MeetInterest".tb_useraccount_user_id_seq'::regclass);
 M   ALTER TABLE "MeetInterest".tb_useraccount ALTER COLUMN user_id DROP DEFAULT;
       MeetInterest       postgres    false    209    198            ?          0    16451    tb_chat 
   TABLE DATA               T   COPY "MeetInterest".tb_chat (chat_id, chat_time, message, chat_user_id) FROM stdin;
    MeetInterest       postgres    false    202   l]       C          0    16468 	   tb_cities 
   TABLE DATA               M   COPY "MeetInterest".tb_cities (city_id, "city name", country_id) FROM stdin;
    MeetInterest       postgres    false    206   �]       A          0    16460 
   tb_country 
   TABLE DATA               _   COPY "MeetInterest".tb_country (id, iso, name, nicename, iso3, numcode, phonecode) FROM stdin;
    MeetInterest       postgres    false    204   �]       E          0    16495 	   tb_images 
   TABLE DATA               F   COPY "MeetInterest".tb_images (img_id, img_byte, user_id) FROM stdin;
    MeetInterest       postgres    false    208   �t       =          0    16440    tb_interest 
   TABLE DATA               Y   COPY "MeetInterest".tb_interest (interest_id, interest_name, interest_genre) FROM stdin;
    MeetInterest       postgres    false    200   �t       ;          0    16432    tb_useraccount 
   TABLE DATA               �   COPY "MeetInterest".tb_useraccount (user_name, name, surname, dateofcreation, birthdate, phone, email, rating, user_id, user_password, user_photo, chat_id, country, city, interest_id) FROM stdin;
    MeetInterest       postgres    false    198   �t       \           0    0    tb_chat_chat_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"MeetInterest".tb_chat_chat_id_seq', 1, false);
            MeetInterest       postgres    false    201            ]           0    0    tb_cities_city_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('"MeetInterest".tb_cities_city_id_seq', 1, false);
            MeetInterest       postgres    false    205            ^           0    0    tb_country_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"MeetInterest".tb_country_id_seq', 1, false);
            MeetInterest       postgres    false    203            _           0    0    tb_images_img_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"MeetInterest".tb_images_img_id_seq', 1, false);
            MeetInterest       postgres    false    207            `           0    0    tb_interest_interest_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"MeetInterest".tb_interest_interest_id_seq', 1, false);
            MeetInterest       postgres    false    199            a           0    0    tb_useraccount_user_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"MeetInterest".tb_useraccount_user_id_seq', 1, false);
            MeetInterest       postgres    false    209            �
           2606    24616    tb_chat chat_id_u 
   CONSTRAINT     W   ALTER TABLE ONLY "MeetInterest".tb_chat
    ADD CONSTRAINT chat_id_u UNIQUE (chat_id);
 C   ALTER TABLE ONLY "MeetInterest".tb_chat DROP CONSTRAINT chat_id_u;
       MeetInterest         postgres    false    202            �
           2606    16531    tb_country country_id_unique 
   CONSTRAINT     ]   ALTER TABLE ONLY "MeetInterest".tb_country
    ADD CONSTRAINT country_id_unique UNIQUE (id);
 N   ALTER TABLE ONLY "MeetInterest".tb_country DROP CONSTRAINT country_id_unique;
       MeetInterest         postgres    false    204            �
           2606    16507    tb_images img_uniques 
   CONSTRAINT     c   ALTER TABLE ONLY "MeetInterest".tb_images
    ADD CONSTRAINT img_uniques UNIQUE (img_id, user_id);
 G   ALTER TABLE ONLY "MeetInterest".tb_images DROP CONSTRAINT img_uniques;
       MeetInterest         postgres    false    208    208            �
           2606    16529    tb_interest interest_id_unique 
   CONSTRAINT     h   ALTER TABLE ONLY "MeetInterest".tb_interest
    ADD CONSTRAINT interest_id_unique UNIQUE (interest_id);
 P   ALTER TABLE ONLY "MeetInterest".tb_interest DROP CONSTRAINT interest_id_unique;
       MeetInterest         postgres    false    200            �
           2606    24599    tb_useraccount pk_user_id 
   CONSTRAINT     d   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT pk_user_id PRIMARY KEY (user_id);
 K   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT pk_user_id;
       MeetInterest         postgres    false    198            �
           2606    16476    tb_cities tb_cities_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY "MeetInterest".tb_cities
    ADD CONSTRAINT tb_cities_pkey PRIMARY KEY (city_id);
 J   ALTER TABLE ONLY "MeetInterest".tb_cities DROP CONSTRAINT tb_cities_pkey;
       MeetInterest         postgres    false    206            �
           2606    16465    tb_country tb_country_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "MeetInterest".tb_country
    ADD CONSTRAINT tb_country_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY "MeetInterest".tb_country DROP CONSTRAINT tb_country_pkey;
       MeetInterest         postgres    false    204            �
           2606    16503    tb_images tb_images_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "MeetInterest".tb_images
    ADD CONSTRAINT tb_images_pkey PRIMARY KEY (img_id);
 J   ALTER TABLE ONLY "MeetInterest".tb_images DROP CONSTRAINT tb_images_pkey;
       MeetInterest         postgres    false    208            �
           2606    16448    tb_interest tb_interest_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "MeetInterest".tb_interest
    ADD CONSTRAINT tb_interest_pkey PRIMARY KEY (interest_id);
 N   ALTER TABLE ONLY "MeetInterest".tb_interest DROP CONSTRAINT tb_interest_pkey;
       MeetInterest         postgres    false    200            �
           2606    16533    tb_cities unique_city_id 
   CONSTRAINT     ^   ALTER TABLE ONLY "MeetInterest".tb_cities
    ADD CONSTRAINT unique_city_id UNIQUE (city_id);
 J   ALTER TABLE ONLY "MeetInterest".tb_cities DROP CONSTRAINT unique_city_id;
       MeetInterest         postgres    false    206            �
           2606    16521     tb_useraccount user_email_unique 
   CONSTRAINT     d   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT user_email_unique UNIQUE (email);
 R   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT user_email_unique;
       MeetInterest         postgres    false    198            �
           2606    24601    tb_useraccount user_id_unique 
   CONSTRAINT     c   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT user_id_unique UNIQUE (user_id);
 O   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT user_id_unique;
       MeetInterest         postgres    false    198            �
           2606    16517    tb_useraccount user_name_unique 
   CONSTRAINT     g   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT user_name_unique UNIQUE (user_name);
 Q   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT user_name_unique;
       MeetInterest         postgres    false    198            �
           2606    16519     tb_useraccount user_phone_unique 
   CONSTRAINT     d   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT user_phone_unique UNIQUE (phone);
 R   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT user_phone_unique;
       MeetInterest         postgres    false    198            �
           2606    24609    tb_useraccount user_photo_u 
   CONSTRAINT     d   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT user_photo_u UNIQUE (user_photo);
 M   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT user_photo_u;
       MeetInterest         postgres    false    198            �
           1259    24622    fki_chat_id    INDEX     Q   CREATE INDEX fki_chat_id ON "MeetInterest".tb_useraccount USING btree (chat_id);
 '   DROP INDEX "MeetInterest".fki_chat_id;
       MeetInterest         postgres    false    198            �
           1259    24628    fki_chat_user_id    INDEX     T   CREATE INDEX fki_chat_user_id ON "MeetInterest".tb_chat USING btree (chat_user_id);
 ,   DROP INDEX "MeetInterest".fki_chat_user_id;
       MeetInterest         postgres    false    202            �
           1259    24607    fki_fk_user_id    INDEX     O   CREATE INDEX fki_fk_user_id ON "MeetInterest".tb_images USING btree (user_id);
 *   DROP INDEX "MeetInterest".fki_fk_user_id;
       MeetInterest         postgres    false    208            �
           2606    24623    tb_chat chat_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_chat
    ADD CONSTRAINT chat_user_id FOREIGN KEY (chat_user_id) REFERENCES "MeetInterest".tb_useraccount(user_id);
 F   ALTER TABLE ONLY "MeetInterest".tb_chat DROP CONSTRAINT chat_user_id;
       MeetInterest       postgres    false    198    2715    202            �
           2606    24617    tb_useraccount fk_chat_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT fk_chat_id FOREIGN KEY (chat_id) REFERENCES "MeetInterest".tb_chat(chat_id);
 K   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT fk_chat_id;
       MeetInterest       postgres    false    2731    202    198            �
           2606    24629    tb_useraccount fk_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT fk_city_id FOREIGN KEY (city) REFERENCES "MeetInterest".tb_cities(city_id);
 K   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT fk_city_id;
       MeetInterest       postgres    false    198    2738    206            �
           2606    16477    tb_cities fk_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_cities
    ADD CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES "MeetInterest".tb_country(id);
 I   ALTER TABLE ONLY "MeetInterest".tb_cities DROP CONSTRAINT fk_country_id;
       MeetInterest       postgres    false    2736    206    204            �
           2606    24634    tb_useraccount fk_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT fk_country_id FOREIGN KEY (country) REFERENCES "MeetInterest".tb_country(id);
 N   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT fk_country_id;
       MeetInterest       postgres    false    2736    198    204            �
           2606    24639    tb_useraccount fk_interest_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT fk_interest_id FOREIGN KEY (interest_id) REFERENCES "MeetInterest".tb_interest(interest_id);
 O   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT fk_interest_id;
       MeetInterest       postgres    false    2729    200    198            �
           2606    24602    tb_images fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_images
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES "MeetInterest".tb_useraccount(user_id);
 F   ALTER TABLE ONLY "MeetInterest".tb_images DROP CONSTRAINT fk_user_id;
       MeetInterest       postgres    false    2715    208    198            �
           2606    24610    tb_useraccount fk_user_photo    FK CONSTRAINT     �   ALTER TABLE ONLY "MeetInterest".tb_useraccount
    ADD CONSTRAINT fk_user_photo FOREIGN KEY (user_photo) REFERENCES "MeetInterest".tb_images(img_id);
 N   ALTER TABLE ONLY "MeetInterest".tb_useraccount DROP CONSTRAINT fk_user_photo;
       MeetInterest       postgres    false    2745    198    208            ?      x������ � �      C      x�3��M-*���42������� ,��      A      x�m�[s��ֆ��~wI�&)ĥB���� ��nd[����0�=��{��=��]�e��W���]���^P���ifGb���T�ӹ8j��2��"[����Œ�hde���I��X6t����2�S�T�nǎz�Ɛ=Cu_{i�\3YJL�Lc$�\�h'	tǇ�i
���F���1;��Łv?�z�X&�4&b�ڛ�A��J�����46K���dv�d�	�s�ܟُ���rcL�SI|/�{,ޛ��,������Ǉެh�.L�y2�tn��߈�P<����cɐc�m2��4�}�A=t[�6�e��$�Q�#B Ƿ4�3����9��h8��tb�b�4K�@'���Mq�)�T�c��>L�:�7��?�F̡ч�m�&3ۿU�/����[�weؗ锍�e���^�!2�O�sq��2�����O�*Eb��R4Eu�)Ӓ鄕,��!�����)����P<��'�ys݈e����f�\��.�nj�Jf2�Zc��d�p��P4(�D�pl8�>�J��y����Y�2�|c0��^�>g���^2~/��>��`(�[�#=
B9�7z�j�6cR7	Ufe����b�&�G2�8|��4{��ͲHƘ��nƔ�� �Y}��"�2�d4e<̤#NыV�n�w�x��4�O�I�x˲�^>�_U�f�R&X�51�A�dg��n�O�
%��2�ǐ��$���z~�]�������O�~��!�N(��d�߫��d2����%�3?]��h�cڱ��7s��I5չ:=���C����%����n^�+�`1�K���{s�nj�Ȭ�˪7W9��C�(�H�h8��5�<��g���.��B�|�7pd45��lM��������K���ũ��k��e�Wڜ�(مm��>�Y2MLk��g1��x��9�x/L�R�L�	��M�8R����#��
�ǂ��s��X�F�Tɥo��l�����M�./eoS6�8����`h�j�.��(Sh_�ar'˓8;vƶ�Csd�}q����={����]��w��O�Fz�_�gNʗ�ݡ�g��[�@��8K\��T<H���=C�������:��e }�w�@S�H;QL:�Jgɉ1K�Α8Ґ�p4o��<5D"<�Ϻ�{3���؉�ޯ+{���~0���O�����wn\�O���bJ�3�d}���$-�ǚ6�Z!�8��X�|��uP���0�G��~"��pǈ_�7m�^�t{s7���&��/����w~*{��o
�ѻ z�_��\�ں�fG�+Z�ՇS�_~>^Ak�X����B��̡$���wN�z[x���1B~>t{����~�;;�Z�ZW;�785������$�DL��칠	��,(�jN��9���m��Awwku����qjt�a���)���������j����#K�+��Qh'�/��E�E��

K���T�ח�2����/�J[�%Ŧ���P�q�Gʥy�\�G����&8�q�w���F��p�b��B�,�:�����{!�5Z�D�?���(�u&����Y�Ţ�Bҍ��)�tS O���4i�A(���iF�}�sn�},,����\
�n��{��X�E���P�?�9�܉��(�cڰ��4��늛f���t��P�bH�D1��gK?^+����_�&[B��1�T+Y��J��My{��ߐ�&���E��M���x�}�J}�10�E�LI����h���	��0�ZƤ/�[Y��{Q�]Q�Ր�S�ظ�ُZ���������	}d���(v串h��}�5ND�8oA����[��)��+�����A���H����8�En�Xׇ�cy�m띎��a�8��}L��~�Z�M߆���S����Uyz�铉x6eFd�;��迪@��qy!-�K��!z!�pz�
N�⹔8񔠬�G�pa2��NG�i�	!iEC,z�	� �԰��-E�&xj������a��)�� p.^uG@�kR�nk(Dx/q]d�5e�,�đ��|��E�vw�T�N�^@���F0��R�1�6{�
��	�����5��5ka�塾��^�"coS���҅J��WH�&3���ɼL;3���\>eh�@0��E"���'�7Ԥf`�����g>�(���>�@F��dܦ@#�����]���k�;fS?30��2��v�eD����>��t(���k'o��"�ЙǑ�[�,ˢy�������8<�+ܒK���e���R�������t�����&K����%���Nu���~cx��0E�7p�2��yBJ������d�����v�e�R���=�V���(b�`�D�9%?�dy9_���ؘZ��;n�G�}�j�GUYh*H�E�҂\��g,�KŠ�\[�����;���,B��?݀��}jy�����|jy��3&`��Bj�Y�@��:�g�_���*Iw�Iߥ�z��z5���$� ��ib�+���(Zӄ��E�9?���N�sqx�o���
�3��Pn�5rޒ%j��d���o&r��mҽ-^H�n� m��Y��Ɣd��u��D9.N[>Me�����W���bU|/�<�7�2�%����+��lY���B���T�Kw_V>%�gh�����C��@b�dr��UL$�����x���?�gU(?}�m�~9���~�\brH�'�_%o���>\)8@��Xme�o�]Y]�a�4���1� 	��%�n�1�y|��1��C8�Q�ǂ7
��ǡ�>����@S��I�X:�D�!��izg�n+ 4�	g؇0�I����wő�������[�����q��!9�秚&�Q�2f�&)������k/��Us�Y
����B��ى=�n.���O��Mq�SU}B	^u��
ǘ`�h
 4s�4s������\VG�p9�|C	2��e�^�����^�Y.��7W��?]R�<�$���$��4��
��#��$�%���E��tk��ˍ%\i�;W0���8!���r/ƍl~�+�(�uIƢnHK{��c�_�������X����L$�Xhn{v��C��cq�'&�sd�UlH8܊���ѡ�V��C���9�J�k	v���U]a�K!���n�f�o@4�<T_�/�|#�XD��JԮ�*|��`Tİ0�ά]�������UPpj��;I�v����hNO����B�֑fODKRg	?���9w�����R��gfWX��#48d�`�V��k� Lt��tC�0��yz��ȁBj��xC=�Dvz�]�e��k}>�o�&�}�/�SB�O�d6,�S��Zcv�뀵C!�$]��[�sw�]�M[ݨ�..�_>�Xx��Eޓ*�"a�f�""����<���w�����/���̩�?�1������t�|���&8o�?�����b3ԴX�5C��9�H�M��*Q�A��O���LG���K����Mx�]���uE[i��a��������­�+�m��!ԫ��K���q �jz��\`_0���"���p� �����tC�D	My�Cpi.TsD�[_s*�Z"wm�/Ł*�8��C���Et���;ōJ����F�R8��F}�����Uv�W�8��wهF/Y9�	d��5���mϱ���0�[�)���]�	cKw5�hߒ�]�J�/�dD{H�zz�E�hڜ� b��M�x)�*M���h�l4�F@�X6T��&�]o,hCۭ���@$cM� A0�G�Q� ���D����`!Q�,����D����>�]�@�b��^�Gx���r�Po#��y0�K�B�}<?��Y����A{Q��l흎�V�j�e!kܗ8� ������Q���q��J���{�Y_�ZX�`�㡬���k��u��wıu}S֩v����>��~�a��w�:�<�s�xQK����*�.���bm

�?�\hMﱑ��h,k��un�T=��ͺx�=Ցk��F�#\�x����^��G� ���!B5T�,![��κĈ����ꏧ�^R��_�Y�3?U��兵N�P���B�?�~�؊��������D2��q҇�B��:Bb� �  ����z�D.��uFK��6�F.���o?��*���$���$���-���lε^��t���F��:�٦h����̗o���ؓ�$.%�|�SR^���:$��cA2�$��mJ��6�P� P(&��]����.��
�ک�Gc�
EM�x����E�5��z�Tҥ��e���ZKZT�soYȯ鄱�H��s]�W~��m��R�nԪ:�Omf�_�䬅1�-�}Ϲ�r�[+��+�r��O���w[�)�Ң�I�v)�:���w#�
_v�����O7F�	L3��ے?ҋ�v_�MB�o�l��x_�_�S��]1�J�q�92%VoԾ�v��[�Ş�m�HR�{�xp!iѹ�cMG���ة�K�A��8��nE�������~��f�}�RB�f�^�(?'���s��-C/U��^9�-�G�`r�����j���R����O�i�ޚ�ñ�dv}�Ҁ��δl�/Y�uxS_}�P��鍤p��9�F��|�*�X����ނsh|�x�2�{�̑T�X�LC���w��^=���
LV)I�_ȸh^��p�2J�b �f�L8�i�(6+h��Y7h2OK�>�*Q���n"�F�.M�LR}d��Ф��P�x�IɈ�
 0 �N���n��*��Τjdz���������W~�g:2!]�P�S��+����]a�V�j������\׻�w��ZѼ�o���]���SQ!��	8}�`7�� �� �����Ɗ�6U/(�_0Sj�ҦJ�(����M��9����n��ЍJ�!�1rJm����L'����A��t�V����P��kq��;+=�mkE�%���]�`�xĺ�t�o����o��^?��RkA�`���ɴ�p�G����>S���n�l��/����vѥ��>�Xݎ����S�S��U�D�����P�d�7"CC_6��d��ջ�u�NIߔ�g������Ѻї��Rߑ���l�Ood��v*�-���Wx�WW��ݢ��y�0hU��0��m�I�L�c���E�f��Jӈ��@��Z�`����/ْbw�Ξ��Ѵ�"Ћ���@2���W��n~�(��k��C�<�b/��~���L���ꛒ��\�
���K��([2!~�J �OQ��t�M�>4�>ƒe��z����*�g���-��N�����řj���R]�O$���J�ތ��Y/uh�`_�G�	M���A�|)_�&V�;�����NDP�F:!��`��D����i���
��W�7ב]Tu�J�Iߌ�,zm��6@<f����ӹh
}��\����E�c�����ȵI�����w!��_�w!��!1��Sl�:5j��}MOS��O���s�9)i
N��	�t#�fo�W8u}m�[���gXm���_����w��y�����q%:�D��gb�x���v���П� 9�_·W��/O�[������ysi�m��4��*g���)3�j�����j���������M.;�����R�/4�˙
���/��{��-b�w�M�m�4 A0􁏸��ݬ���*�=�W5�0��'��A�=�}�] ���{L����Cn��v
���5E�G�����8���z]�?^@Y�#�.dk��)�"Ǌl��C�i��r��ݶ�B,�]K�3w)[����l���VH�?>{"��U�D_9�x9�uq)ؚ�J�L���.!��e�=���G�}�Te�u�S�oe�3{FL�W�w�ݷ�F������a����      E      x������ � �      =      x������ � �      ;      x������ � �     