/// script_playerStep() decide what action to take based on mode

if (mode == "platformer") {
    script_playerPlatformerStep();
}
else if (mode == "rpg") {
    script_playerRpgStep();
}
else if (mode == "sleeping") {
    script_playerSleepingStep();
}
else if (mode == "riding") {
    script_playerRidingStep();
}
