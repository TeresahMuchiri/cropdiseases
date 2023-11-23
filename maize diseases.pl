% Facts about maize diseases, symptoms, and treatments

% Maize diseases
disease(maize_rust).
disease(maize_blight).

% Symptoms of maize diseases
symptom(maize_rust, yellow_spots_on_leaves).
symptom(maize_rust, orange_powdery_pustules).
symptom(maize_blight, wilting_of_leaves).
symptom(maize_blight, brown_spots_on_leaves).

% Treatments for maize diseases
treatment(maize_rust, fungicide_spray).
treatment(maize_blight, antibacterial_spray).

% Rules to diagnose maize diseases based on symptoms
diagnose_disease(Symptom) :-
    symptom(Disease, Symptom),
    write('Your maize crop may have '), write(Disease),
    write('. Recommended treatment: '), treatment(Disease, Treatment),
    write(Treatment), nl.

% Example usage:
% To diagnose based on a specific symptom, use: diagnose_disease(yellow_spots_on_leaves).
