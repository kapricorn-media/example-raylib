const std = @import("std");

const raylib = @import("deps/raylib-zig/lib.zig");

const PROJECT_NAME = "example-raylib";

pub fn build(b: *std.build.Builder) void
{
    const mode = b.standardReleaseOptions();
    const target = b.standardTargetOptions(.{});

    const app = b.addExecutable(PROJECT_NAME, "src/main.zig");
    app.setBuildMode(mode);
    app.setTarget(target);
    raylib.link(app, false);
    raylib.addAsPackage("raylib", app);
    raylib.math.addAsPackage("raylib-math", app);
    app.install();

    const runTests = b.step("test", "Run tests");
    _ = runTests; // no tests
}
