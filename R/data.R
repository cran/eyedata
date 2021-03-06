#' Real life OCT segmentation data of patients with AMD
#' @docType data
#' @name amdoct
#' @description
#' This CSV dataset (AMD_baseline_MEH_v1.csv) is associated with the paper Moraes et al
#' Quantitative analysis of optical coherence tomography for neovascular age-related
#' macular degeneration using deep learning. Ophthalmology. (2020).
#' The dataset comprises anonymised metadata and OCT segmentation data of patients
#' undergoing treatment for wet AMD at Moorfields Eye Hospital, London, United Kingdom.
#' The dataset includes 2966 rows (2966 individual patients)
#' @section Missing values:
#' There are 233 missing visual acuity entries in this data set. They result
#' from data entry errors (ETDRS values above 100) and missing data in the original
#' medical health records.
#' @section Study setting and design:
#' Study setting and design: This study is a retrospective cohort study of
#'  patients that commenced anti-VEGF therapy for neovascular AMD
#'  between June 2012 and June 2017 at Moorfields Eye Hospital NHS Foundation Trust,
#'  London, UK.
#' Approval was granted by the Institutional Review Board of the hospital
#' (ROAD17/031). The study complied with the Declaration of Helsinki
#' @section Data source:
#' All clinical information at Moorfields Eye Hospital is recorded within an
#' electronic medical record (EMR) application (OpenEyes Foundation, London, UK).
#' A SQL database (SQL Server Reporting Service, Microsoft Corporation, Richmond, USA)
#' containing all the information from the EMR is in place and regular updates
#' are performed overnight to keep the data warehouse up-to-date.
#' VA is reported in ETDRS letter score (and categories for ETDRS < 1). The highest value (independent of
#' measurement method) available at each visit was chosen.
#' @section OCT:
#' Each voxel equates to 2.60 x 11.72 x 47.24 microns in the A-scan, B-scan, and
#' C-scan directions, respectively. All OCT data is captured using 3DOCT-2000
#' devices (Topcon Corp., Tokyo, Japan). All images comprise 512 x 885 x 128 voxels
#' covering a volume of 6x6x2.3mm. In this dataset, only one image is available
#' per eye. The image with the lowest segmented artifacts was chosen if multiple
#' scans were available at the same visit.
#' @section Time variable:
#' For first-treated eyes, time will generally equal 0. Where a scan at day 0
#' was not available, a scan up to 14 days prior to the first
#' injection (i.e. up to -14 days), is used for analysis.
#' @section Segmentation:
#' Segmentation data was output using a deep learning segmentation model described
#' further in [De Fauw et al.](https://doi.org/10.1038/s41591-018-0107-6) and
#' [Yim and Chopra et al.](https://doi.org/10.1038/s41591-020-0867-7)
#' @usage data("amdoct")
#' @format A data frame (tibble) with 2966 rows and 24 variables:
#' \describe{
#'   \item{patID}{Anonymized patient identifier}
#'   \item{sex}{Sex of patient (m = male, f = female)}
#'   \item{ageStrat}{Stratified age (years) as factor. One missing value}
#'   \item{ethnicity}{Ethnicity of patient following the categories from the
#'        UK ETHNIC CATEGORY CODE 2001. (asian = Asian or Asian British,
#'        white = White, black = Black or Black British,
#'        other_unknown = Other ethnic group or unknown)}
#'   \item{eye}{Left or right eye of patient (r = right, l = left)}
#'   \item{first_eye}{Is the eye the first injected eye}
#'   \item{va}{Visual acuity in Early Treatment Diabetic Retinopathy Study (ETDRS)
#'        letters and categories hand motion (hm) or counting fingers (cf)
#'        for values <1. One value = 0 was not specified in the original data set.}
#'   \item{inj}{Injection given (TRUE) or not}
#'   \item{time}{Time in days from baseline, i.e. injection number 1}
#'   \item{Neurosensory_volume_voxels}{Number of voxels segmented as the
#'        feature neurosensory retina (NSR)}
#'   \item{RPE_volume_voxels}{Number of voxels segmented as the feature
#'        retinal pigment epithelium (RPE)}
#'   \item{SRF_volume_voxels}{Number of voxels segmented as the feature
#'         subretinal fluid (SRF)}
#'   \item{IRF_volume_voxels}{Number of voxels segmented as the feature
#'         intraretinal fluid (IRF)}
#'   \item{SHRM_volume_voxels}{Number of voxels segmented as the feature
#'         subretinal hyperreflective material (SHRM)}
#'   \item{Drusen_volume_voxels}{Number of voxels segmented as the feature drusen}
#'   \item{sPED_volume_voxels}{Number of voxels segmented as the feature serous
#'         pigment epithelium detachment (sPED)}
#'   \item{fvPED_volume_voxels}{Number of voxels segmented as the feature
#'         fibrovascular pigment epithelium detachment (fvPED)}
#'   \item{HRF_volume_voxels}{Number of voxels segmented as the feature hyperreflective foci (HRF)}
#'   \item{Neurosensory_thickness_um}{Thickness (measured in microns) of the segmented feature neurosensory retina (NSR)}
#'   \item{IRF_thickness_um}{Thickness (measured in microns) of the segmented feature intraretinal fluid (IRF)}
#'   \item{SRF_thickness_um}{Thickness (measured in microns) of the segmented feature subretinal fluid (SRF)}
#'   \item{SHRM_thickness_um}{Thickness (measured in microns) of the segmented feature subretinal hyperreflective material (SHRM)}
#'   \item{HRF_thickness_um}{Thickness (measured in microns) of the segmented feature hyperreflective foci (HRF)}
#'   \item{CST_um}{Central subfield retinal thickness measured as the sum of NSR, IRF, SRF, SHRM, HRF thickness (measured in microns)}
#'   }
#' @source \url{https://doi.org/10.5061/dryad.2rbnzs7m4}
#' @seealso
#' Scientific article to which this data set was supplement:
#' \url{https://doi.org/10.1016/j.ophtha.2020.09.025}
"amdoct"

