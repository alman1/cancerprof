#' Handles Education Values to Code
#' 
#' This function returns a matching code value for a Education for the api to use to get data from State Cancer Profiles
#'
#' @param cancer Either "all cancer sites","bladder", "brain & ons", "breast (female)", "breast (female in situ)", "cervix", 
#'                      "childhood (ages <15, all sites)", "childhood (ages <20, all sites)", "colon & rectum", "esophagus", 
#'                      "kidney & renal pelvis", "leukemia", "liver & bile duct", "lung & bronchus", "melanoma of the skin", 
#'                      "non-hodgkin lymphoma", "oral cavity & pharynx", "ovary", "pancreas", "prostate", "stomach", 
#'                      "thyroid", "uterus (corpus & uterus, nos)"
#' 
#' @returns A string for its respective cancer type
#' 
#' @examples 
#' \dontrun{
#' handle_cancer("bladder")
#' }
handle_cancer <-function(cancer) {
  cancer <- tolower(cancer)
  
  cancer_mapping <- c(
    "all cancer sites" = "001",
    "bladder" = "071",
    "brain & ons" = "076",
    "breast (female)" = "055",
    "breast (female in situ)" = "400",
    "cervix" = "057",
    "childhood (ages <15, all sites)" = "516",
    "childhood (ages <20, all sites)" = "515",
    "colon & rectum" = "020",
    "esophagus" = "017",
    "kidney & renal pelvis" = "072",
    "leukemia" = "090",
    "liver & bile duct" = "035",
    "lung & bronchus" = "047",
    "melanoma of the skin" = "053",
    "non-hodgkin lymphoma" = "086",
    "oral cavity & pharynx" = "003",
    "ovary" = "061",
    "pancreas" = "040",
    "prostate" = "066",
    "stomach" = "018",
    "thyroid" = "080",
    "uterus (corpus & uterus, nos)" = "058"
  )
  
  cancer_code <- cancer_mapping[cancer]
  
  if (is.null(cancer_code)) {
    stop("Invalid input")
  }
  
  return(as.character(cancer_code))
}