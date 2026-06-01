-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:pci64:5.0
-- IP Revision: 11

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY pci64_v5_0_11;
USE pci64_v5_0_11.pci64_v5_0_11_wrap;

ENTITY pci64_0 IS
  PORT (
    ado : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    adi : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    add : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    adt : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cbo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cbi : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cbd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cbt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    paro : OUT STD_LOGIC;
    pari : IN STD_LOGIC;
    pard : IN STD_LOGIC;
    part : OUT STD_LOGIC;
    par64o : OUT STD_LOGIC;
    par64i : IN STD_LOGIC;
    par64d : IN STD_LOGIC;
    par64t : OUT STD_LOGIC;
    frameo : OUT STD_LOGIC;
    framei : IN STD_LOGIC;
    framed : IN STD_LOGIC;
    framet : OUT STD_LOGIC;
    req64o : OUT STD_LOGIC;
    req64i : IN STD_LOGIC;
    req64d : IN STD_LOGIC;
    req64t : OUT STD_LOGIC;
    trdyo : OUT STD_LOGIC;
    trdyi : IN STD_LOGIC;
    trdyd : IN STD_LOGIC;
    trdyt : OUT STD_LOGIC;
    irdyo : OUT STD_LOGIC;
    irdyi : IN STD_LOGIC;
    irdyd : IN STD_LOGIC;
    irdyt : OUT STD_LOGIC;
    stopo : OUT STD_LOGIC;
    stopi : IN STD_LOGIC;
    stopd : IN STD_LOGIC;
    stopt : OUT STD_LOGIC;
    devselo : OUT STD_LOGIC;
    devseli : IN STD_LOGIC;
    devseld : IN STD_LOGIC;
    devselt : OUT STD_LOGIC;
    ack64o : OUT STD_LOGIC;
    ack64i : IN STD_LOGIC;
    ack64d : IN STD_LOGIC;
    ack64t : OUT STD_LOGIC;
    perro : OUT STD_LOGIC;
    perri : IN STD_LOGIC;
    perrd : IN STD_LOGIC;
    perrt : OUT STD_LOGIC;
    serro : OUT STD_LOGIC;
    serri : IN STD_LOGIC;
    serrd : IN STD_LOGIC;
    serrt : OUT STD_LOGIC;
    into : OUT STD_LOGIC;
    intt : OUT STD_LOGIC;
    pmeo : OUT STD_LOGIC;
    pmet : OUT STD_LOGIC;
    reqo : OUT STD_LOGIC;
    reqt : OUT STD_LOGIC;
    gnti : IN STD_LOGIC;
    gntd : IN STD_LOGIC;
    idseli : IN STD_LOGIC;
    idseld : IN STD_LOGIC;
    frameq_n : OUT STD_LOGIC;
    req64q_n : OUT STD_LOGIC;
    trdyq_n : OUT STD_LOGIC;
    irdyq_n : OUT STD_LOGIC;
    stopq_n : OUT STD_LOGIC;
    devselq_n : OUT STD_LOGIC;
    ack64q_n : OUT STD_LOGIC;
    addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    adio_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    adio_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    cfg_vld : OUT STD_LOGIC;
    cfg_hit : OUT STD_LOGIC;
    c_term : IN STD_LOGIC;
    c_ready : IN STD_LOGIC;
    addr_vld : OUT STD_LOGIC;
    base_hit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_cycle64 : OUT STD_LOGIC;
    s_term : IN STD_LOGIC;
    s_ready : IN STD_LOGIC;
    s_abort : IN STD_LOGIC;
    s_wrdn : OUT STD_LOGIC;
    s_src_en : OUT STD_LOGIC;
    s_data_vld : OUT STD_LOGIC;
    s_cbe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pci_cmd : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    request : IN STD_LOGIC;
    request64 : IN STD_LOGIC;
    requesthold : IN STD_LOGIC;
    complete : IN STD_LOGIC;
    m_wrdn : IN STD_LOGIC;
    m_ready : IN STD_LOGIC;
    m_src_en : OUT STD_LOGIC;
    m_data_vld : OUT STD_LOGIC;
    m_cbe : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    time_out : OUT STD_LOGIC;
    m_fail64 : OUT STD_LOGIC;
    cfg_self : IN STD_LOGIC;
    m_data : OUT STD_LOGIC;
    dr_bus : OUT STD_LOGIC;
    i_idle : OUT STD_LOGIC;
    m_addr_n : OUT STD_LOGIC;
    idle : OUT STD_LOGIC;
    b_busy : OUT STD_LOGIC;
    s_data : OUT STD_LOGIC;
    backoff : OUT STD_LOGIC;
    int_n : IN STD_LOGIC;
    pme_n : IN STD_LOGIC;
    perrq_n : OUT STD_LOGIC;
    serrq_n : OUT STD_LOGIC;
    keepout : IN STD_LOGIC;
    csr : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
    pciw_en : OUT STD_LOGIC;
    bw_detect_dis : IN STD_LOGIC;
    bw_manual_32b : IN STD_LOGIC;
    pcix_en : OUT STD_LOGIC;
    bm_detect_dis : IN STD_LOGIC;
    bm_manual_pci : IN STD_LOGIC;
    rtr : OUT STD_LOGIC;
    rst : IN STD_LOGIC;
    cfg : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    clk : IN STD_LOGIC
  );
