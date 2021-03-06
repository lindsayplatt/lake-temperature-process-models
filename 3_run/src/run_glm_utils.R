

run_glm <- function(sim_dir, nml_obj, export_file = NULL){

  glmtools::write_nml(nml_ob, file.path(sim_dir, 'glm2.nml'))
  GLMr::run_glm(sim_dir, verbose = FALSE)
  out_dir <- glmtools::get_nml_value('out_dir')
  out_file <- paste0(glmtools::get_nml_value('out_fn'), '.nc')
  nc_path <- file.path(sim_dir, out_dir, out_file)

  if (!is.null(export_file)){
    export_temp(filepath = export_file, nml_obj, nc_filepath)
  }
  invisible(nc_path)
}
