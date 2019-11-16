# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
def hello_world language
    language_hash = {
        "es" => "hello world",
        "de" => "hallo welt",
        "ru" => "Привет, мир",
        "ja" => "こんにちは世界"
    }
    language_hash[language]
end
p hello_world 'de'
# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'

def assign_grade score
    if score > 100 || score < 0
        begin
            raise 'invalid input; you get an F'
        rescue StandardError => e
            puts e
            score = 0
        end
    end
    grades_arr = ['F','F','F','F','F','F','D','C','B','A','A']
    grades_arr[(score/10).floor]
end
p assign_grade 96
p assign_grade 70
p assign_grade -56
p assign_grade 568
# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.



# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
def pluralizer num, animal
    result = animal + (num > 1 ? 's' : '')
    num.to_s + ' ' + result
end

p pluralizer(1, 'dog')
p pluralizer(4, 'dog')

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.

# pseudocode 
# would create a hash of these cases, then control if the hash contains animal if not then take path already implemented 