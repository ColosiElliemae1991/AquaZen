-- spa.lua --

-- Spas and Relaxation Center Enums and Constants --
local RELAXATION_TREATMENTS = {
  MASSAGES = 1,
  FACIALS = 2,
  NUM_TREATMENTS = 2
}

-- Spa and Relaxation Functions --

-- Return a table with the available relaxation treatments. 
function spa.get_relaxation_treatments()
  local treatments = {
    [RELAXATION_TREATMENTS.MASSAGES] = 'Massages',
    [RELAXATION_TREATMENTS.FACIALS] = 'Facials'
  }

  return treatments
end

-- Request a relaxation treatment to be performed by the spa. 
function spa.request_treatment(treatment)
  if treatment == RELAXATION_TREATMENTS.MASSAGES then
    print('Your massage is starting now! Enjoy!')
  elseif treatment == RELAXATION_TREATMENTS.FACIALS then
    print('Your facial is starting now! Enjoy!')
  else 
    print('Sorry, we do not offer that type of treatment.')
  end 
end

-- Main Program --
local treatments = spa.get_relaxation_treatments()

print('Welcome to the relaxation and spa center!')
print('We offer the following relaxing treatments:')

for i = 1, RELAXATION_TREATMENTS.NUM_TREATMENTS do
  print(treatments[i])
end

print('What type of treatment would you like today?')

local choice = io.read()
spa.request_treatment(choice)