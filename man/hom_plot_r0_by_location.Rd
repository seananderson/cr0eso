% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{hom_plot_r0_by_location}
\alias{hom_plot_r0_by_location}
\title{Plot r0 by location as extracted from hierarchical outbreak model.
If extracted_posts is NULL then posts object is used to first extract the R0
and incidence draws from posterior (note this will take longer)}
\usage{
hom_plot_r0_by_location(extracted_posts = NULL, posts = NULL)
}
\arguments{
\item{extracted_posts}{object returned by hom_extract_posterior_draws}

\item{posts}{Object after calling extract of stan model object of hierarchical model}
}
\value{
list containing:
 * plot - ggplot object
 * table - tibble object of results
}
\description{
Plot r0 by location as extracted from hierarchical outbreak model.
If extracted_posts is NULL then posts object is used to first extract the R0
and incidence draws from posterior (note this will take longer)
}
\examples{
 mod # RSTAN fit object
 posts <- extract(mod) # extract posterior from model object
 extracted_posts <- hom_extract_posterior_draws(posts) # get object of incidence and r0
 result <- hom_plot_r0_by_location(extracted_posts=extracted_posts)
 # plot results
 show(result$plot)
}
