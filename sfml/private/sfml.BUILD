cc_library(
    name = "sfml_config",
    hdrs = [
        "include/SFML/Config.hpp",
    ],
    defines = [
        "SFML_STATIC",
    ],
    include_prefix = "SFML",
    local_defines = select({
        "@platforms//os:linux": [],
        "@platforms//os:windows": [
            "UNICODE",
            "_UNICODE",
        ],
    }),
    strip_include_prefix = "include/SFML",
)

cc_library(
    name = "sfml_graphics",
    srcs = [
        "src/SFML/Graphics/BlendMode.cpp",
        "src/SFML/Graphics/CircleShape.cpp",
        "src/SFML/Graphics/Color.cpp",
        "src/SFML/Graphics/ConvexShape.cpp",
        "src/SFML/Graphics/Font.cpp",
        "src/SFML/Graphics/GLCheck.cpp",
        "src/SFML/Graphics/GLCheck.hpp",
        "src/SFML/Graphics/GLExtensions.cpp",
        "src/SFML/Graphics/GLExtensions.hpp",
        "src/SFML/Graphics/GLLoader.cpp",
        "src/SFML/Graphics/GLLoader.hpp",
        "src/SFML/Graphics/Glsl.cpp",
        "src/SFML/Graphics/Image.cpp",
        "src/SFML/Graphics/ImageLoader.cpp",
        "src/SFML/Graphics/ImageLoader.hpp",
        "src/SFML/Graphics/RectangleShape.cpp",
        "src/SFML/Graphics/RenderStates.cpp",
        "src/SFML/Graphics/RenderTarget.cpp",
        "src/SFML/Graphics/RenderTexture.cpp",
        "src/SFML/Graphics/RenderTextureImpl.cpp",
        "src/SFML/Graphics/RenderTextureImpl.hpp",
        "src/SFML/Graphics/RenderTextureImplDefault.cpp",
        "src/SFML/Graphics/RenderTextureImplDefault.hpp",
        "src/SFML/Graphics/RenderTextureImplFBO.cpp",
        "src/SFML/Graphics/RenderTextureImplFBO.hpp",
        "src/SFML/Graphics/RenderWindow.cpp",
        "src/SFML/Graphics/Shader.cpp",
        "src/SFML/Graphics/Shape.cpp",
        "src/SFML/Graphics/Sprite.cpp",
        "src/SFML/Graphics/Text.cpp",
        "src/SFML/Graphics/Texture.cpp",
        "src/SFML/Graphics/TextureSaver.cpp",
        "src/SFML/Graphics/TextureSaver.hpp",
        "src/SFML/Graphics/Transform.cpp",
        "src/SFML/Graphics/Transformable.cpp",
        "src/SFML/Graphics/Vertex.cpp",
        "src/SFML/Graphics/VertexArray.cpp",
        "src/SFML/Graphics/VertexBuffer.cpp",
        "src/SFML/Graphics/View.cpp",
    ],
    hdrs = [
        "include/SFML/Graphics.hpp",
        "include/SFML/Graphics/BlendMode.hpp",
        "include/SFML/Graphics/CircleShape.hpp",
        "include/SFML/Graphics/Color.hpp",
        "include/SFML/Graphics/ConvexShape.hpp",
        "include/SFML/Graphics/Drawable.hpp",
        "include/SFML/Graphics/Export.hpp",
        "include/SFML/Graphics/Font.hpp",
        "include/SFML/Graphics/Glsl.hpp",
        "include/SFML/Graphics/Glsl.inl",
        "include/SFML/Graphics/Glyph.hpp",
        "include/SFML/Graphics/Image.hpp",
        "include/SFML/Graphics/PrimitiveType.hpp",
        "include/SFML/Graphics/Rect.hpp",
        "include/SFML/Graphics/Rect.inl",
        "include/SFML/Graphics/RectangleShape.hpp",
        "include/SFML/Graphics/RenderStates.hpp",
        "include/SFML/Graphics/RenderTarget.hpp",
        "include/SFML/Graphics/RenderTexture.hpp",
        "include/SFML/Graphics/RenderWindow.hpp",
        "include/SFML/Graphics/Shader.hpp",
        "include/SFML/Graphics/Shape.hpp",
        "include/SFML/Graphics/Sprite.hpp",
        "include/SFML/Graphics/Text.hpp",
        "include/SFML/Graphics/Texture.hpp",
        "include/SFML/Graphics/Transform.hpp",
        "include/SFML/Graphics/Transformable.hpp",
        "include/SFML/Graphics/Vertex.hpp",
        "include/SFML/Graphics/VertexArray.hpp",
        "include/SFML/Graphics/VertexBuffer.hpp",
        "include/SFML/Graphics/View.hpp",
    ],
    copts = select({
        "@platforms//os:linux": [
            "-Iexternal/sfml/src",
        ],
        "@platforms//os:windows": [
            "/Iexternal/sfml/src",
        ],
    }),
    include_prefix = "SFML",
    strip_include_prefix = "include/SFML",
    deps = [
        ":sfml_config",
        ":sfml_system",
        ":sfml_window",
    ],
)

