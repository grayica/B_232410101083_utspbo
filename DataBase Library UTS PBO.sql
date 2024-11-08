PGDMP  )                
    |            UTS PBO    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16432    UTS PBO    DATABASE     �   CREATE DATABASE "UTS PBO" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "UTS PBO";
                postgres    false            �            1259    16457    buku    TABLE     �   CREATE TABLE public.buku (
    id integer NOT NULL,
    judul character varying(100) NOT NULL,
    pengarang character varying(200) NOT NULL,
    tahun_penerbit integer NOT NULL
);
    DROP TABLE public.buku;
       public         heap    postgres    false            �            1259    16456    buku_id_seq    SEQUENCE     �   CREATE SEQUENCE public.buku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.buku_id_seq;
       public          postgres    false    218            �           0    0    buku_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.buku_id_seq OWNED BY public.buku.id;
          public          postgres    false    217            �            1259    16450    halaman_buku    TABLE     p   CREATE TABLE public.halaman_buku (
    id integer NOT NULL,
    halaman_buku character varying(100) NOT NULL
);
     DROP TABLE public.halaman_buku;
       public         heap    postgres    false            �            1259    16449    halaman_buku_id_seq    SEQUENCE     �   CREATE SEQUENCE public.halaman_buku_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.halaman_buku_id_seq;
       public          postgres    false    216            �           0    0    halaman_buku_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.halaman_buku_id_seq OWNED BY public.halaman_buku.id;
          public          postgres    false    215            V           2604    16460    buku id    DEFAULT     b   ALTER TABLE ONLY public.buku ALTER COLUMN id SET DEFAULT nextval('public.buku_id_seq'::regclass);
 6   ALTER TABLE public.buku ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            U           2604    16453    halaman_buku id    DEFAULT     r   ALTER TABLE ONLY public.halaman_buku ALTER COLUMN id SET DEFAULT nextval('public.halaman_buku_id_seq'::regclass);
 >   ALTER TABLE public.halaman_buku ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16457    buku 
   TABLE DATA           D   COPY public.buku (id, judul, pengarang, tahun_penerbit) FROM stdin;
    public          postgres    false    218   �       �          0    16450    halaman_buku 
   TABLE DATA           8   COPY public.halaman_buku (id, halaman_buku) FROM stdin;
    public          postgres    false    216   �       �           0    0    buku_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.buku_id_seq', 10, true);
          public          postgres    false    217            �           0    0    halaman_buku_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.halaman_buku_id_seq', 4, true);
          public          postgres    false    215            Z           2606    16464    buku buku_pengarang_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pengarang_key UNIQUE (pengarang);
 A   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_pengarang_key;
       public            postgres    false    218            \           2606    16462    buku buku_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_pkey;
       public            postgres    false    218            X           2606    16455    halaman_buku halaman_buku_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.halaman_buku
    ADD CONSTRAINT halaman_buku_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.halaman_buku DROP CONSTRAINT halaman_buku_pkey;
       public            postgres    false    216            ]           2606    16465    buku buku_tahun_penerbit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_tahun_penerbit_fkey FOREIGN KEY (tahun_penerbit) REFERENCES public.halaman_buku(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_tahun_penerbit_fkey;
       public          postgres    false    4696    216    218            �      x������ � �      �      x������ � �     