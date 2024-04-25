local screenWidth, screenHeight = term.getSize()
local snake = {{x = 3, y = 3}}
local direction = "right"
local food = {x = math.random(2, screenWidth - 1), y = math.random(2, screenHeight - 1)}
local score = 0

local function drawSnake()
    for _, segment in ipairs(snake) do
        term.setCursorPos(segment.x, segment.y)
        term.write("#")
    end
end

local function drawFood()
    term.setCursorPos(food.x, food.y)
    term.write("*")
end

local function moveSnake()
    local head = snake[1]
    local newHead = {x = head.x, y = head.y}

    if direction == "right" then
        newHead.x = newHead.x + 1
    elseif direction == "left" then
        newHead.x = newHead.x - 1
    elseif direction == "up" then
        newHead.y = newHead.y - 1
    elseif direction == "down" then
        newHead.y = newHead.y + 1
    end

    table.insert(snake, 1, newHead)

    if newHead.x == food.x and newHead.y == food.y then
        score = score + 1
        food = {x = math.random(2, screenWidth - 1), y = math.random(2, screenHeight - 1)}
    else
        table.remove(snake)
    end
end

local function checkCollision()
    local head = snake[1]

    if head.x < 1 or head.x > screenWidth or head.y < 1 or head.y > screenHeight then
        return true
    end

    for i = 2, #snake do
        if head.x == snake[i].x and head.y == snake[i].y then
            return true
        end
    end

    return false
end

local function drawScore()
    term.setCursorPos(1, screenHeight)
    term.write("Score: " .. score)
end

while true do
    term.clear()
    drawSnake()
    drawFood()
    drawScore()

    local _, key = os.pullEvent("key")

    if key == keys.right and direction ~= "left" then
        direction = "right"
    elseif key == keys.left and direction ~= "right" then
        direction = "left"
    elseif key == keys.up and direction ~= "down" then
        direction = "up"
    elseif key == keys.down and direction ~= "up" then
        direction = "down"
    end

    moveSnake()

    if checkCollision() then
        term.clear()
        term.setCursorPos(1, 1)
        print("Game Over! Score: " .. score)
        sleep(3)
        break
    end

    sleep(0.1)
end
