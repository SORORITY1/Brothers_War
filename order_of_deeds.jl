# Code to explain the New Dystopian Brothers War in more detail

# Import necessary libraries
using ColorSchemes

# Define the participants' past and future earnings
past_earnings = [100, 200, 150, 300, 250]
future_earnings = [120, 180, 200, 250, 220]

# Define the participants' good or bad deeds
good_deeds = [true, false, true, true, false]
bad_deeds = [false, true, false, true, false]

# Define the participants' confessions or repentance
confessions = [true, false, true, false, true]
repentance = [false, true, false, true, false]

# Calculate the participants' current level based on past and future earnings
current_level = (past_earnings .+ future_earnings) ./ 2

# Create a color scale to interpret the winners and losers
color_scale = ColorSchemes.RdYlBu_9

# Interpret the winners and losers based on the color scale
winners = current_level .> mean(current_level)
losers = current_level .<= mean(current_level)

# Print the results
println("Winners:")
for (index, participant) in enumerate(winners)
    if participant
        println("Participant $index")
    end
end

println("Losers:")
for (index, participant) in enumerate(losers)
    if participant
        println("Participant $index")
    end
end
