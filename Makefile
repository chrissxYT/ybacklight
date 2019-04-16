debug:
	@gcc ybacklight.c -Og -fsanitize=address -Wall -Wextra -o ybacklight
	@./ybacklight
all:
	@sudo gcc ybacklight.c -O3 -o ybacklight
	@sudo chmod +s ybacklight
install:
	@sudo cp ybacklight /bin/ybacklight
	@sudo chmod +s /bin/ybacklight
test:
	@./.test.sh