END pci64_0;

ARCHITECTURE pci64_0_arch OF pci64_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pci64_0_arch: ARCHITECTURE IS "yes";
  COMPONENT pci64_v5_0_11_wrap IS
    GENERIC (
      c_bus_width : INTEGER;
      c_pci_cfg_width : INTEGER;
      c_vendor_id : STRING;
      c_device_id : STRING;
      c_revision_id : STRING;
      c_subvendor_id : STRING;
      c_subdevice_id : STRING;
      c_usercap_enabled : INTEGER;
      c_usercap_addr : STRING;
      c_base_class : STRING;
      c_sub_class : STRING;
      c_sw_interface : STRING;
      c_class_code : STRING;
      c_cardbus_cis : STRING;
      c_max_lat : STRING;
      c_min_gnt : STRING;
      c_bar0_enabled : INTEGER;
      c_bar0_width : INTEGER;
      c_bar0_size : INTEGER;
      c_bar0_scale : INTEGER;
      c_bar0_type : INTEGER;
      c_bar0_prefetchable : INTEGER;
      c_bar0_value : STRING;
      c_bar1_enabled : INTEGER;
      c_bar1_width : INTEGER;
      c_bar1_size : INTEGER;
      c_bar1_scale : INTEGER;
      c_bar1_type : INTEGER;
      c_bar1_prefetchable : INTEGER;
      c_bar1_value : STRING;
      c_bar2_enabled : INTEGER;
      c_bar2_width : INTEGER;
      c_bar2_size : INTEGER;
      c_bar2_scale : INTEGER;
      c_bar2_type : INTEGER;
      c_bar2_prefetchable : INTEGER;
      c_bar2_value : STRING;
      c_implement_pcix133 : INTEGER;
      c_implement_pcix66 : INTEGER;
      c_implement_pci66 : INTEGER;
      c_implement_pci33 : INTEGER;
      c_reverse_pinout : INTEGER;
      c_clock_type : INTEGER
    );
    PORT (
      ado : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      adi : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      add : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      adt : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cbo : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      cbi : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cbd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cbt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      paro : OUT STD_LOGIC;
      pari : IN STD_LOGIC;
      pard : IN STD_LOGIC;
      part : OUT STD_LOGIC;
      par64o : OUT STD_LOGIC;
      par64i : IN STD_LOGIC;
      par64d : IN STD_LOGIC;
      par64t : OUT STD_LOGIC;
      frameo : OUT STD_LOGIC;
      framei : IN STD_LOGIC;
      framed : IN STD_LOGIC;
      framet : OUT STD_LOGIC;
      req64o : OUT STD_LOGIC;
      req64i : IN STD_LOGIC;
      req64d : IN STD_LOGIC;
      req64t : OUT STD_LOGIC;
      trdyo : OUT STD_LOGIC;
      trdyi : IN STD_LOGIC;
      trdyd : IN STD_LOGIC;
      trdyt : OUT STD_LOGIC;
      irdyo : OUT STD_LOGIC;
      irdyi : IN STD_LOGIC;
      irdyd : IN STD_LOGIC;
      irdyt : OUT STD_LOGIC;
      stopo : OUT STD_LOGIC;
      stopi : IN STD_LOGIC;
      stopd : IN STD_LOGIC;
      stopt : OUT STD_LOGIC;
      devselo : OUT STD_LOGIC;
      devseli : IN STD_LOGIC;
      devseld : IN STD_LOGIC;
      devselt : OUT STD_LOGIC;
      ack64o : OUT STD_LOGIC;
      ack64i : IN STD_LOGIC;
      ack64d : IN STD_LOGIC;
      ack64t : OUT STD_LOGIC;
      perro : OUT STD_LOGIC;
      perri : IN STD_LOGIC;
      perrd : IN STD_LOGIC;
      perrt : OUT STD_LOGIC;
      serro : OUT STD_LOGIC;
      serri : IN STD_LOGIC;
      serrd : IN STD_LOGIC;
      serrt : OUT STD_LOGIC;
      into : OUT STD_LOGIC;
      intt : OUT STD_LOGIC;
      pmeo : OUT STD_LOGIC;
      pmet : OUT STD_LOGIC;
      reqo : OUT STD_LOGIC;
      reqt : OUT STD_LOGIC;
      gnti : IN STD_LOGIC;
      gntd : IN STD_LOGIC;
      idseli : IN STD_LOGIC;
      idseld : IN STD_LOGIC;
      frameq_n : OUT STD_LOGIC;
      req64q_n : OUT STD_LOGIC;
      trdyq_n : OUT STD_LOGIC;
      irdyq_n : OUT STD_LOGIC;
      stopq_n : OUT STD_LOGIC;
      devselq_n : OUT STD_LOGIC;
      ack64q_n : OUT STD_LOGIC;
      addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      adio_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      adio_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      cfg_vld : OUT STD_LOGIC;
      cfg_hit : OUT STD_LOGIC;
      c_term : IN STD_LOGIC;
      c_ready : IN STD_LOGIC;
      addr_vld : OUT STD_LOGIC;
      base_hit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_cycle64 : OUT STD_LOGIC;
      s_term : IN STD_LOGIC;
      s_ready : IN STD_LOGIC;
      s_abort : IN STD_LOGIC;
      s_wrdn : OUT STD_LOGIC;
      s_src_en : OUT STD_LOGIC;
      s_data_vld : OUT STD_LOGIC;
      s_cbe : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      pci_cmd : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      request : IN STD_LOGIC;
      request64 : IN STD_LOGIC;
      requesthold : IN STD_LOGIC;
      complete : IN STD_LOGIC;
      m_wrdn : IN STD_LOGIC;
      m_ready : IN STD_LOGIC;
      m_src_en : OUT STD_LOGIC;
      m_data_vld : OUT STD_LOGIC;
      m_cbe : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      time_out : OUT STD_LOGIC;
      m_fail64 : OUT STD_LOGIC;
      cfg_self : IN STD_LOGIC;
      m_data : OUT STD_LOGIC;
      dr_bus : OUT STD_LOGIC;
      i_idle : OUT STD_LOGIC;
      m_addr_n : OUT STD_LOGIC;
      idle : OUT STD_LOGIC;
      b_busy : OUT STD_LOGIC;
      s_data : OUT STD_LOGIC;
      backoff : OUT STD_LOGIC;
      int_n : IN STD_LOGIC;
      pme_n : IN STD_LOGIC;
      perrq_n : OUT STD_LOGIC;
      serrq_n : OUT STD_LOGIC;
      keepout : IN STD_LOGIC;
      csr : OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
      pciw_en : OUT STD_LOGIC;
      bw_detect_dis : IN STD_LOGIC;
      bw_manual_32b : IN STD_LOGIC;
      pcix_en : OUT STD_LOGIC;
      bm_detect_dis : IN STD_LOGIC;
      bm_manual_pci : IN STD_LOGIC;
      rtr : OUT STD_LOGIC;
      rst : IN STD_LOGIC;
      cfg : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      clk : IN STD_LOGIC
    );
  END COMPONENT pci64_v5_0_11_wrap;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pci64_0_arch: ARCHITECTURE IS "pci64_v5_0_11_wrap,Vivado 2022.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pci64_0_arch : ARCHITECTURE IS "pci64_0,pci64_v5_0_11_wrap,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pci64_0_arch: ARCHITECTURE IS "pci64_0,pci64_v5_0_11_wrap,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pci64,x_ipVersion=5.0,x_ipCoreRevision=11,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,c_bus_width=64,c_pci_cfg_width=512,c_vendor_id=10EE,c_device_id=0050,c_revision_id=00,c_subvendor_id=10EE,c_subdevice_id=0050,c_usercap_enabled=0,c_usercap_addr=80,c_base_class=00,c_sub_class=00,c_sw_interface=00,c_class_code=000000,c_cardbus_cis=00000000,c_max_lat=00,c_min_gnt=00,c_bar0_enabled=0,c_bar0_width=0,c" & 
