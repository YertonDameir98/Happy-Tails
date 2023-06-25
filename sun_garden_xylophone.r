#Create Data Frame that includes pets available for adoption
adoptions <- data.frame(
  pet = c("Dog","Cat","Kitten","Puppy","Parrot"), 
  size = c("Large","Small","Small","Small","Medium"), 
  age = c(5, 3, 1, 2, 7), 
  breed = c("Mix","Mix","Mix","Mix","African Grey"), 
  gender = c("Male","Female","Female","Male","Female"), 
  vaccinations = c(TRUE, TRUE, FALSE, FALSE, TRUE)
)

#Create a function to check for age and vaccinations
check_eligibility <- function(min_age, vac_status) {
  adoptable <- adoptions[adoptions$age >= min_age & adoptions$vaccinations == vac_status,]
  adoptable
}

#Create a function to search for pet by size
search_size <- function(pet_size) {
  adoptable <- adoptions[adoptions$size == pet_size,]
  adoptable
}

#Create a function to search for pet by breed
search_breed <- function(pet_breed) {
  adoptable <- adoptions[adoptions$breed == pet_breed,]
  adoptable
}

#Create a function to search for pet by gender
search_gender <- function(pet_gender) {
  adoptable <- adoptions[adoptions$gender == pet_gender,]
  adoptable
}

#Create a function to filter out pets that are not eligible for adoption
filter_not_eligible <- function() {
  not_adoptable <- adoptions[adoptions$age < 2 & adoptions$vaccinations == FALSE,]
  not_adoptable
}

#Read in user input for pet search
pet_choice <- readline("Which pet would you like to adopt? (dog, cat, kitten, puppy, parrot): ")

#Check eligibility and display available pets
if (check_eligibility(2, TRUE)$pet == pet_choice) {
  print("The following pet is eligible for adoption:")
  print(check_eligibility(2, TRUE))
} else {
  print("The following pet is not eligible for adoption:")
  print(filter_not_eligible())
}

#Read in user input for size search
pet_size <- readline("Which size would you like? (large, small, medium): ")

#Display available pets by size
if(search_size(pet_size)$size == pet_size) {
  print("The following pets are available by size:")
  print(search_size(pet_size))
} else {
  print("No pets are available by that size.")
}

#Read in user input for breed search
pet_breed <- readline("Which breed would you like? (Mix, African Grey): ")

#Display available pets by breed
if(search_breed(pet_breed)$breed == pet_breed) {
  print("The following pets are available by breed:")
  print(search_breed(pet_breed))
} else {
  print("No pets are available by that breed.")
}

#Read in user input for gender search
pet_gender <- readline("Which gender would you like? (Male, Female): ")

#Display available pets by gender
if(search_gender(pet_gender)$gender == pet_gender) {
  print("The following pets are available by gender:")
  print(search_gender(pet_gender))
} else {
  print("No pets are available by that gender.")
}