cc_library(
    name = "sfml_system",
    srcs = [
        "src/SFML/System/Clock.cpp",
        "src/SFML/System/Err.cpp",
        "src/SFML/System/FileInputStream.cpp",
        "src/SFML/System/Lock.cpp",
        "src/SFML/System/MemoryInputStream.cpp",
        "src/SFML/System/Mutex.cpp",
        "src/SFML/System/Sleep.cpp",
        "src/SFML/System/String.cpp",
        "src/SFML/System/Thread.cpp",
        "src/SFML/System/ThreadLocal.cpp",
        "src/SFML/System/Time.cpp",
    ] + select({
        "@platforms//os:linux": [
            "src/SFML/System/Unix/ClockImpl.hpp",
            "src/SFML/System/Unix/MutexImpl.hpp",
            "src/SFML/System/Unix/SleepImpl.hpp",
            "src/SFML/System/Unix/ThreadImpl.hpp",
            "src/SFML/System/Unix/ThreadLocalImpl.hpp",
        ],
        "@platforms//os:windows": [
            "src/SFML/System/Win32/ClockImpl.cpp",
            "src/SFML/System/Win32/ClockImpl.hpp",
            "src/SFML/System/Win32/MutexImpl.cpp",
            "src/SFML/System/Win32/MutexImpl.hpp",
            "src/SFML/System/Win32/SleepImpl.cpp",
            "src/SFML/System/Win32/SleepImpl.hpp",
            "src/SFML/System/Win32/ThreadImpl.cpp",
            "src/SFML/System/Win32/ThreadImpl.hpp",
            "src/SFML/System/Win32/ThreadLocalImpl.cpp",
            "src/SFML/System/Win32/ThreadLocalImpl.hpp",
        ],
    }),
    hdrs = [
        "include/SFML/System.hpp",
        "include/SFML/System/Clock.hpp",
        "include/SFML/System/Err.hpp",
        "include/SFML/System/Export.hpp",
        "include/SFML/System/FileInputStream.hpp",
        "include/SFML/System/InputStream.hpp",
        "include/SFML/System/Lock.hpp",
        "include/SFML/System/MemoryInputStream.hpp",
        "include/SFML/System/Mutex.hpp",
        "include/SFML/System/NonCopyable.hpp",
        "include/SFML/System/Sleep.hpp",
        "include/SFML/System/String.hpp",
        "include/SFML/System/String.inl",
        "include/SFML/System/Thread.hpp",
        "include/SFML/System/Thread.inl",
        "include/SFML/System/ThreadLocal.hpp",
        "include/SFML/System/ThreadLocalPtr.hpp",
        "include/SFML/System/ThreadLocalPtr.inl",
        "include/SFML/System/Time.hpp",
        "include/SFML/System/Utf.hpp",
        "include/SFML/System/Utf.inl",
        "include/SFML/System/Vector2.hpp",
        "include/SFML/System/Vector2.inl",
        "include/SFML/System/Vector3.hpp",
        "include/SFML/System/Vector3.inl",
    ],
    copts = select({
        "@platforms//os:linux": [
            "-Iexternal/sfml/src",
        ],
        "@platforms//os:windows": [
            "/Iexternal/sfml/src",
        ],
    }),
    defines = [
        "SFML_STATIC",
    ],
    include_prefix = "SFML",
    linkopts = select({
        "@platforms//os:linux": [],
        "@platforms//os:windows": [
            "winmm.lib",
        ],
    }),
    linkstatic = True,
    local_defines = select({
        "@platforms//os:linux": [],
        "@platforms//os:windows": [
            "UNICODE",
            "_UNICODE",
        ],
    }),
    strip_include_prefix = "include/SFML",
    deps = [
        ":sfml_config",
    ],
)