"_bar0_size=0,c_bar0_scale=2,c_bar0_type=0,c_bar0_prefetchable=0,c_bar0_value=FFF00000,c_bar1_enabled=0,c_bar1_width=0,c_bar1_size=0,c_bar1_scale=2,c_bar1_type=0,c_bar1_prefetchable=0,c_bar1_value=FFF00000,c_bar2_enabled=0,c_bar2_width=0,c_bar2_size=0,c_bar2_scale=2,c_bar2_type=0,c_bar2_prefetchable=0,c_bar2_value=FFF00000,c_implement_pcix133=0,c_implement_pcix66=0,c_implement_pci66=0,c_implement_pci33=1,c_reverse_pinout=0,c_clock_type=1,x_ipLicense=pci64@2014.04(design_linking)}";
BEGIN
  U0 : pci64_v5_0_11_wrap
    GENERIC MAP (
      c_bus_width => 64,
      c_pci_cfg_width => 512,
      c_vendor_id => "10EE",
      c_device_id => "0050",
      c_revision_id => "00",
      c_subvendor_id => "10EE",
      c_subdevice_id => "0050",
      c_usercap_enabled => 0,
      c_usercap_addr => "80",
      c_base_class => "00",
      c_sub_class => "00",
      c_sw_interface => "00",
      c_class_code => "000000",
      c_cardbus_cis => "00000000",
      c_max_lat => "00",
      c_min_gnt => "00",
      c_bar0_enabled => 0,
      c_bar0_width => 0,
      c_bar0_size => 0,
      c_bar0_scale => 2,
      c_bar0_type => 0,
      c_bar0_prefetchable => 0,
      c_bar0_value => "FFF00000",
      c_bar1_enabled => 0,
      c_bar1_width => 0,
      c_bar1_size => 0,
      c_bar1_scale => 2,
      c_bar1_type => 0,
      c_bar1_prefetchable => 0,
      c_bar1_value => "FFF00000",
      c_bar2_enabled => 0,
      c_bar2_width => 0,
      c_bar2_size => 0,
      c_bar2_scale => 2,
      c_bar2_type => 0,
      c_bar2_prefetchable => 0,
      c_bar2_value => "FFF00000",
      c_implement_pcix133 => 0,
      c_implement_pcix66 => 0,
      c_implement_pci66 => 0,
      c_implement_pci33 => 1,
      c_reverse_pinout => 0,
      c_clock_type => 1
    )
    PORT MAP (
      ado => ado,
      adi => adi,
      add => add,
      adt => adt,
      cbo => cbo,
      cbi => cbi,
      cbd => cbd,
      cbt => cbt,
      paro => paro,
      pari => pari,
      pard => pard,
      part => part,
      par64o => par64o,
      par64i => par64i,
      par64d => par64d,
      par64t => par64t,
      frameo => frameo,
      framei => framei,
      framed => framed,
      framet => framet,
      req64o => req64o,
      req64i => req64i,
      req64d => req64d,
      req64t => req64t,
      trdyo => trdyo,
      trdyi => trdyi,
      trdyd => trdyd,
      trdyt => trdyt,
      irdyo => irdyo,
      irdyi => irdyi,
      irdyd => irdyd,
      irdyt => irdyt,
      stopo => stopo,
      stopi => stopi,
      stopd => stopd,
      stopt => stopt,
      devselo => devselo,
      devseli => devseli,
      devseld => devseld,
      devselt => devselt,
      ack64o => ack64o,
      ack64i => ack64i,
      ack64d => ack64d,
      ack64t => ack64t,
      perro => perro,
      perri => perri,
      perrd => perrd,
      perrt => perrt,
      serro => serro,
      serri => serri,
      serrd => serrd,
      serrt => serrt,
      into => into,
      intt => intt,
      pmeo => pmeo,
      pmet => pmet,
      reqo => reqo,
      reqt => reqt,
      gnti => gnti,
      gntd => gntd,
      idseli => idseli,
      idseld => idseld,
      frameq_n => frameq_n,
      req64q_n => req64q_n,
      trdyq_n => trdyq_n,
      irdyq_n => irdyq_n,
      stopq_n => stopq_n,
      devselq_n => devselq_n,
      ack64q_n => ack64q_n,
      addr => addr,
      adio_in => adio_in,
      adio_out => adio_out,
      cfg_vld => cfg_vld,
      cfg_hit => cfg_hit,
      c_term => c_term,
      c_ready => c_ready,
      addr_vld => addr_vld,
      base_hit => base_hit,
      s_cycle64 => s_cycle64,
      s_term => s_term,
      s_ready => s_ready,
      s_abort => s_abort,
      s_wrdn => s_wrdn,
      s_src_en => s_src_en,
      s_data_vld => s_data_vld,
      s_cbe => s_cbe,
      pci_cmd => pci_cmd,
      request => request,
      request64 => request64,
      requesthold => requesthold,
      complete => complete,
      m_wrdn => m_wrdn,
      m_ready => m_ready,
      m_src_en => m_src_en,
      m_data_vld => m_data_vld,
      m_cbe => m_cbe,
      time_out => time_out,
      m_fail64 => m_fail64,
      cfg_self => cfg_self,
      m_data => m_data,
      dr_bus => dr_bus,
      i_idle => i_idle,
      m_addr_n => m_addr_n,
      idle => idle,
      b_busy => b_busy,
      s_data => s_data,
      backoff => backoff,
      int_n => int_n,
      pme_n => pme_n,
      perrq_n => perrq_n,
      serrq_n => serrq_n,
      keepout => keepout,
      csr => csr,
      pciw_en => pciw_en,
      bw_detect_dis => bw_detect_dis,
      bw_manual_32b => bw_manual_32b,
      pcix_en => pcix_en,
      bm_detect_dis => bm_detect_dis,
      bm_manual_pci => bm_manual_pci,
      rtr => rtr,
      rst => rst,
      cfg => cfg,
      clk => clk
    );
END pci64_0_arch;
