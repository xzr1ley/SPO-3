PGDMP  +        
            |            kosmetos    16.1    16.1 I    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    57866    kosmetos    DATABASE     |   CREATE DATABASE kosmetos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE kosmetos;
                postgres    false            �            1259    57931    basket_items    TABLE     �   CREATE TABLE public.basket_items (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "basketId" integer,
    "itemId" integer
);
     DROP TABLE public.basket_items;
       public         heap    postgres    false            �            1259    57930    basket_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.basket_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.basket_items_id_seq;
       public          postgres    false    226                       0    0    basket_items_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.basket_items_id_seq OWNED BY public.basket_items.id;
          public          postgres    false    225            �            1259    57880    baskets    TABLE     �   CREATE TABLE public.baskets (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    57879    baskets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.baskets_id_seq;
       public          postgres    false    218                       0    0    baskets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;
          public          postgres    false    217            �            1259    57901    brands    TABLE     �   CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    57900    brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    222                       0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    221            �            1259    57948 
   item_infos    TABLE       CREATE TABLE public.item_infos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "itemId" integer
);
    DROP TABLE public.item_infos;
       public         heap    postgres    false            �            1259    57947    item_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.item_infos_id_seq;
       public          postgres    false    228                       0    0    item_infos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.item_infos_id_seq OWNED BY public.item_infos.id;
          public          postgres    false    227            �            1259    57910    items    TABLE     H  CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price character varying(255) NOT NULL,
    img character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    57909    items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false    224                       0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          postgres    false    223            �            1259    57962    type_brands    TABLE     �   CREATE TABLE public.type_brands (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "typeId" integer,
    "brandId" integer
);
    DROP TABLE public.type_brands;
       public         heap    postgres    false            �            1259    57961    type_brands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_brands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.type_brands_id_seq;
       public          postgres    false    230                       0    0    type_brands_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.type_brands_id_seq OWNED BY public.type_brands.id;
          public          postgres    false    229            �            1259    57892    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         heap    postgres    false            �            1259    57891    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public          postgres    false    220                       0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
          public          postgres    false    219            �            1259    57868    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    57867    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            C           2604    57934    basket_items id    DEFAULT     r   ALTER TABLE ONLY public.basket_items ALTER COLUMN id SET DEFAULT nextval('public.basket_items_id_seq'::regclass);
 >   ALTER TABLE public.basket_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    57883 
   baskets id    DEFAULT     h   ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);
 9   ALTER TABLE public.baskets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            A           2604    57904 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            D           2604    57951    item_infos id    DEFAULT     n   ALTER TABLE ONLY public.item_infos ALTER COLUMN id SET DEFAULT nextval('public.item_infos_id_seq'::regclass);
 <   ALTER TABLE public.item_infos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            B           2604    57913    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            E           2604    57965    type_brands id    DEFAULT     p   ALTER TABLE ONLY public.type_brands ALTER COLUMN id SET DEFAULT nextval('public.type_brands_id_seq'::regclass);
 =   ALTER TABLE public.type_brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            @           2604    57895    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            =           2604    57871    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216                      0    57931    basket_items 
   TABLE DATA           Z   COPY public.basket_items (id, "createdAt", "updatedAt", "basketId", "itemId") FROM stdin;
    public          postgres    false    226   �T       �          0    57880    baskets 
   TABLE DATA           I   COPY public.baskets (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public          postgres    false    218   QU       �          0    57901    brands 
   TABLE DATA           D   COPY public.brands (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222   �U                 0    57948 
   item_infos 
   TABLE DATA           `   COPY public.item_infos (id, title, description, "createdAt", "updatedAt", "itemId") FROM stdin;
    public          postgres    false    228   �U                  0    57910    items 
   TABLE DATA           d   COPY public.items (id, name, price, img, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    224   'Z                 0    57962    type_brands 
   TABLE DATA           X   COPY public.type_brands (id, "createdAt", "updatedAt", "typeId", "brandId") FROM stdin;
    public          postgres    false    230   �[       �          0    57892    types 
   TABLE DATA           C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   �[       �          0    57868    users 
   TABLE DATA           T   COPY public.users (id, email, password, role, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   �[                  0    0    basket_items_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.basket_items_id_seq', 19, true);
          public          postgres    false    225                       0    0    baskets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.baskets_id_seq', 3, true);
          public          postgres    false    217                       0    0    brands_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.brands_id_seq', 1, false);
          public          postgres    false    221                       0    0    item_infos_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.item_infos_id_seq', 1, false);
          public          postgres    false    227                       0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 8, true);
          public          postgres    false    223                       0    0    type_brands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_brands_id_seq', 1, false);
          public          postgres    false    229                       0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 1, false);
          public          postgres    false    219                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    215            Y           2606    57936    basket_items basket_items_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT basket_items_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.basket_items DROP CONSTRAINT basket_items_pkey;
       public            postgres    false    226            K           2606    57885    baskets baskets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    218            Q           2606    57908    brands brands_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_name_key;
       public            postgres    false    222            S           2606    57906    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    222            [           2606    57955    item_infos item_infos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.item_infos
    ADD CONSTRAINT item_infos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.item_infos DROP CONSTRAINT item_infos_pkey;
       public            postgres    false    228            U           2606    57919    items items_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.items DROP CONSTRAINT items_name_key;
       public            postgres    false    224            W           2606    57917    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    224            ]           2606    57967    type_brands type_brands_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT type_brands_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT type_brands_pkey;
       public            postgres    false    230            _           2606    57969 *   type_brands type_brands_typeId_brandId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_brandId_key" UNIQUE ("typeId", "brandId");
 V   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_brandId_key";
       public            postgres    false    230    230            M           2606    57899    types types_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.types DROP CONSTRAINT types_name_key;
       public            postgres    false    220            O           2606    57897    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public            postgres    false    220            G           2606    57878    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    216            I           2606    57876    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            c           2606    57937 '   basket_items basket_items_basketId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT "basket_items_basketId_fkey" FOREIGN KEY ("basketId") REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE SET NULL;
 S   ALTER TABLE ONLY public.basket_items DROP CONSTRAINT "basket_items_basketId_fkey";
       public          postgres    false    4683    218    226            d           2606    57942 %   basket_items basket_items_itemId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT "basket_items_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.basket_items DROP CONSTRAINT "basket_items_itemId_fkey";
       public          postgres    false    4695    224    226            `           2606    57886    baskets baskets_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT "baskets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.baskets DROP CONSTRAINT "baskets_userId_fkey";
       public          postgres    false    216    218    4681            e           2606    57956 !   item_infos item_infos_itemId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_infos
    ADD CONSTRAINT "item_infos_itemId_fkey" FOREIGN KEY ("itemId") REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public.item_infos DROP CONSTRAINT "item_infos_itemId_fkey";
       public          postgres    false    224    228    4695            a           2606    57925    items items_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "items_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.items DROP CONSTRAINT "items_brandId_fkey";
       public          postgres    false    4691    224    222            b           2606    57920    items items_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "items_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.items DROP CONSTRAINT "items_typeId_fkey";
       public          postgres    false    220    4687    224            f           2606    57975 $   type_brands type_brands_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_brandId_fkey";
       public          postgres    false    230    4691    222            g           2606    57970 #   type_brands type_brands_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_brands
    ADD CONSTRAINT "type_brands_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.type_brands DROP CONSTRAINT "type_brands_typeId_fkey";
       public          postgres    false    220    4687    230               M   x�}˻�@E��0w���ak��:�4�1>�b��E�����k[���T�#�`�o��z~	�,���@Ɨ0��*"      �   J   x�}���@��T��Y�3�b�u�UL|O�6�10l��d�T�8�$|2��E*r��ɥ��eK��/
�TDn�? e      �      x������ � �         O  x��V[r�F�N����,J�|�AgI;�J��|��v^��TA$!B@]a�F��Y� 	%�JE��ٙ=9��g���O}�s�����x|�U���5��
�>���
?R_�9L6��
��	O��"����3,T�\p�_�$L����5?J<Z��,|=��qx~q~�ƣ�F/����㹈C�����l���1b�%�C;Kl����{e��x��p�T��2$�͈g���g��
x,`�1�%���F���b	/x��Rϙ���}f���z�NG�ѫ�	��h�A�?��^Z>IN;���|���`]�Me�ps#�O:�$'�0h���������i�t���R�q���-�$*�Q>`��!4ncej#h��F���0Dݑr8x0xj�ۂR�s9�Ĺ}.�_e<�ԝ�6��ir�UD�u���
�E�!�,�N���oBD���{��M����~ޒ���'d�l�a�s����D_)��af�`Nk4�K'���ܜ?ź��7}q?K^�~~�%�$��x��B'�p�KW�k�4(!'�������ac��¾�_M�] F�s0�l�i���(]S$�7�T��:�j~Aþ�N�th�b�Tdk#�Ul�[�w �&r�e�K�2�>�� ������YcEV���e���g��wz90D��z���_.���Y��L��~���&X_��$o;p��N�3�Z^Įw����k.a�
>���,��67���l|�f�s|�9���s�����L�M�9�Y�f&Ѫ)�U3prSs���Ql�0��$B*���[���]=���+�l2j����[f�Yuc�c�Ҧڭ�6�f�9���J�=�F�\�Qi���=���8� ��L�Vı�z�N�͎�j>�ɉ]�؃f��:-�t<�+l00 �M͈J0�tM��h�m�q�hd�[%���W4��ٗ�����bi����?a-Um% 	TQ�*�ͱv�\���;��O�v��Z���=`�"�ُ�ŠM΋�^�Ro5���=xоy�{SN-�Y��JAɮ�,Ì:Td���R+��7�]�䏺�O��*�Sf�β�8J��x�4�R�>9&I�U]          �  x�}һnT1����h����iih@(HTi|MV	"���r�$�Br�K�43?���{G)��*Cc��WP*����-(��}�y�Y= �c�%�6�������N�n�ӳ��C�HV�)�J�cV(S�����K;�M�������<>u�g�Ge(=Xh�w��מ��/�����}:_~�0�VI�r ��R��X���jC��L��-��{��ܗ�+��d�C�<F�>�9�����"��Tp�����D�_�Mt��}���tr�o�H�6;3��
�q��P��5ǲ���̛����v~��gwm���kWd�f��"�%�I����vVQR\�/�!F���󃣿3F�cP���=u\{�@�F�ť�(;ڦ�3�N�v;�N �ɺ            x������ � �      �      x������ � �      �   (  x�u��N�@E�3Oႝa��N���VRm����:V,m�Sh��"bBP���nn��G@mJ@(�k+@1�ML����:��gHs
���y#��r��N���x\cn�QV�m�L���^mU՗�?,�YBt���f��hb�@�S��s�þTAt�Cz���8E2�~MĽ��pso��Z�ћ7���]U�G��D�Lz�q� ��b4.
�#�G���E)�=S9��q|�Q@Ջ�\��ZJ��D~?1�ğ9O|ՊE�"������{fWz���\:�
��Eڈu̿�|F�/��v�     