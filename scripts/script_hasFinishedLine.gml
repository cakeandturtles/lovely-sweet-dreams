/// script_hasFinishedLine()    will return whether or not the current line is finished for npc
var lines = script_split(self.monologue[self.curr_line],"^");
var text_length = 0;
for (var i = 0; i < array_length_1d(lines); i++) {
    text_length += string_length(lines[i]);
}
return self.text_counter >= text_length;
