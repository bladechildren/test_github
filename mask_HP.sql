-----------------  Customer -----------------
UPDATE db2admin.ct_customer5
SET --c5_title_t_name = 'c5_title_t_name' || c5_cust_code,
  c5_first_t_name = 'F_name'
  || c5_cust_code,
  c5_last_t_name = 'L_name'
  || c5_cust_code,
  --c5_title_e_name = 'c5_title_e_name' || c5_cust_code,
  c5_first_e_name = 'F_e_name'
  || c5_cust_code,
  c5_last_e_name = 'L_e_name'
  || c5_cust_code;

  -----------------  Address -----------------
UPDATE db2admin.ct_address SET   --ca_house_no = 'ca_house_no' || ca_cs_cd,
--ca_village = 'vill' ,
--ca_building = 'buil' ,
--ca_moo = 'moo' ,
--ca_soi = 'soi' ,
--ca_street = 'str' ,
--- old ---
---ca_tel = 'tel' || ca_cs_cd,

ca_tel = ca_tel || '1',

--ca_fax = 'ca_fax' || ca_cs_cd,
--ca_attn = 'ca_attn' || ca_cs_cd,
--- old ---
--ca_filler3 = 'phone' || ca_cs_cd,

ca_filler3 = '1' || ca_filler3 ,

--ca_floor = 'floor' 

-- binding Email
ca_email = '1' || ca_email

;

-----------------  Contract -----------------
UPDATE db2admin.lh_contract_master 
SET set hc_cust_name = 'cust_name' || hc_cn_runno_show;