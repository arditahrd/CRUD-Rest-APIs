PGDMP     ;    '                x            covid19malay    12.3    12.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    covid19malay    DATABASE     �   CREATE DATABASE covid19malay WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE covid19malay;
                postgres    false            �            1259    57401    data_malay_ver3s    TABLE     �  CREATE TABLE public.data_malay_ver3s (
    id bigint NOT NULL,
    province character varying NOT NULL,
    lat double precision NOT NULL,
    long double precision NOT NULL,
    cases bigint,
    date bigint,
    streetname character varying,
    city character varying,
    country character varying,
    countrycode character varying,
    zipcode character varying,
    "createdAt" character varying,
    "updatedAt" character varying
);
 $   DROP TABLE public.data_malay_ver3s;
       public         heap    postgres    false            �            1259    57399    data_malay_ver3_id_seq    SEQUENCE        CREATE SEQUENCE public.data_malay_ver3_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.data_malay_ver3_id_seq;
       public          postgres    false    205                       0    0    data_malay_ver3_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.data_malay_ver3_id_seq OWNED BY public.data_malay_ver3s.id;
          public          postgres    false    204            �
           2604    57404    data_malay_ver3s id    DEFAULT     y   ALTER TABLE ONLY public.data_malay_ver3s ALTER COLUMN id SET DEFAULT nextval('public.data_malay_ver3_id_seq'::regclass);
 B   ALTER TABLE public.data_malay_ver3s ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                      0    57401    data_malay_ver3s 
   TABLE DATA           �   COPY public.data_malay_ver3s (id, province, lat, long, cases, date, streetname, city, country, countrycode, zipcode, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    205   �                  0    0    data_malay_ver3_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.data_malay_ver3_id_seq', 169, true);
          public          postgres    false    204            �
           2606    57409 %   data_malay_ver3s data_malay_ver3_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.data_malay_ver3s
    ADD CONSTRAINT data_malay_ver3_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.data_malay_ver3s DROP CONSTRAINT data_malay_ver3_pkey;
       public            postgres    false    205               ,  x�͖Ko�8�����}U�Cr��-�6qu��0�6VmK�,a�o�C��C��zY#�%���<$�y^o����>0�R(���3� ����*�u�,���f�&>��>|aҞ���7Ql�/���u�3�6XX���e��K���K6��՚/�2��fo\�y��-�%y�P(����0h�&�D�r��]����aC��t�*)h�цLJ%��뜹�>㳸}j)-����9f\Y�%-��lbI�N�o���&�ٌ��_�N���)��;��)˥�5U^8T�7)��g��/-��UN�(�Q$Z�V���_P��E�W����e��X?6����m`�/W)��POx���2�����W��t��ۆ��mS���3S"(k(��$QK���,�����o����W��:�e��f�*@y���bG�:8p\���ILa
.Ť5���e
9��u�͎X���j���FH������mb��rS}[�K��)�˸���6鍶�Y�ė竢y���W���rY�y��l^n�Y�aโ��4�������0��P�t��dԅ�5��A\�'~A_���8@��)�Ǫ�AE�q� *�%Q�l�*\��mu�1joڲ��1��^��j��z�i�;(T(�8�A��t�5�}�֩�I�ӛ7�f
���o�=��V&����k��E��:X�g�MS�Y	縨�8y���� ٧�&�<ƲeCV��~���n�����k ��7��g'�{��S�'K�I��0v���er��?NĲS4B{3��2���"�NkLܡ��@��N0�#�v#�%��-U�*�m��+�+$|���;2g�7�`���J�[϶�t,����'`S8$��k?���r��C�|��(����K�`��v�q^u�b��@7*Fѽ �.X�5�f�ҟ�T����֧i�S:���I����	���p �Ơ��E �a��?ꮥ�RB5�Пݞ�=��B�Z�DƯ�2gK�ó� Iw�ڬ�xj"Ѓ����
w�C�����u1~o��૘L&����     