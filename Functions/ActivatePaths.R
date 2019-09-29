if(population=="Host"){
  HH_path<-"Inputs/Host_Community/02_data_collection/HH_HC_MSNA.csv"
  Indiv_path<-"Inputs/Host_Community/02_data_collection/INDIV_HC_MSNA.csv"
  
  sample_data_path<- "Inputs/Host_Community/sample_requests_pop_numbers/Population_Figures_2011_Census_HostCommunity.csv"
  audit_dir<-"Inputs/Host_Community/01_pilot/01_audit/67a9bdb3f03e4583aad322026e7dd9e0/"
  date_log_path<-"Inputs/Host_Community/02_data_collection/02_data_logged/date_logger.csv"
  audit_node<-"/azB6PDS7fxdp26j5dDJXSp/"
  
  ##########CHANGE WHEN SWITCHING FROM PILOT TO DC ###############3
  HH_sensitive_info_removed_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/daily_data/",str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_Data.csv")
  Indiv_sensitive_info_removed_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/daily_data/",str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_Data.csv")
  # target_points_gdb<- "GIS/Sampling/Host_Community/Pilot_R1/pilot_r1_comprehensive.kml"
  # target_points<-readOGR(target_points_gdb, "HC_MSNA_R1_Comprehensive")
  target_points_gdb<- "GIS/Sampling/Host_Community/R1/HC_MSNA_R1_Comprehensive.kml"
  target_points<-readOGR(target_points_gdb,"HC_MSNA_R1_Comprehensive")
  
  
  ###################
  path_unzip <- "Inputs/Host_Community/02_data_collection/98_temp"
  audit_zip_dir<-"Inputs/Host_Community/02_data_collection/01_audit"
  # audit_zipfile <- "Inputs/Host_Community/01_pilot/01_audit/axiD4wAprsz6g3zGVjveVh_2019_08_05_13_01_08 (1).zip"
  ########CHANGE WHEN SWITCH FROM PILOT TO DC#########
  copy_zip_to<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity\\02_data_collection/audit/",Sys.Date(),".zip")
  strata<- "adm4_en"
  sf_strata<- "Union"
  
  
  aux_other_response_indiv<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/aux_outputs/otherResponses/",
                                   str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_OtherResponses.csv")
  aux_other_response_hh<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/aux_outputs/otherResponses/",
                                str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_OtherResponses.csv")
  aux_NA_response_indiv<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/aux_outputs/NAresponses/",
                                str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_NAResponses.csv")
  aux_NA_response_hh<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection/01_HostCommunity/02_data_collection/aux_outputs/NAresponses/",
                             str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_NAresponses.csv")
  aux_duration_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\01_HostCommunity/02_data_collection/aux_outputs/duration_data/", str_replace_all(ymd(Sys.Date()),"-","_"),"_Response_durations_cum.csv")
  buffer<-50
  samples_required_data_path<-"Inputs/Host_Community/02_data_collection/sample_requests_pop_numbers/kmz_request_r1_by_union.csv"
  
}


#REFUGEE FILE PATHS
#####################################################################
if(population=="Refugee"){
  HH_path<- "Inputs/Refugee/02_data_collection/HH_Refugee.csv"
  Indiv_path<-"Inputs/Refugee/02_data_collection/INDIV_Refugee_MSNA.csv"
  # sample_data_path<-"Inputs/Refugee/.."
  # audit_dir<-"Inputs/Refugee/01_raw_data/01_audit/"
  date_log_path<-"Inputs/Refugee/02_data_collection/02_data_logged/date_logger.csv"
  HH_sensitive_info_removed_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection/daily_data/", str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_Data.csv")
  Indiv_sensitive_info_removed_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection/daily_data/", str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_Data.csv")
  samples_required_data_path<-"Inputs/Refugee/03_sampling/03_sample_requests_pop_numbers/kmz_sample_request_template - sample_by_camp_msna2019.csv"
  
  
  path_unzip <- "Inputs/Refugee/02_data_collection/98_temp"
  audit_zip_dir<-"Inputs/Refugee/02_data_collection/01_audit"
  # audit_zipfile <- "Inputs/Refugee/02_data_collection/01_audit/aU6HGytRQLdhhu6m9bdwvA_2019_08_05_11_04_32.zip"
  copy_zip_to<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee/02_data_collection/audit/",Sys.Date(),".zip")
  strata="New_Camp_N"
  sf_strata= "Camp_Name"
  
  target_points_gdb<- "GIS/Sampling/Refugee/DC_R1/Refugee_DC_R1_SamplePoints_Comprehensive.kml"
  target_points<-readOGR(target_points_gdb,"Refugee_DC_R1_SamplePoints_Comprehensive")
  audit_node<-"/aU6HGytRQLdhhu6m9bdwvA/"
  aux_other_response_indiv<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/otherResponses/",
                                   str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_OtherResponses.csv")
  aux_other_response_hh<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/otherResponses/",
                                str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_OtherResponses.csv")
  aux_NA_response_indiv<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/NAresponses/",
                                str_replace_all(ymd(Sys.Date()),"-","_"),"_INDIV_NAResponses.csv")
  aux_NA_response_hh<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/NAresponses/",
                             str_replace_all(ymd(Sys.Date()),"-","_"),"_HH_NAresponses.csv")
  aux_duration_path<-paste0("C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/duration_data/",
                            str_replace_all(ymd(Sys.Date()),"-","_"),"_Response_durations_cum.csv")
  buffer<-25
  referral_path<-"C:\\Users\\MEHEDI\\Dropbox\\REACH_BGD\\REACH\\Ongoing\\70DQR - Joint MSNAs\\in-depth MSNAs\\02 Workplan and Data Collection\\02_Refugee\\02_data_collection\\aux_outputs/referrals/"
  
}
