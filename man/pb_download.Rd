% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pb_download.R
\name{pb_download}
\alias{pb_download}
\title{Download data from an existing release}
\usage{
pb_download(
  file = NULL,
  dest = ".",
  repo = guess_repo(),
  tag = "latest",
  overwrite = TRUE,
  ignore = "manifest.json",
  use_timestamps = TRUE,
  show_progress = getOption("piggyback.verbose", default = interactive()),
  .token = gh::gh_token()
)
}
\arguments{
\item{file}{name or vector of names of files to be downloaded. If \code{NULL},
all assets attached to the release will be downloaded.}

\item{dest}{name of vector of names of where file should be downloaded.
Can be a directory or a list of filenames the same length as \code{file}
vector. Any directories in the path provided must already exist.}

\item{repo}{Repository name in format "owner/repo". Defaults to \code{guess_repo()}.}

\item{tag}{tag for the GitHub release to which this data should be attached.}

\item{overwrite}{Should any local files of the same name be overwritten?
default \code{TRUE}.}

\item{ignore}{a list of files to ignore (if downloading "all" because
\code{file=NULL}).}

\item{use_timestamps}{DEPRECATED.}

\item{show_progress}{logical, show a progress bar be shown for uploading?
Defaults to \verb{[interactive()]} - can also set globally with options("piggyback.verbose")}

\item{.token}{GitHub authentication token, see \verb{[gh::gh_token()]}}
}
\description{
Download data from an existing release
}
\examples{
\dontrun{
 ## Download a specific file.
 ## (dest can be omitted when run inside and R project)
 piggyback::pb_download("iris.tsv.gz",
                        repo = "cboettig/piggyback-tests",
                        dest = tempdir())
}
\dontrun{
 ## Download all files
 piggyback::pb_download(repo = "cboettig/piggyback-tests",
                        dest = tempdir())

}
}
