.class public Lru/vtosters/lite/ui/wallpapers/NativeEffects;
.super Ljava/lang/Object;
.source "NativeEffects.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native_effects"

    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native dim(Ljava/nio/ByteBuffer;III)Ljava/lang/String;
.end method

.method public static native emboss(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
.end method

.method public static native engrave(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
.end method

.method public static native flea(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public static native gaussian(Ljava/nio/ByteBuffer;IIF)Ljava/lang/String;
.end method

.method public static native invert(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public static native monochrome(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public static native mosaic(Ljava/nio/ByteBuffer;III)Ljava/lang/String;
.end method

.method public static native sepia(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public static native snow(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method
