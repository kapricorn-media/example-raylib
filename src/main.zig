const std = @import("std");

const rl = @import("raylib");

pub fn main() void
{
    const screenWidth = 800;
    const screenHeight = 450;

    rl.InitWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");

    rl.SetTargetFPS(60);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();

        rl.ClearBackground(rl.WHITE);

        rl.DrawText("Congrats! You created your first window!", 190, 200, 20, rl.LIGHTGRAY);

        rl.EndDrawing();
    }

    rl.CloseWindow();
}