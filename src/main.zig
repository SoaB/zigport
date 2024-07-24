const rl = @cImport({
    @cInclude("Raylib.h");
});

pub fn main() void {
    const screenWidth = 800;
    const screenHeight = 450;

    rl.InitWindow(screenWidth, screenHeight, "儿儿儿");
    defer rl.CloseWindow();

    rl.SetTargetFPS(60);

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        defer rl.EndDrawing();

        rl.ClearBackground(rl.BLACK);
        rl.DrawText("For Test !", 190, 200, 20, rl.LIGHTGRAY);
    }
}