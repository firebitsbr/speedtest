% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/upload.r
\name{spd_upload_test}
\alias{spd_upload_test}
\title{Perform an upload speed/bandwidth test}
\usage{
spd_upload_test(server, config = NULL, summarise = TRUE, timeout = 60,
  .progress = "dplyr")
}
\arguments{
\item{server}{a data frame row from one of the functions that retrieves or
filters a server list. You can pass in a full servers list but
only the first entry will be processed.}

\item{config}{client configuration retrieved via \code{\link[=spd_config]{spd_config()}}. If \code{NULL} it
will be retrieved}

\item{summarise}{the raw results from each test --- including file sizes ---
will be returned if the value is \code{FALSE}. If \code{TRUE} only summary
statistics will be returned.}

\item{timeout}{max time (seconds) to wait for a connection or download to finish.
Default is \code{60} seconds}

\item{.progress}{if "\code{dplyr}" then \code{dplyr} progress bars will be used. If
"\code{dot}" then "\code{.}" will be used. If anything else or "\code{none}", then
no progress will be reported.}
}
\description{
Currently, six tests are performed in increasing order of size.
}
\details{
This uses the legacy HTTP method of determining your bandwidth/speed and,
as such, has many issues. Rather than hack-compensate for error-prone
results with smaller files used on high-bandwidth connections, raw size +
transfer speed data is returned enabling you to perform your own adjustments
or choose which values to "believe".
}
\note{
speed/bandwidth values are in Mbits/s; these tests consume bandwidth so
if you're on a metered connection, you may incur charges.
}
