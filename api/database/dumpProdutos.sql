PGDMP     ,                    z            teste-produtos    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    teste-produtos    DATABASE     p   CREATE DATABASE "teste-produtos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
     DROP DATABASE "teste-produtos";
                postgres    false            ?            1259    16429    Produtos    TABLE       CREATE TABLE public."Produtos" (
    id integer NOT NULL,
    nome character varying(255),
    preco double precision,
    quantidade integer,
    descricao character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Produtos";
       public         heap    postgres    false            ?            1259    16428    Produtos_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Produtos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Produtos_id_seq";
       public          postgres    false    211            ?           0    0    Produtos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Produtos_id_seq" OWNED BY public."Produtos".id;
          public          postgres    false    210            ?            1259    16423    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            `           2604    16432    Produtos id    DEFAULT     n   ALTER TABLE ONLY public."Produtos" ALTER COLUMN id SET DEFAULT nextval('public."Produtos_id_seq"'::regclass);
 <   ALTER TABLE public."Produtos" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?          0    16429    Produtos 
   TABLE DATA           f   COPY public."Produtos" (id, nome, preco, quantidade, descricao, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   ?       ?          0    16423    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    209   ?       ?           0    0    Produtos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Produtos_id_seq"', 17, true);
          public          postgres    false    210            d           2606    16436    Produtos Produtos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Produtos"
    ADD CONSTRAINT "Produtos_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public."Produtos" DROP CONSTRAINT "Produtos_pkey";
       public            postgres    false    211            b           2606    16427     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    209            ?   Z  x???Aj?0EףS?3??diW??{?nD??!?K씶????A???|???̷??a?&b?a?Ø02?Pv?6$???F??v?Wr?|4??Q???S:??A?3???????O:?ۙ"ѲF??i??_???+?nE?H??ք	Eݘ?,??c??Rs??П???????6J??|????[?ard?F]H?̕ZbO?0cd??U???T?????=????x???*?oE???%b???
x!)/??v9??????{^??"??K9?1s3?ݝn?)!rٯ??r))????8?{????9?}z?????sʶ?w)?pM{[?@L?????|뤊#??m'ܫVJ?%݄      ?   .   x?3202201?041?06?M.JM,I?-(?O)-???*?????? ?G
]     