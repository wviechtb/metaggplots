\name{ggfunnel}
\alias{ggfunnel}
\alias{ggfunnel.rma}
\title{Funnel Plots}
\description{Function to create funnel plots with ggplot2.}
\usage{
ggfunnel(x, \dots)

\method{ggfunnel}{rma}(x, \dots)
}
\arguments{
   \item{x}{an object of class \code{"rma"}.}
   \item{\dots}{other arguments.}
}
\details{
   Description of what the function does.
}
\note{
   In case some additional notes are needed.
}
\value{
   A plot object.
}
\author{
   John Sakaluk \email{jksakaluk@gmail.com}
}
\references{
   Light, R. J., & Pillemer, D. B. (1984). \emph{Summing up: The science of reviewing research}. Cambridge, MA: Harvard University Press.

   Peters, J. L., Sutton, A. J., Jones, D. R., Abrams, K. R., & Rushton, L. (2008). Contour-enhanced meta-analysis funnel plots help distinguish publication bias from other causes of asymmetry. \emph{Journal of Clinical Epidemiology}, \bold{61}, 991--996.

   Sterne, J. A. C., & Egger, M. (2001). Funnel plots for detecting bias in meta-analysis: Guidelines on choice of axis. \emph{Journal of Clinical Epidemiology}, \bold{54}, 1046--1055.
}
\seealso{
   \code{\link{rma.uni}}, \code{\link{forest.rma}}
}
\examples{
### load BCG vaccine data
dat <- get(data(dat.bcg))

### calculate log risk ratios and corresponding sampling variances
dat <- escalc(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat)

### random-effects model
res <- rma(yi, vi, data=dat)

### standard funnel plot
funnel(res)

### funnel plot using metaggplots
ggfunnel(res)
}
\keyword{hplot}
