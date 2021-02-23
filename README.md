
<!-- README.md is generated from README.Rmd. Please edit that file -->

# IV ISA Forum of Sociology

-   Paper 117879: Transparency of Information on the Water Basin
    Committees Plenums in the Sao Paulo Macrometropolis, Brazil

-   Session Title: Environmental Security, Resilience and Sustainability
    of Cities in the Global South

-   Authors: Beatriz Milz and Pedro Roberto Jacobi

<!-- badges: start -->
<!-- badges: end -->

## Abstract

Abstract Text: The Sao Paulo Macrometropolis (SPMM) is the most
important urban agglomeration in Brazil and includes more than 170
municipalities (including the Sao Paulo Metropolitan Region) and more
than 33,6 million inhabitants. Recently (2014-2015) the SPMM faced a
severe water crisis. This region presents complexity of water resources
management, and there are eight Water Resource Management Units (UGRHI)
completely or partially in the area of the SPMM. The National Water Law
in Brazil was created in 1997, incorporating modern water resources
management principles and creating the “Water basin committees”, which
incorporate civil society actors on decision making. The transparency of
information on water resources management are one of the fundamental
conditions for achieving good water governance, along with promoting
participation, inclusion, accountability, predictability and
responsiveness. Considering the importance of the transparency of
information on water resources management, we aim to evaluate whether
the plenum’s minutes of the Water Basin Committees that are part of the
SPMM are made available publicly on the Portal SigRH - Integrated System
of Water Resources Management of the State of Sao Paulo. Considering the
plenum’s minutes encountered, we also aim to identify the most discussed
subjects in plenary sessions using text mining methods.

Keywords: Text Mining, Water Crisis, Water Governance and Water Resource
Management Units

## Presentation

-   Available in:
    [macroamb-isaconf2021.netlify.app/](https://macroamb-isaconf2021.netlify.app/)

[![](https://macroamb-isaconf2021.netlify.app/img/share-card.png)<!-- -->](https://macroamb-isaconf2021.netlify.app/)

## Important files in the project

-   Code scripts:
    -   [`script_1.Rmd`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/script_1.Rmd) -
        Initial steps to prepare the dataset with the plenums minutes,
        util the download of all files.

        -   [`script_2.Rmd`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/script_2.Rmd) -
            Removing duplicates in the dataset.

        -   [`script_3.Rmd`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/script_3.Rmd) -
            Reading the filtered files into different datasets for each
            filetype possible.

        -   [`script_4.Rmd`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/script_4.Rmd) -
            Reading the datasets created into a single dataset with the
            plenums minutes as a column, and fixing some cases of error
            of files while reading.

        -   [`script_5.Rmd`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/script_5.Rmd) -
            Exploring the corpus with text mining methods.

            -   [`stop_words.R`](https://github.com/beatrizmilz/IV_ISA_2021/blob/master/stop_words.R) -
                List of stop words - words and bigrams removed from the
                analisys
