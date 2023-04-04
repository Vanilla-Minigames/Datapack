import shutil
import os

SCOREBOARD_SEARCH_TREE_DEPTH = 12
FUNCTION_PATH = "api:common/generated"

START_TEMPLATE = "<START>"
END_TEMPLATE = "<END>"
LEVEL_TEMPLATE = "<LEVEL>"
SEARCH_COMMAND = "execute if score #id temp matches {0}..{1} run function {2}/l{3}/{0}-{1}".format(START_TEMPLATE, END_TEMPLATE, FUNCTION_PATH, LEVEL_TEMPLATE)

GET_COMMAND = "execute if score #action temp = #get_action value run data modify storage api:common result set from storage api:common get[{id: <ID>}]"
SAVE_COMMAND = "execute if score #action temp = #save_action value run data modify storage api:common save[{id: <ID>}] set from storage api:common payload"
DELETE_COMMAND = "execute if score #action temp = #delete_action value run data remove storage api:common delete[{id: <ID>}]"

current_path = os.path.dirname(os.path.realpath(__file__))
generation_path = os.path.join(current_path, "../../data/api/functions/common/generated")

def generate():
    if not os.path.isdir(generation_path):
        os.mkdir(generation_path)
    
    first_start = 1
    second_end = 2**SCOREBOARD_SEARCH_TREE_DEPTH
    second_start = int(second_end / 2) + 1
    first_end = second_start

    with open(os.path.join(generation_path, "index.mcfunction"), "a") as file:
        current_level = SCOREBOARD_SEARCH_TREE_DEPTH - 1
        file.write("data remove storage api:common result\n") # This is used to remove the previous result
        file.write(format_search_command(current_level, first_start, first_end)+"\n")
        file.write(format_search_command(current_level, second_start, second_end)+"\n")
        file.write("data remove storage api:common payload\n")
        file.write("data modify storage api:common save set value []\n")

    for level in range(SCOREBOARD_SEARCH_TREE_DEPTH):
        os.mkdir(os.path.join(generation_path, "l{0}".format(level)))
        for index in range(int(2**(SCOREBOARD_SEARCH_TREE_DEPTH - level))):
            start = int(2**SCOREBOARD_SEARCH_TREE_DEPTH / 2**(SCOREBOARD_SEARCH_TREE_DEPTH - level) * index)  + 1
            end = int(2**SCOREBOARD_SEARCH_TREE_DEPTH / 2**(SCOREBOARD_SEARCH_TREE_DEPTH - level) * (index+1))
            with open(os.path.join(generation_path, f"l{level}/{start}-{end}.mcfunction"), "a") as file:
                if (level == 0):
                    id = index + 1
                    file.write(GET_COMMAND.replace("<ID>", str(id))+"\n")
                    file.write(SAVE_COMMAND.replace("<ID>", str(id))+"\n")
                    file.write(DELETE_COMMAND.replace("<ID>", str(id))+"\n")
                    continue
                
                difference = end - start
                second_start = int(start + ((difference+1) / 2))
                first_end = second_start - 1
                file.write(format_search_command(level-1, start, first_end)+"\n")
                file.write(format_search_command(level-1, second_start, end)+"\n")

def format_search_command(level: int, start: int, end: int):
    return SEARCH_COMMAND.replace(LEVEL_TEMPLATE, str(level)).replace(START_TEMPLATE, str(start)).replace(END_TEMPLATE, str(end))

def reset():
    if os.path.isdir(generation_path):
        shutil.rmtree(generation_path)

if __name__ == "__main__":
    reset()
    generate()