#' Real life data of patients with diabetic macular edema
#' @docType data
#' @name dme
#' @description
#' A dataset containing anonymized real life human subjects data on eyes with
#' diabetic macular edema (DME), which underwent intravitreal
#' anti-VEGF therapy with ranibizumab and/or aflibercept.
#' Data was accessed on the 3rd July 2020.
#' @section Missing values:
#' There are 18 missing visual acuity entries in this data set. They result
#' from data entry errors (ETDRS values above 100) in the original
#' medical health records. Unfortunately, the correct VA value could not be
#' retrieved and it was decided to assign missing values to those measurements.
#' @section Study setting and design:
#' Study setting and design: This study is a retrospective cohort study of
#' diabetic patients treated for DMO by anti-VEGF at a tertiary referral center -
#' Moorfields Eye Hospital NHS Foundation Trust, London, UK.
#' Approval was granted by the Institutional Review Board of the hospital
#' (ROAD17/031) - Audit registration was completed (MEH-233).
#' The study complied with the Declaration of Helsinki and STROBE guidelines
#' for the reporting of cohort studies.
#' @section Data source:
#' All clinical information at Moorfields Eye Hospital is recorded within an
#' electronic medical record (EMR) application (OpenEyes Foundation, London, UK).
#' A SQL database (SQL Server Reporting Service, Microsoft Corporation, Richmond, USA)
#' containing all the information from the EMR is in place and regular updates
#' are performed overnight to keep the data warehouse up-to-date.
#' VA is reported in ETDRS letter score. The highest value (independent of
#' measurement method) available at each visit was chosen.
#' @section Participants:
#' A data-warehouse query for patients that received one IVI for DMO
#' (between March 2013 and October 2018) resulted in 3226 unique eyes from
#' 2368 patients. Exclusion criteria were those that:
#' (i) suffered from
#' macular oedema secondary to other conditions than diabetes;
#' (ii) under 18 years old;
#' (iii) received fewer than 3 IVI;
#' (iv) received bevacizumab, dexamethasone intravitreal implant,
#' or fluocinolone acetonide intravitreal implant; leaving 2614 eyes of 1964
#' patients taken forward for analysis.
#' @usage data("dme")
#' @format A data frame (tibble) with 40281 rows and 8 variables:
#' \describe{
#'   \item{patID}{Anonymized patient identifier}
#'   \item{sex}{Sex of patient (m = male, f = female)}
#'   \item{ageStrat}{Age (years) at day of first appointment, stratified.
#'        Factor! Labels are constructed using "(a,b]" interval notation, e.g., "(60,70]"
#'        means x > 60 & x<= 70}
#'   \item{ethnicity}{Ethnicity of patient following the categories from the
#'        UK ETHNIC CATEGORY CODE 2001. (asian = Asian or Asian British,
#'        white = White, black = Black or Black British,
#'        mixed = Mixed, other = Other ethnic group, unknown = Unknown)}
#'   \item{eye}{Left or right eye of patient (r = right, l = left)}
#'   \item{va}{Visual acuity in Early Treatment Diabetic Retinopathy Study (ETDRS) letters}
#'   \item{time}{Time in days following baseline i.e. injection number 1}
#'   \item{inj}{Injection given or not (TRUE = injection given, FALSE = no injection given)}
#'   }
#' @source \url{https://doi.org/10.5061/dryad.pzgmsbcfw}
#' @seealso
#' Scientific article to which this data set was supplement:
#' \url{https://doi.org/10.1038/s41433-020-1048-0}
"dme"

