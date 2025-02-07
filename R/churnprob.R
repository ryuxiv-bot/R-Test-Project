# Define function to get churn probability for a specific customer
get_churn_probability <- function(data, customer_id) {
  if (!customer_id %in% data$CustomerId) {
    stop("Customer ID not found in the dataset.")
  }
  return(data[data$CustomerId == customer_id, Churn_Probability])
}


