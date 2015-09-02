#' Describe atomic vectors or data.frames.
#'
#' \code{describe} takes vectors and data.frames and returns a data.frame containing important descriptive statistics.
#'
#' @param .x a vector or data.frame to be described.
#' @return  a data.frame containing important descriptive statistics.
#' @examples
#' # Let's make a comment
#' describe(mtcars)
#' @export
describe <- function(.x) UseMethod("describe")

#' describe numeric atomic vectors.
#'
#' \code{describe_numeric} takes numeric vectors and returns a data.frame containing important descriptive statistics.
#'
#' @param .x a numeric atomic vector or data.frame to be described.
#' @return  a data.frame containing important descriptive statistics.
#' @examples
#' # Example
#' describe_numeric(1:100)
#' @export
describe_numeric <- function(.x) {
  if(!is.numeric(.x)) stop(".x must be a numeric vector!")
  if(!is.atomic(.x)) stop(".x must be an atomic vector!")
  describe_functions <- list(
    .count_elements = function(.x, ...) length(.x),
    .count_nulls = function(.x, ...) sum(is.na(.x)),
    .q0_value = function(.x, ...) min(.x, ...),
    .q25_value = function(.x, ...) quantile(.x, probs = 0.25, ...),
    .q50_value = function(.x, ...) median(.x, ...),
    .q75_value = function(.x, ...) quantile(.x, probs = 0.75, ...),
    .q100_value = function(.x, ...) max(.x, ...),
    .mean_value = function(.x, ...) mean(.x, ...),
    .sd_value = function(.x, ...) sd(.x, ...)
  )
  return(as.data.frame(lapply(describe_functions, function(.f) .f(.x, na.rm = TRUE)), row.names = "1"))
}

#' describe non-numeric atomic vectors.
#'
#' \code{describe_nonnumeric} takes non-numeric atomic vectors and returns a data.frame containing important descriptive statistics.
#'
#' @param .x a non-numeric atomic vector to be described.
#' @return  a data.frame containing important descriptive statistics.
#' @examples
#' # Example
#' describe(letters)
#' @export
describe_nonnumeric <- function(.x) {
  if(is.numeric(.x)) stop(".x must be a non-numeric vector!")
  if(!is.atomic(.x)) stop(".x must be an atomic vector!")
  describe_functions <- list(
    .count_elements = function(.x, ...) length(.x),
    .count_nulls = function(.x, ...) sum(is.na(.x)),
    .q0_value = function(.x, ...) min(.x, ...),
    .q25_value = function(.x, ...) NA,
    .q50_value = function(.x, ...) NA,
    .q75_value = function(.x, ...) NA,
    .q100_value = function(.x, ...) max(.x, ...),
    .mean_value = function(.x, ...) NA,
    .sd_value = function(.x, ...) NA
  )
  return(as.data.frame(lapply(describe_functions, function(.f) .f(.x, na.rm = TRUE)),
                       row.names = "1",
                       stringsAsFactors = FALSE))
}

#' @describeIn describe Method for numeric vectors.
#' @export
describe.numeric <- function(.x) return(describe_numeric(.x))

#' @describeIn describe Method for character vectors.
#' @export
describe.character <- function(.x) return(describe_nonnumeric(.x))

#' @describeIn describe Method for factors.
#' @export
describe.factor <- function(.x) return(describe_nonnumeric(as.character(.x)))

#' @describeIn describe Method for Date vectors.
#' @export
describe.Date <- function(.x) return(describe_nonnumeric(as.character(.x)))

#' @describeIn describe Method for logical vectors.
#' @export
describe.logical <- function(.x) return(describe_nonnumeric(as.character(.x)))

#' @describeIn describe Method for data.frames.
#' @export
describe.data.frame <- function(.x) {
  call <- match.call()
  .df <- do.call(rbind, lapply(.x, describe))
  .metadata <- data.frame(.column_name=rownames(.df),
                          .column_class=sapply(.x, class),
                          .column_type=sapply(.x, typeof),
                          stringsAsFactors = FALSE,
                          row.names = as.character(1:nrow(.df)))
  .described_dataset <- cbind(.metadata, .df)
  rownames(.described_dataset) <- NULL
  return(.described_dataset)
}

#' @describeIn describe Method for default.
#' @export
describe.default <- function(.x) {
  message(paste0("No method exists for object of class: ", class(.x), ".", sep = ""))
  message("Returning NULL instead.")
  return(NULL)
}