#' Real life data of patients with neovascular AMD
#' @docType data
#' @name amd2
#' @description
#' A dataset containing anonymized real life human subjects data on eyes with
#' treatment naive neovascular age-related macular degeneration (AMD),
#' which underwent intravitreal anti-VEGF therapy with ranibizumab
#' and/or aflibercept.
#' @details
#' The data was collected in Moorfields Eye Hospital, London, UK.
#' (Information governance sign off Moorfields Eye Hospital 19/07/2018)
#'
#' Data was accessed on the 25th May 2020
#' @section Missing values:
#' There are two missing visual acuity entries in this data set. They result
#' from data entry errors (ETDRS values above 100) in the original
#' medical health records. Unfortunately, the correct VA value could not be
#' retrieved and it was decided to assign missing values to those measurements.
#' @usage data("amd2")
#' @format A data frame (tibble) with 40764 rows and 7 variables:
#' \describe{
#'   \item{patID}{Anonymized patient identifier}
#'   \item{sex}{Sex of patient (m = male, f = female)}
#'   \item{age0}{Age (years) at day of first appointment}
#'   \item{eye}{Left or right eye of patient (r = right, l = left)}
#'   \item{time}{Time in days after date of first appointment (0 = first appointment)}
#'   \item{va}{Visual acuity in Early Treatment Diabetic Retinopathy Study letters}
#'   \item{inj_no}{Current number of injection at appointment date}
#'   }
#' @source \url{https://doi.org/10.5061/dryad.97r9289}
#' @seealso
#' Scientific article to which this data set was supplement:
#' \url{https://doi.org/10.1136/bmjopen-2018-027441}
"amd2"

#' Twelve years neovascular AMD survival data
#' @docType data
#' @name amd
#' @description
#' To explore potential utility of survival analysis techniques for retrospective
#' clinical practice visual outcomes in a retrospective cohort study with
#' 12-year observation period.
#' @section Study setting and design:
#'     Of 10,744 eyes with neovascular AMD receiving anti-VEGF therapy between
#'     October 2008 and February 2020, 7802 eyes met study criteria
#'     (treatment-naïve, first-treated eyes starting anti-VEGF therapy).
#'     Institution:	 Moorfields Eye Clinic, London, UK
#'     Approval was granted by the Institutional Review Board of the hospital
#'     (ROAD17/031). The study complied with the Declaration of Helsinki
#' @section Data source:
#' All clinical information at Moorfields Eye Hospital is recorded within an
#' electronic medical record (EMR) application (OpenEyes Foundation, London, UK).
#' A SQL database (SQL Server Reporting Service, Microsoft Corporation, Richmond, USA)
#' containing all the information from the EMR is in place and regular updates
#' are performed overnight to keep the data warehouse up-to-date.
#' VA is reported in ETDRS letter score (and categories for ETDRS < 1).
#' The highest value (independent of measurement method)
#' available at each visit was chosen.
#' @section Data:
#' Types of data: de-identified human subjects data
#' Information governance authorised Moorfields Eye Clinic 19/07/2018.
#' age not provided as a continuous variable as in original analysis
#' to facilitate de-identification
#' @usage data("amd")
#' @format A data frame (tibble) with 6696 rows and 23 variables:
#' \describe{
#'   \item{patID}{anonymised patient number}
#'   \item{sex}{gender of patient (m = male, f = female)}
#'   \item{age}{age at initiation of anti-VEGF therapy (50-59 years,
#'       60-69 years, 70-79 years, 80 years and above)}
#'   \item{avdays_induc}{arithmetical average of interval between injections in induction
#'        phase in days}
#'   \item{ethnicity}{ethnicity of patient: asian (South East Asian), caucasian
#'       Afro Caribbean, Mixed, unknown_other)}
#'   \item{loaded}{induction phase was appropriately completed within 90 days (TRUE)
#'        or not (FALSE)}
#'   \item{time}{days following initiation of anti-VEGF therapy}
#'   \item{injgiven}{whether injection was given at appointment time or
#'       not (TRUE = injections given , FALSE = injection not given)}
#'   \item{va}{visual acuity at time point in early treatment diabetic
#'       retinopathy study letter score}
#'   \item{regimen}{anti-VEGF drug given is ranibizumab only or aflibercept only}
#'   \item{pre2013}{ anti-VEGF therapy initiated before October 2013 (TRUE) or after (FALSE)
#'       i.e. before or after the introduction of aflibercept, respectively}
#'   }
#' @source \url{https://doi.org/10.5061/dryad.nvx0k6dqg}
#' @seealso
#' Associated publication:
#' „Insights from survival analyses during 12 years of anti-vascular endothelial
#' growth factor therapy for neovascular age-related macular degeneration“
#'   \url{https://doi.org/10.1001/jamaophthalmol.2020.5044}
#'
"amd"

