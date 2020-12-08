download_files <- function(df, write_path = "data/minutes_files") {

   df_iterar <- df

  #%>%
  #   dplyr::filter(link_ata_status == 200,!is.na(link_ata_status)) %>%
  #   dplyr::mutate(
  #     nome_arquivo = fs::path_file(url_link),
  #     nome_arquivo_salvar =
  #       glue::glue("{write_path}/{sigla_comite}/{nome_arquivo}"),
  #     path = fs::path_dir(nome_arquivo_salvar)
  #   )
  #
    unique(df_iterar$path) %>% fs::dir_create()



    for (i in 1:nrow(df_iterar)) {
      df_linha <- df_iterar[i,]
      nome_arquivo <- df_iterar[i,]$nome_arquivo_salvar

      if (!file.exists(nome_arquivo)) {
        download.file(
          url = df_linha$url_link,
          destfile = df_linha$nome_arquivo_salvar,
          mode = "wb"
        )
        print(glue::glue("Arquivo baixado em: {nome_arquivo}"))

      } else if (file.exists(nome_arquivo)) {
        print(glue::glue("Arquivo não baixado pois já existe: {nome_arquivo}"))
      } else {
        print(glue::glue("Arquivo não baixado, INVESTIGAR: {nome_arquivo}"))
      }

    }


  }
