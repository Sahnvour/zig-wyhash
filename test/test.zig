const std = @import("std");
const testing = std.testing;

const wy = @import("wyhash");


}

test "test vectors" {
    testing.expectEqual(wy.hash("", 0), 0xf961f936e29c9345);
    testing.expectEqual(wy.hash("a", 1), 0x6dc395f88b363baa);
    testing.expectEqual(wy.hash("abc", 2), 0x3bc9d7844798ddaa);
    testing.expectEqual(wy.hash("message digest", 3), 0xb31238dc2c500cd3);
    testing.expectEqual(wy.hash("abcdefghijklmnopqrstuvwxyz", 4), 0xea0f542c58cddfe4);
    testing.expectEqual(wy.hash("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789", 5), 0x1799aca591fe73b4);
    testing.expectEqual(wy.hash("12345678901234567890123456789012345678901234567890123456789012345678901234567890", 6), 0x7f0d02f53d64c1f9);
}

test "Byte order" {}