#' Ten year neovascular AMD survival data
#' @docType data
#' @name amd3
#' @description
#' Ten Year Survival Trends of Neovascular Age Related Macular Degeneration
#' at First Presentation
#' @section Central retinal thickness (CRT):
#' There are double CRT measurements for 1011 time points. This is because the
#' data set curator provided both automatic measurement and manual measurement.
#' Unfortunately, based on the information in the raw data, it is not possible
#' to know which entry belongs to which. One possible way to adjust for this may
#' be to create an average for both measurements. For one way to do this, see
#' "Examples"
#' @section Missing values:
#' There are 1388 missing visual acuity entries and 858 missing central retinal
#' thickness entries.
#' @section Study setting and design:
#' Retrospective cohort study of treatment-naïve, first-affected eyes with
#' nAMD started on ranibizumab before January 1, 2009.
#' Approval was granted by the Institutional Review Board of the hospital
#' (ROAD17/031). The study complied with the Declaration of Helsinki
#' @section Data source:
#' All clinical information at Moorfields Eye Hospital is recorded within an
#' electronic medical record (EMR) application (OpenEyes Foundation, London, UK).
#' Information governance authorised Moorfields Eye Clinic 19/07/2018.
#' Age not provided as a continuous variable as in original analysis
#' to facilitate de-identification
#' @usage data("amd3")
#' @format A data frame (tibble) with 6696 rows and 23 variables:
#' \describe{
#'   \item{patID}{Anonymized patient identifier.}
#'   \item{sex}{Sex of patient (m = male, f = female)}
#'   \item{time}{time in days after date of first injection (0 = first injection or baseline)}
#'   \item{eye}{Left or right eye of patient (r = right, l = left)}
#'   \item{ethnicity}{Ethnicity of patient following the categories from the
#'        UK ETHNIC CATEGORY CODE 2001. (asian = Asian or Asian British,
#'        white = White, black = Black or Black British,
#'        other_unknown = Other ethnic group or unknown)}
#'   \item{fellow}{fellow eye requires anti-VEGF within observation period}
#'   \item{ttofellow}{time between baseline and fellow eye involvement in months}
#'   \item{drug_switch}{anti-VEGF drug agent is switched during observation period }
#'   \item{ttodrugswitch}{time between baseline and date of drug switch in months}
#'   \item{ltfu}{patient is lost to follow-up during observation period }
#'   \item{ltfu_stable}{of those lost to follow-up, are they stable prior to this timepoint }
#'   \item{ltfu_outcome}{reason for lost to follow-up (discharged, dna (did not attend last appointment), dead, transferred)}
#'   \item{ttoltfu}{time between baseline and loss to follow-up in months}
#'   \item{stable10y}{patient is stable at ten year timepoint }
#'   \item{irf}{presence of intraretinal fluid at last visit }
#'   \item{srf}{presence of subretinal fluid at last visit }
#'   \item{disciform}{presence of disciform scar at last visit (0 = no, 1a = type 1a, 1b = type 1b)}
#'   \item{ga}{presence of geographic atrophy at last visit  }
#'   \item{ga_foveal}{presence of foveal geographic atrophy at last visit}
#'   \item{ttoga}{time to geographic atrophy development in months}
#'   \item{injgiven}{injection given (TRUE) or not given (FALSE)}
#'   \item{va}{visual acuity in Early Treatment Diabetic Retinopathy Study letters}
#'   \item{crt}{foveal thickness in microns}
#'   }
#' @source \url{https://doi.org/10.5061/dryad.9cnp5hqfm}
#' @seealso
#' Scientific article to which this data set was supplement:
#' \url{https://doi.org/10.1136/bjophthalmol-2020-317161}
#' @examples
#' library(dplyr)
#' amd3 %>%
#'   group_by(patID, time) %>%
#'   mutate(crt_av = mean(crt, na.rm = TRUE)) %>%
#'   select(-crt) %>%
#'   distinct()
"amd3"
