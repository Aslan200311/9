PGDMP     0    3                |            Exam    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    42280    Exam    DATABASE     z   CREATE DATABASE "Exam" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Exam";
                postgres    false            �            1259    42295 (   ЗаявкаНаОбслуживание    TABLE     �   CREATE TABLE public."ЗаявкаНаОбслуживание" (
    "КодЗаявки" integer NOT NULL,
    "КодКлиента" integer,
    "СтатусЗаявки" character varying,
    "Описание" character varying
);
 >   DROP TABLE public."ЗаявкаНаОбслуживание";
       public         heap    postgres    false            �            1259    42281    Клиенты    TABLE     �   CREATE TABLE public."Клиенты" (
    "КодКлиента" integer NOT NULL,
    "Наименование" character varying
);
 $   DROP TABLE public."Клиенты";
       public         heap    postgres    false            �            1259    42302    ОбработкаЗаявки    TABLE     �   CREATE TABLE public."ОбработкаЗаявки" (
    "КодОбработки" integer NOT NULL,
    "КодСотрудника" integer,
    "КодЗаявки" integer
);
 4   DROP TABLE public."ОбработкаЗаявки";
       public         heap    postgres    false            �            1259    42307    РемонтПоЗаявки    TABLE     �   CREATE TABLE public."РемонтПоЗаявки" (
    "КодРемонта" integer NOT NULL,
    "КодОбработки" integer,
    "Отчет" character varying
);
 2   DROP TABLE public."РемонтПоЗаявки";
       public         heap    postgres    false            �            1259    42288    Сотрудники    TABLE     �   CREATE TABLE public."Сотрудники" (
    "КодСотрудника" integer NOT NULL,
    "Наименование" character varying
);
 *   DROP TABLE public."Сотрудники";
       public         heap    postgres    false                      0    42295 (   ЗаявкаНаОбслуживание 
   TABLE DATA           �   COPY public."ЗаявкаНаОбслуживание" ("КодЗаявки", "КодКлиента", "СтатусЗаявки", "Описание") FROM stdin;
    public          postgres    false    216   R                  0    42281    Клиенты 
   TABLE DATA           ^   COPY public."Клиенты" ("КодКлиента", "Наименование") FROM stdin;
    public          postgres    false    214   !                 0    42302    ОбработкаЗаявки 
   TABLE DATA           �   COPY public."ОбработкаЗаявки" ("КодОбработки", "КодСотрудника", "КодЗаявки") FROM stdin;
    public          postgres    false    217   ?!                 0    42307    РемонтПоЗаявки 
   TABLE DATA           z   COPY public."РемонтПоЗаявки" ("КодРемонта", "КодОбработки", "Отчет") FROM stdin;
    public          postgres    false    218   b!                 0    42288    Сотрудники 
   TABLE DATA           j   COPY public."Сотрудники" ("КодСотрудника", "Наименование") FROM stdin;
    public          postgres    false    215   �!       y           2606    42301 V   ЗаявкаНаОбслуживание ЗаявкаНаОбслуживание_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT "ЗаявкаНаОбслуживание_pkey" PRIMARY KEY ("КодЗаявки");
 �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT "ЗаявкаНаОбслуживание_pkey";
       public            postgres    false    216            u           2606    42287 "   Клиенты Клиенты_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Клиенты"
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("КодКлиента");
 P   ALTER TABLE ONLY public."Клиенты" DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    214            {           2606    42306 B   ОбработкаЗаявки ОбработкаЗаявки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT "ОбработкаЗаявки_pkey" PRIMARY KEY ("КодОбработки");
 p   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT "ОбработкаЗаявки_pkey";
       public            postgres    false    217            }           2606    42313 >   РемонтПоЗаявки РемонтПоЗаявки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."РемонтПоЗаявки"
    ADD CONSTRAINT "РемонтПоЗаявки_pkey" PRIMARY KEY ("КодРемонта");
 l   ALTER TABLE ONLY public."РемонтПоЗаявки" DROP CONSTRAINT "РемонтПоЗаявки_pkey";
       public            postgres    false    218            w           2606    42294 .   Сотрудники Сотрудники_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудники"
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("КодСотрудника");
 \   ALTER TABLE ONLY public."Сотрудники" DROP CONSTRAINT "Сотрудники_pkey";
       public            postgres    false    215                       2606    42319 $   ОбработкаЗаявки fk_k2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT fk_k2 FOREIGN KEY ("КодСотрудника") REFERENCES public."Сотрудники"("КодСотрудника") NOT VALID;
 P   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT fk_k2;
       public          postgres    false    3191    217    215            �           2606    42324 $   ОбработкаЗаявки fk_k3    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT fk_k3 FOREIGN KEY ("КодЗаявки") REFERENCES public."ЗаявкаНаОбслуживание"("КодЗаявки") NOT VALID;
 P   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT fk_k3;
       public          postgres    false    217    3193    216            �           2606    42329 "   РемонтПоЗаявки fk_k4    FK CONSTRAINT     �   ALTER TABLE ONLY public."РемонтПоЗаявки"
    ADD CONSTRAINT fk_k4 FOREIGN KEY ("КодОбработки") REFERENCES public."ОбработкаЗаявки"("КодОбработки") NOT VALID;
 N   ALTER TABLE ONLY public."РемонтПоЗаявки" DROP CONSTRAINT fk_k4;
       public          postgres    false    217    3195    218            ~           2606    42314 /   ЗаявкаНаОбслуживание fk_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT fk_key FOREIGN KEY ("КодКлиента") REFERENCES public."Клиенты"("КодКлиента") NOT VALID;
 [   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT fk_key;
       public          postgres    false    214    3189    216               �   x����	�@��w��
��o/��BD��#�������� ���q����&�7����gQ�.{T�7���ۀ
����ǖHc�Ve%��i�񭡔�B*�2\�������턆���jz��Om�/��	h��f>�ѯ����l���S��������         (   x�3�0�¾��x��~.c�?.Ca"LAD� j�            x�3�4�4����� 	]         $   x�3�4漰�b����]�}a@��+F��� �X�         ?   x�3�0���[/l��0�����\�f]�q�����n.3w��ƋM��b���� �.     