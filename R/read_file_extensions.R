read_different_file_extensions <- function(ext) {
  reading_files <- list.files(
    path = "data/minutes_files",
    recursive =
      TRUE,
    full.names = TRUE,
    pattern = glue::glue(".{ext}$")
  ) %>%
    readtext::readtext()

  readr::write_rds(
    reading_files,
    file = glue::glue(
      "data/reading_downloaded_files/reading_{ext}_{Sys.Date()}.rds"
    )
  )

  reading_files

}



read_htm_file_extensions <- function() {
  htm_files <- list.files(
    path = "data/minutes_files",
    recursive =
      TRUE,
    full.names = TRUE,
    pattern = glue::glue(".htm$")
  )

  dataset_html <-
    tibble::tibble(doc_id = as.character(), text = as.character())

  for (i in 1:length(htm_files)) {
    doc_id_i <- htm_files[i] %>% fs::path_file()

    text_i <- htm_files[i] %>%
      purrr::map(xml2::read_html) %>%
      purrr::map( ~ rvest::html_nodes(.x, 'p,h1,h2,h3')) %>%
      purrr::map( ~ rvest::html_text(.x) %>%
                    stringr::str_squish()) %>%
      unlist() %>%
      paste0(collapse = " ")

    dataset_html <-
      dataset_html %>% tibble::add_row(doc_id = doc_id_i, text = text_i)


  }

  readr::write_rds(
    dataset_html,
    file = glue::glue(
      "data/reading_downloaded_files/reading_htm_{Sys.Date()}.rds"
    )
  )

  dataset_html

}



read_doc_file_extensions <- function() {
  doc_files <- list.files(
    path = "data/minutes_files",
    recursive =
      TRUE,
    full.names = TRUE,
    pattern = glue::glue(".doc$")
  )

  dataset_doc <-
    tibble::tibble(doc_id = as.character(), text = as.character())

  for (i in 1:length(doc_files)) {

    doc_id_i <- doc_files[i] %>% fs::path_file()


    text_anti <-
      purrr::possibly(antiword::antiword, otherwise = "Erro Antiword")

    text_i <- text_anti(doc_files[i]) %>%
      stringr::str_squish() %>%
      unlist() %>%
      paste0(collapse = " ")


    dataset_doc <-
      dataset_doc %>% tibble::add_row(doc_id = doc_id_i, text = text_i)

    paste0(glue::glue("Index baixado: {i}"))

  }

  readr::write_rds(
    dataset_doc,
    file = glue::glue(
      "data/reading_downloaded_files/reading_doc_{Sys.Date()}.rds"
    )
  )

  dataset_doc

}
