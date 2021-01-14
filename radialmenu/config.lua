-- Menu configuration, array of menus to display
menuConfigs = {
    ['emotes'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "CapsLock",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 850,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 2, ['opacity'] = 0.50 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 2, ['opacity'] = 1.00 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 2, ['opacity'] = 1.00 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 120,
                    height = 120
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 0,                 -- Oritentation of wheel
                    minRadiusPercent = 0.0,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.15,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:hood.png"},
                    commands = {"closedaradialmenu"}
                },
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.3,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.6,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:contextnui.png", "imgsrc:giphy.gif", "imgsrc:HUDdisplay.png", "imgsrc:openphone.png", "imgsrc:giphy.webp", "imgsrc:vehiclesfunctions.png"},
                    commands = {"contextnui", "players", "HUDdisplay", "openphone", "environment", "vehiclesfunctions"}
                },
                {
                    navAngle = 285,                 -- Oritentation of wheel
                    minRadiusPercent = 0.65,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.95,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:Pocketinnventory.png", "imgsrc:wheelchair1.png", "imgsrc:rep.png", "imgsrc:Slapping.png", "imgsrc:sitdown.png", "imgsrc:ktackle.png", "imgsrc:society.png", "imgsrc:OpenHand.png", "imgsrc:logo.png", "imgsrc:linux-logo.png", "imgsrc:togglehud.png", "imgsrc:wheelchair.png", "imgsrc:carrying.png"},
                    commands = {"openpockets", "removewheelchair", "takehostage", "Slapping", "SitDown", "ktackle", "emotemenu", "e wave", "e gs2", "e sitchair5", "shops1", "wheelchair", "carrying"}
                }
            }
        }
    },
    ['vehicles'] = {                                -- Example menu for vehicle controls when player is in a vehicle
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedInAnyVehicle(player, false)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "CapsLock",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 840,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.70 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 1.00 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 1.00 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 96,
                    height = 96
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 0,                 -- Oritentation of wheel
                    minRadiusPercent = 0.0,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.15,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:hood.png"},
                    commands = {"closedaradialmenu"}
                },
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:engineblock.png", "imgsrc:seatBelt.png",  "imgsrc:doorRearRight.png", "imgsrc:hood.png", "imgsrc:lightbulb.png", "imgsrc:np_certificate.png", "imgsrc:seatBelt.png", "imgsrc:seatFrontLeft.png", "imgsrc:RollWindow.png", "imgsrc:neon.png", "imgsrc:trunk.png", "imgsrc:trunk.png", "imgsrc:doorRearLeft.png", "imgsrc:doorFrontLeft.png"},
                    commands = {"engine", "seatBelt", "vehiclesdoorsfunctions", "hood", "il", "carstats", "seatBelt", "shuff", "RollWindow", "neon", "trunk", "trunk2", "backleft", "frontleft"}
                }
            }
        }
    }
}

subMenuConfigs = {
    ['shops1'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 840,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 0,                 -- Oritentation of wheel
                    minRadiusPercent = 0.0,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.2,         -- Maximum radius of wheel in percentage
                    labels = {"imgsrc:mask.png", "imgsrc:hood.png"},
                    commands = {"backinderadialmenu", "closedaradialmenu"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"imgsrc:Barbershops.png", "imgsrc:Tattooshops.png", "submenu3", "submenu4", "submenu5"},
                    commands = {"barbershops", "tattooshops", "clothingshops", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu1_a", "submenu1_b", "submenu1_c", "submenu1_d", "submenu1_e"},
                    commands = {"Grocerystores", "submenu1_b", "submenu1_c", "submenu1_d", "submenu1_e"}
                }
            }
        }
    },
    ['environment'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 840,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"},
                    commands = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu2_a", "submenu2_b", "submenu2_c", "submenu2_d", "submenu2_e", "submenu2_f", "submenu2_g", "submenu2_h", "submenu2_i", "submenu2_j"},
                    commands = {"submenu2_a", "submenu2_b", "submenu2_c", "submenu2_d", "submenu2_e", "submenu2_f", "submenu2_g", "submenu2_h", "submenu2_i", "submenu2_j"}
                }
            }
        }
    },
    ['players'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 840,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"},
                    commands = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu3_a", "submenu3_b", "submenu3_c", "submenu3_d", "submenu3_e", "submenu3_f", "submenu3_g", "submenu3_h", "submenu3_i", "submenu3_j"},
                    commands = {"submenu3_a", "submenu3_b", "submenu3_c", "submenu3_d", "submenu3_e", "submenu3_f", "submenu3_g", "submenu3_h", "submenu3_i", "submenu3_j"}
                }
            }
        }
    },
    ['walks'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"},
                    commands = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu4_a", "submenu4_b", "submenu4_c", "submenu4_d", "submenu4_e", "submenu4_f", "submenu4_g", "submenu4_h", "submenu4_i", "submenu4_j"},
                    commands = {"submenu4_a", "submenu4_b", "submenu4_c", "submenu4_d", "submenu4_e", "submenu4_f", "submenu4_g", "submenu4_h", "submenu4_i", "submenu4_j"}
                }
            }
        }
    },
    ['sharedemotes'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"},
                    commands = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu5_a", "submenu5_b", "submenu5_c", "submenu5_d", "submenu5_e", "submenu5_f", "submenu5_g", "submenu5_h", "submenu5_i", "submenu5_j"},
                    commands = {"submenu5_a", "submenu5_b", "submenu5_c", "submenu5_d", "submenu5_e", "submenu5_f", "submenu5_g", "submenu5_h", "submenu5_i", "submenu5_j"}
                }
            }
        }
    },
    ['vehiclesfunctions'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"},
                    commands = {"submenu1", "submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu5_a", "submenu5_b", "submenu5_c", "submenu5_d", "submenu5_e", "submenu5_f", "submenu5_g", "submenu5_h", "submenu5_i", "submenu5_j"},
                    commands = {"submenu5_a", "submenu5_b", "submenu5_c", "submenu5_d", "submenu5_e", "submenu5_f", "submenu5_g", "submenu5_h", "submenu5_i", "submenu5_j"}
                }
            }
        }
    },
    ['vehiclesdoorsfunctions'] = {
        data = {
            keybind = "F6",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    hover = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#ffffff', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#000000', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 69,
                    height = 69
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.25,
                    maxRadiusPercent = 0.55,
                    labels = {"submenu1", "submenu2", "submenu3", "submenu4"},
                    commands = {"door 1", "door 2", "door 3", "door 4"}
                },
                {
                    navAngle = 288,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"submenu5_a", "submenu5_b", "submenu5_c", "submenu5_d"},
                    commands = {"HangVehicl1", "HangVehicl2", "HangVehicr1", "HangVehicr2"}
                }
            }
        }
    },
}