cc_library(
    name = "sfml_window",
    srcs = [
        "src/SFML/Window/Clipboard.cpp",
        "src/SFML/Window/ClipboardImpl.hpp",
        "src/SFML/Window/Context.cpp",
        "src/SFML/Window/Cursor.cpp",
        "src/SFML/Window/CursorImpl.hpp",
        "src/SFML/Window/GlContext.cpp",
        "src/SFML/Window/GlContext.hpp",
        "src/SFML/Window/GlResource.cpp",
        "src/SFML/Window/InputImpl.hpp",
        "src/SFML/Window/Joystick.cpp",
        "src/SFML/Window/JoystickImpl.hpp",
        "src/SFML/Window/JoystickManager.cpp",
        "src/SFML/Window/JoystickManager.hpp",
        "src/SFML/Window/Keyboard.cpp",
        "src/SFML/Window/Mouse.cpp",
        "src/SFML/Window/Sensor.cpp",
        "src/SFML/Window/SensorImpl.hpp",
        "src/SFML/Window/SensorManager.cpp",
        "src/SFML/Window/SensorManager.hpp",
        "src/SFML/Window/Touch.cpp",
        "src/SFML/Window/VideoMode.cpp",
        "src/SFML/Window/VideoModeImpl.hpp",
        "src/SFML/Window/Window.cpp",
        "src/SFML/Window/WindowImpl.cpp",
        "src/SFML/Window/WindowImpl.hpp",
    ] + select({
        "@platforms//os:linux": [
            "src/SFML/Window/Unix/CursorImpl.hpp",
            "src/SFML/Window/Unix/InputImpl.hpp",
            "src/SFML/Window/Unix/JoystickImpl.hpp",
            "src/SFML/Window/Unix/GlxContext.hpp",
            "src/SFML/Window/Unix/SensorImpl.hpp",
        ],
        "@platforms//os:windows": [
            "src/SFML/Window/Win32/ClipboardImpl.cpp",
            "src/SFML/Window/Win32/ClipboardImpl.hpp",
            "src/SFML/Window/Win32/CursorImpl.cpp",
            "src/SFML/Window/Win32/CursorImpl.hpp",
            "src/SFML/Window/Win32/InputImpl.cpp",
            "src/SFML/Window/Win32/InputImpl.hpp",
            "src/SFML/Window/Win32/JoystickImpl.cpp",
            "src/SFML/Window/Win32/JoystickImpl.hpp",
            "src/SFML/Window/Win32/SensorImpl.cpp",
            "src/SFML/Window/Win32/SensorImpl.hpp",
            "src/SFML/Window/Win32/VideoModeImpl.cpp",
            "src/SFML/Window/Win32/WglContext.cpp",
            "src/SFML/Window/Win32/WglContext.hpp",
            "src/SFML/Window/Win32/WglExtensions.cpp",
            "src/SFML/Window/Win32/WglExtensions.hpp",
            "src/SFML/Window/Win32/WindowImplWin32.cpp",
            "src/SFML/Window/Win32/WindowImplWin32.hpp",
        ],
    }),
    hdrs = [
        "include/SFML/OpenGL.hpp",
        "include/SFML/Window.hpp",
        "include/SFML/Window/Clipboard.hpp",
        "include/SFML/Window/Context.hpp",
        "include/SFML/Window/ContextSettings.hpp",
        "include/SFML/Window/Cursor.hpp",
        "include/SFML/Window/Event.hpp",
        "include/SFML/Window/Export.hpp",
        "include/SFML/Window/GlResource.hpp",
        "include/SFML/Window/Joystick.hpp",
        "include/SFML/Window/Keyboard.hpp",
        "include/SFML/Window/Mouse.hpp",
        "include/SFML/Window/Sensor.hpp",
        "include/SFML/Window/Touch.hpp",
        "include/SFML/Window/VideoMode.hpp",
        "include/SFML/Window/Window.hpp",
        "include/SFML/Window/WindowHandle.hpp",
        "include/SFML/Window/WindowStyle.hpp",
    ],
    copts = select({
        "@platforms//os:linux": [
            "-Iexternal/sfml/src",
        ],
        "@platforms//os:windows": [
            "/Iexternal/sfml/src",
        ],
    }),
    defines = [
        "SFML_STATIC",
    ],
    include_prefix = "SFML",
    linkopts = select({
        "@platforms//os:linux": [],
        "@platforms//os:windows": [
            "advapi32.lib",
            "gdi32.lib",
            "opengl32.lib",
            "user32.lib",
        ],
    }),
    linkstatic = True,
    local_defines = select({
        "@platforms//os:linux": [],
        "@platforms//os:windows": [
            "UNICODE",
            "_UNICODE",
        ],
    }),
    strip_include_prefix = "include/SFML",
    deps = [
        ":sfml_config",
        ":sfml_system",
    ],
)

cc_library(
    name = "sfml",
    visibility = ["//visibility:public"],
    deps = [
        ":sfml_graphics",
        ":sfml_system",
        ":sfml_window",
    ],
)
