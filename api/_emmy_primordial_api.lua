---@alias void nil
---@alias int number
---@alias float number
---@class uint

---@class e_callbacks
---@field PAINT void @this callback is called every frame
---@field EVENT int|table<string, int|float|string> @this callback is called every time csgo fires an event
---@field FINISH_COMMAND int|user_cmd_t @this callback is called every time the client is done with a movement
---@field DRAW_WATERMARK string @this callback is called every time the hack renders the watermark
---@field DRAW_MODEL int|model_context_t @this callback is called right before a model is drawn and allows to override various stuff
---@field SETUP_COMMAND int|user_cmd_t @this callback is called every time the client prepares a movement tick
---@field RUN_COMMAND int|user_cmd_t|unpredicted_data_t @this callback is called after the game runs input prediction
---@field TARGET_SELECTION int|target_selection_context_t|user_cmd_t|unpredicted_data_t @this callback is called right before target selection is run and allows to override various stuff
---@field HITSCAN int|hitscan_context_t|user_cmd_t|unpredicted_data_t @this callback is called right before hitscan is run and allows to override various stuff
---@field AIMBOT_SHOOT int|aimbot_shot_t @this callback is called whenever the ragebot fires a shot
---@field AIMBOT_HIT int|aimbot_hit_t @this callback is called whenever the ragebot hits a shot
---@field AIMBOT_MISS int|aimbot_miss_t @this callback is called whenever the ragebot misses a shot
---@field ANTIAIM int|antiaim_context_t|user_cmd_t|unpredicted_data_t @this callback is called right before antiaim is run and allows to override various stuff
---@field NET_UPDATE void @this callback is called whenever csgo finishes processing the newest networked data
---@field PLAYER_ESP int|player_esp_context_t @this callback is called right before the player esp is renderered
---@field WORLD_HITMARKER int|fun(screen_pos: vec2_t, world_pos: vec3_t, alpha_factor: float, damage: int, is_lethal: boolean, is_headshot: boolean): boolean @this callback is called every time the hack renders world hitmarkers
---@field SCREEN_HITMARKER int|fun(screen_pos: vec2_t, alpha_factor: float, is_lethal: boolean, is_headshot: boolean): boolean @this callback is called every time the hack renders screen hitmarkers
---@field SUPPORTIVE_RECTANGLE int|fun(screen_pos: vec2_t, size: vec2_t, mood: string, phrase: string|nil): boolean @this callback is called every time the hack renders the supportive rectangle
---@field SHUTDOWN void
e_callbacks = {}

---@class callbacks
callbacks = {}

---Registers an event with the specified callback, or optionally if using the EVENT enum allows for an additional argument specifying a certain event to be monitored (ex: "player_death")
---@generic T: e_callbacks
---@param event_type T
---@param callback fun(ctx: T)
---@param event_name string
---@overload fun(event_type: T, callback: fun(ctx: T))
---@overload fun(event_type: T, callback: fun(ctx: T, cmd: user_cmd_t|T))
---@overload fun(event_type: T, callback: fun(ctx: T, unpredicted_data: unpredicted_data_t|T))
---@overload fun(event_type: T, callback: fun(ctx: T, cmd: user_cmd_t|T, unpredicted_data: unpredicted_data_t|T))
function callbacks.add(event_type, callback, event_name) end

---@class e_cmd_buttons
---@field ATTACK any
---@field JUMP any
---@field DUCK any
---@field FORWARD any
---@field BACK any
---@field USE any
---@field CANCEL any
---@field LEFT any
---@field RIGHT any
---@field MOVELEFT any
---@field MOVERIGHT any
---@field ATTACK2 any
---@field RUN any
---@field RELOAD any
---@field ALT1 any
---@field ALT2 any
---@field SCORE any
---@field SPEED any
---@field WALK any
---@field ZOOM any
---@field WEAPON1 any
---@field WEAPON2 any
---@field BULLRUSH any
---@field GRENADE1 any
---@field GRENADE2 any
---@field LOOKSPIN any
e_cmd_buttons = {}

---@class e_font_flags
---@field ITALIC any
---@field UNDERLINE any
---@field STRIKEOUT any
---@field SYMBOL any
---@field ANTIALIAS any
---@field GAUSSIANBLUR any
---@field ROTARY any
---@field DROPSHADOW any
---@field ADDITIVE any
---@field OUTLINE any
e_font_flags = {}

---@class e_hitboxes
---@field HEAD any
---@field NECK any
---@field PELVIS any
---@field BODY any
---@field THORAX any
---@field CHEST any
---@field UPPER_CHEST any
---@field RIGHT_THIGH any
---@field LEFT_THIGH any
---@field RIGHT_CALF  any
---@field LEFT_CALF any
---@field RIGHT_FOOT any
---@field LEFT_FOOT any
---@field RIGHT_HAND any
---@field LEFT_HAND any
---@field RIGHT_UPPER_ARM any
---@field RIGHT_FOREARM any
---@field LEFT_UPPER_ARM any
---@field LEFT_FOREARM any
e_hitboxes = {}

---@class e_hitgroups
---@field GENERIC any
---@field HEAD any
---@field CHEST any
---@field STOMACH any
---@field LEFT_ARM any
---@field RIGHT_ARM any
---@field LEFT_LEG any
---@field RIGHT_LEG any
---@field NECK any
---@field GEAR any
e_hitgroups = {}

---@class e_hitscan_groups
---@field HEAD any
---@field CHEST any
---@field ARMS any
---@field STOMACH any
---@field LEGS any
---@field FEET any
e_hitscan_groups = {}

---@class e_items
---@field WEAPON_DEAGLE any
---@field WEAPON_ELITE any
---@field WEAPON_FIVESEVEN any
---@field WEAPON_GLOCK any
---@field WEAPON_AK47 any
---@field WEAPON_AUG any
---@field WEAPON_AWP any
---@field WEAPON_FAMAS any
---@field WEAPON_G3SG1 any
---@field WEAPON_GALILAR any
---@field WEAPON_M249 any
---@field WEAPON_M4A1 any
---@field WEAPON_MAC10 any
---@field WEAPON_P90 any
---@field WEAPON_ZONE_REPULSOR any
---@field WEAPON_MP5SD any
---@field WEAPON_UMP45 any
---@field WEAPON_XM1014 any
---@field WEAPON_BIZON any
---@field WEAPON_MAG7 any
---@field WEAPON_NEGEV any
---@field WEAPON_SAWEDOFF any
---@field WEAPON_TEC9 any
---@field WEAPON_TASER any
---@field WEAPON_HKP2000 any
---@field WEAPON_MP7 any
---@field WEAPON_MP9 any
---@field WEAPON_NOVA any
---@field WEAPON_P250 any
---@field WEAPON_SHIELD any
---@field WEAPON_SCAR20 any
---@field WEAPON_SG556 any
---@field WEAPON_SSG08 any
---@field WEAPON_KNIFEGG any
---@field WEAPON_KNIFE any
---@field WEAPON_FLASHBANG any
---@field WEAPON_HEGRENADE any
---@field WEAPON_SMOKEGRENADE any
---@field WEAPON_MOLOTOV any
---@field WEAPON_DECOY any
---@field WEAPON_INCGRENADE any
---@field WEAPON_C4 any
---@field ITEM_KEVLAR any
---@field ITEM_ASSAULTSUIT any
---@field ITEM_HEAVYASSAULTSUIT any
---@field ITEM_NVG any
---@field ITEM_DEFUSER any
---@field ITEM_CUTTERS any
---@field WEAPON_HEALTHSHOT any
---@field WEAPON_KNIFE_T any
---@field WEAPON_M4A1_SILENCER any
---@field WEAPON_USP_SILENCER any
---@field WEAPON_CZ75A any
---@field WEAPON_REVOLVER any
---@field WEAPON_TAGRENADE any
---@field WEAPON_FISTS any
---@field WEAPON_BREACHCHARGE any
---@field WEAPON_TABLET any
---@field WEAPON_MELEE any
---@field WEAPON_AXE any
---@field WEAPON_HAMMER any
---@field WEAPON_SPANNER any
---@field WEAPON_KNIFE_GHOST any
---@field WEAPON_FIREBOMB any
---@field WEAPON_DIVERSION any
---@field WEAPON_FRAG_GRENADE any
---@field WEAPON_SNOWBALL any
---@field WEAPON_BUMPMINE any
---@field WEAPON_BAYONET any
---@field WEAPON_KNIFE_CSS any
---@field WEAPON_KNIFE_FLIP any
---@field WEAPON_KNIFE_GUT any
---@field WEAPON_KNIFE_KARAMBIT any
---@field WEAPON_KNIFE_M9_BAYONET any
---@field WEAPON_KNIFE_TACTICAL any
---@field WEAPON_KNIFE_FALCHION any
---@field WEAPON_KNIFE_SURVIVAL_BOWIE any
---@field WEAPON_KNIFE_BUTTERFLY any
---@field WEAPON_KNIFE_PUSH any
---@field WEAPON_KNIFE_CORD any
---@field WEAPON_KNIFE_CANIS any
---@field WEAPON_KNIFE_URSUS any
---@field WEAPON_KNIFE_GYPSY_JACKKNIFE any
---@field WEAPON_KNIFE_OUTDOOR  any
---@field WEAPON_KNIFE_STILETTO  any
---@field WEAPON_KNIFE_WIDOWMAKER any
---@field WEAPON_KNIFE_SKELETON  any
---@field T_GLOVES  any
---@field CT_GLOVES  any
---@field SPORTY_GLOVES  any
---@field SLICK_GLOVES  any
---@field LEATHER_HANDWRAPS  any
---@field MOTORCYCLE_GLOVES  any
---@field SPECIALIST_GLOVES  any
---@field STUDDED_HYDRA_GLOVES any
e_items = {}

---@class e_keybind_modes
---@field TOGGLE any
---@field HOLD_ON any
---@field HOLD_OFF any
---@field ALWAYS_ON any
---@field ALWAYS_OFF any
e_keybind_modes = {}

---@class e_keys
---@field KEY_NONE  any
---@field KEY_0  any
---@field KEY_1  any
---@field KEY_2  any
---@field KEY_3  any
---@field KEY_4  any
---@field KEY_5  any
---@field KEY_6  any
---@field KEY_7  any
---@field KEY_8  any
---@field KEY_9  any
---@field KEY_A  any
---@field KEY_B  any
---@field KEY_C  any
---@field KEY_D  any
---@field KEY_E  any
---@field KEY_F  any
---@field KEY_G  any
---@field KEY_H  any
---@field KEY_I  any
---@field KEY_J  any
---@field KEY_K  any
---@field KEY_L  any
---@field KEY_M  any
---@field KEY_N  any
---@field KEY_O  any
---@field KEY_P  any
---@field KEY_Q  any
---@field KEY_R  any
---@field KEY_S  any
---@field KEY_T  any
---@field KEY_U  any
---@field KEY_V  any
---@field KEY_W  any
---@field KEY_X  any
---@field KEY_Y  any
---@field KEY_Z  any
---@field KEY_PAD_0  any
---@field KEY_PAD_1  any
---@field KEY_PAD_2  any
---@field KEY_PAD_3  any
---@field KEY_PAD_4  any
---@field KEY_PAD_5  any
---@field KEY_PAD_6  any
---@field KEY_PAD_7  any
---@field KEY_PAD_8  any
---@field KEY_PAD_9  any
---@field KEY_PAD_DIVIDE any
---@field KEY_PAD_MULTIP any
---@field KEY_PAD_MINUS  any
---@field KEY_PAD_PLUS  any
---@field KEY_PAD_ENTER  any
---@field KEY_PAD_DECIMA any
---@field KEY_LBRACKET  any
---@field KEY_RBRACKET  any
---@field KEY_SEMICOLON  any
---@field KEY_APOSTROPHE any
---@field KEY_BACKQUOTE  any
---@field KEY_COMMA any
---@field KEY_PERIOD  any
---@field KEY_SLASH any
---@field KEY_BACKSLASH  any
---@field KEY_MINUS any
---@field KEY_EQUAL any
---@field KEY_ENTER any
---@field KEY_SPACE any
---@field KEY_BACKSPACE  any
---@field KEY_TAB any
---@field KEY_CAPSLOCK  any
---@field KEY_NUMLOCK  any
---@field KEY_ESCAPE  any
---@field KEY_SCROLLLOCK any
---@field KEY_INSERT  any
---@field KEY_DELETE  any
---@field KEY_HOME any
---@field KEY_END any
---@field KEY_PAGEUP  any
---@field KEY_PAGEDOWN  any
---@field KEY_BREAK any
---@field KEY_LSHIFT  any
---@field KEY_RSHIFT  any
---@field KEY_LALT any
---@field KEY_RALT any
---@field KEY_LCONTROL  any
---@field KEY_RCONTROL  any
---@field KEY_LWIN any
---@field KEY_RWIN any
---@field KEY_APP any
---@field KEY_UP any
---@field KEY_LEFT any
---@field KEY_DOWN any
---@field KEY_RIGHT any
---@field KEY_F1 any
---@field KEY_F2 any
---@field KEY_F3 any
---@field KEY_F4 any
---@field KEY_F5 any
---@field KEY_F6 any
---@field KEY_F7 any
---@field KEY_F8 any
---@field KEY_F9 any
---@field KEY_F10 any
---@field KEY_F11 any
---@field KEY_F12 any
---@field KEY_CAPSLOCKTOGGLE any
---@field KEY_NUMLOCKTOGGLE any
---@field KEY_SCROLLLOCKTOGGLE any
---@field MOUSE_LEFT any
---@field MOUSE_RIGHT any
---@field MOUSE_MIDDLE any
---@field MOUSE_4 any
---@field MOUSE_5 any
---@field MOUSE_WHEEL_UP any
---@field MOUSE_WHEEL_DOWN any
e_keys = {}

---@class e_latency_flows
---@field OUTGOING any
---@field INCOMING any
---@field COMBINED any
e_latency_flows = {}

---@class e_material_flags
---@field DEBUG any
---@field NO_DEBUG_OVERRIDE any
---@field NO_DRAW any
---@field USE_IN_FILLRATE_MODE any
---@field VERTEXCOLOR any
---@field VERTEXALPHA any
---@field SELFILLUM any
---@field ADDITIVE any
---@field ALPHATEST any
---@field ZNEARER any
---@field MODEL any
---@field FLAT any
---@field NOCULL any
---@field NOFOG any
---@field IGNOREZ any
---@field DECAL any
---@field ENVMAPSPHERE any
---@field ENVMAPCAMERASPACE any
---@field BASEALPHAENVMAPMASK any
---@field TRANSLUCENT any
---@field NORMALMAPALPHAENVMAPMASK any
---@field NEEDS_SOFTWARE_SKINNING any
---@field OPAQUETEXTURE any
---@field ENVMAPMODE any
---@field SUPPRESS_DECALS any
---@field HALFLAMBERT any
---@field WIREFRAME any
---@field ALLOWALPHATOCOVERAGE any
---@field ALPHA_MODIFIED_BY_PROXY any
---@field VERTEXFOG any
e_material_flags = {}

---@class e_player_flags
---@field ON_GROUND any
---@field DUCKING any
---@field FROZEN any
---@field FAKE_CLIENT any
---@field GOD_MODE any
e_player_flags = {}

---@class e_ragebot_cfg
---@field AUTO_SNIPER any
---@field SCOUT any
---@field AWP any
---@field HEAVY_PISTOLS any
---@field PISTOLS any
---@field OTHER any
---@field ZEUS any
e_ragebot_cfg = {}

---@class e_weapon_types
---@field KNIFE any
---@field PISTOL any
---@field SMG any
---@field RIFLE any
---@field SHOTGUN any
---@field SNIPER any
---@field MACHINE_GUN any
---@field C4 any
---@field GRENADE any
---@field EQUIPMENT any
---@field STACKABLE_ITEM any
e_weapon_types = {}

---@class aimbot_hit_t
---@field id int @shot id
---@field player entity_t @player entity the shot hit
---@field damage int @the damage the shot did
---@field safepoint boolean @whether the final shot was safe
---@field backtrack_ticks int @how many ticks were backtracked
---@field hitgroup e_hitgroups @what hitgroup the shot hit
---@field aim_damage int @the predicted damage that the aimbot thought this shot would do
---@field aim_hitchance int @the chance this shot would hit the target
---@field aim_safepoint boolean @whether the aimbot shot was a safepoint
---@field aim_hitgroup e_hitgroups @hitgroup aimed at
---@field aim_hitbox e_hitboxes @hitbox aimed at

---@class aimbot_miss_t
---@field id int @shot id
---@field player entity_t @player entity the shot hit
---@field reason_string string @the reason why the shot missed
---@field backtrack_ticks int @how many ticks were backtracked
---@field aim_damage int @the predicted damage that the aimbot thought this shot would do
---@field aim_hitchance int @the chance this shot would hit the target
---@field aim_safepoint boolean @whether the aimbot shot was a safepoint
---@field aim_hitgroup e_hitgroups @hitgroup aimed at
---@field aim_hitbox e_hitboxes @hitbox aimed at

---@class aimbot_shot_t
---@field id int @shot id
---@field player entity_t @player entity the shot hit
---@field damage int @the predicted damage the shot will hit for you
---@field hitchance int @the chance that the shot will hit, depending on spread
---@field safepoint boolean @whether the final point was a safepoint
---@field hitbox e_hitboxes @what hitbox the aimbot shot at
---@field hitgroup e_hitgroups @hitgroup the aimbot shot at
---@field backtrack_ticks int @how many ticks were backtracked
---@field extrapolated_ticks int @how many ticks the aimbot extrapolated, -1 if not extrapolated
---@field shoot_pos vec3_t @world coordinates of where we shot from
---@field hitpoint_pos vec3_t @world coordinates of the point shot at

---@class antiaim_context_t
local antiaim_context_t = {}

---overrides the pitch for the next antiaim call
---@param pitch float
function antiaim_context_t:set_pitch(pitch) end

---overrides the yaw for the next antiaim call
---@param yaw float
function antiaim_context_t:set_yaw(yaw) end

---overrides the desync delta for the next antiaim call
---@param desync_factor float @desync factor (range -1..1)
function antiaim_context_t:set_desync(desync_factor) end

---overrides the body lean delta for the next antiaim call
---@param desync_factor float @body lean factor (range -1..1)
function antiaim_context_t:set_body_lean(desync_factor) end

---overrides the desync invert for the next antiaim call
---@param invert boolean @whether it should be inverted
function antiaim_context_t:set_invert_desync(invert) end

---overrides the desync invert for the next antiaim call
---@param invert boolean @whether it should be inverted
function antiaim_context_t:set_invert_body_lean(invert) end

---overrides whether the current tick will be a choked tick or not
---@param should_lag boolean @whether this tick will be choked
function antiaim_context_t:set_fakelag(should_lag) end

---@class bullet_data_t
---@field valid boolean @whether the bullet trace hit a player. if false, only damage will be set.
---@field damage entity_t @entity object if hit any, nil otherwise
---@field hitgroup e_hitgroups @hit hitgroup
---@field hitbox e_hitboxes @hit hitbox
---@field pen_count int @how many walls were penetrated before hitting the player
---@field hit_pos vec3_t @world coordinate of where the player was hit
---@field hit_player entity_t @player entity that was hit

---@class convar_t
local convar_t = {}

---retrieves the int value of the convar
---@return int
function convar_t:get_int() end

---retrieves the float value of the convar
---@return float
function convar_t:get_float() end

---retrieves the string value of the convar
---@return string
function convar_t:get_string() end

---sets the int value of the convar
---@param value int
function convar_t:set_int(value) end

---sets the float value of the convar
---@param value float
function convar_t:set_float(value) end

---sets the string value of the convar
---@param value string
function convar_t:set_string(value) end

---@class cvars
---@type table<string, convar_t> access any convar_t object simply append the convars name to cvars.
cvars = setmetatable({}, {__index = function() end})

---@class user
---@field name string @username
---@field uid int @uid
user = {}

---@class entity_t
local entity_t = {}

---returns validation of the entity
---@return uint
function entity_t:is_valid() end

---returns the entity address for ease of use in ffi.* functions
---@return uint
function entity_t:get_address() end

---returning steamID3 as a number and steamID64 as a string
---@return number, string
function entity_t:get_steamids() end

---returns the entity class name (i.e. "CCSPlayer")
---@return string
function entity_t:get_class_name() end

---returns the entity class id
---@return int
function entity_t:get_class_id() end

---returns specified entity prop
---@param prop_name string @networked prop name
---@param array_index int @array index to use if the prop is an array
---@return any
---@overload fun(prop_name: string): any
function entity_t:get_prop(prop_name, array_index) end

---sets a specified entity prop
---@param prop_name string @networked prop name
---@param value any @value to set the prop to
---@param array_index any @array index to use if the prop is an array
---@overload fun(prop_name: string, value: any)
function entity_t:set_prop(prop_name, value, array_index) end

---returns the render origin
---@return vec3_t
function entity_t:get_render_origin() end

---returns the render angles
---@return angle_t
function entity_t:get_render_angles() end

---checks whether the entity is a player
---@return boolean
function entity_t:is_player() end

---checks whether the entity is a weapon
---@return boolean
function entity_t:is_weapon() end

---returns the weapon max speed
---@return float
function entity_t:get_weapon_max_speed() end

---- for players: returns their name
---
---- for weapons: returns the weapon name
---
---- for other entities: returns the class name
---@return string
function entity_t:get_name() end

---returns the entity index
---@return int
function entity_t:get_index() end

---returns the relative mins/maxs of the entity
---@return vec3_t, vec3_t
function entity_t:get_bounds() end

---checks whether the specified player flag is set
---@param flag e_player_flags
---@return boolean
function entity_t:has_player_flag(flag) end

---returns the current weapon as an entity object or nil on failure
---@return entity_t
function entity_t:get_active_weapon() end

---is breathe?
---@return boolean
function entity_t:is_alive() end

---returns the world coordinates of where your shots come from
---@return vec3_t
function entity_t:get_eye_position() end

---checks if a specified world coordinate is visible
---@param world_coordinate vec3_t
---@return boolean
function entity_t:is_point_visible(world_coordinate) end

---HITBOX POS!!!!!!!
---@param hitbox_id e_hitboxes
---@return vec3_t
function entity_t:get_hitbox_pos(hitbox_id) end

---what do u think
---@return boolean
function entity_t:is_enemy() end

---if true, new information about this entity isnt being networked right now
---@return boolean
function entity_t:is_dormant() end

---gets the current weapon spread
---@return float
function entity_t:get_weapon_spread() end

---gets the current weapon inaccuracy
---@return float
function entity_t:get_weapon_inaccuracy() end

---gets the current weapon data
---@return weapon_data_t
function entity_t:get_weapon_data() end

---@class model_context_t
---@field entity entity_t @entity that is being rendered right now, can be nil
---@field model_name string @model name
---@field override_original boolean @prevents the original model code from running
local model_context_t = {}

---draws the model with the specified material
---@param material material_t
---@param color color_t
---@overload fun(material: material_t)
function model_context_t.draw_material(material, color) end

---draws the model with the original material
---@param color color_t
---@overload fun()
function model_context_t.draw_original(color) end

---@class font_t
---@field handle int @internal handle to the font object
---@field height int @height of the font in pixels

---@class hitscan_context_t
---@field player entity_t @player entity that is being scanned right now
---@field health entity_t @predicted health of the player
local hitscan_context_t = {}

---forces min dmg for either all hitscan groups or only a specific one
---@param min_dmg float
---@param hitscan_group e_hitscan_groups
---@overload fun(min_dmg: float)
function hitscan_context_t:set_min_dmg(min_dmg, hitscan_group) end

---forces hitchance for either all hitscan groups or only a specific one
---@param hitchance float
---@param hitscan_group e_hitscan_groups
---@overload fun(hitchance: float)
function hitscan_context_t:set_hitchance(hitchance, hitscan_group) end

---forces the body lean delta for the next antiaim call
---@param desync_factor float @body lean factor (range -1..1)
function hitscan_context_t:set_body_lean(desync_factor) end

---forces the body lean safepoint for the next antiaim call
---@param desync_factor float @body lean factor (range -1..1)
function hitscan_context_t:set_bodylean_safepoint(desync_factor) end

---forces damage accuracy for either all hitscan groups or only a specific one
---@param damage_accuracy float
---@param hitscan_group e_hitscan_groups
---@overload fun(damage_accuracy: float)
function hitscan_context_t:set_damage_accuracy(damage_accuracy, hitscan_group) end

---forces damage accuracy for either all hitscan groups or only a specific one
---@param should_force_safepoint boolean
---@param hitscan_group e_hitscan_groups
---@overload fun(should_force_safepoint: boolean)
function hitscan_context_t:set_safepoint_state(should_force_safepoint, hitscan_group) end

---determine whether a hitscan group be scanned and multipointed
---@param hitscan_group e_hitscan_groups
---@param should_scan boolean
---@param should_multipoint boolean
---@overload fun(hitscan_group: e_hitscan_groups, should_scan: boolean)
function hitscan_context_t:set_hitscan_group_state(hitscan_group, should_scan, should_multipoint) end

---@class material_t
local material_t = {}

---gets the material name
---@return string
function material_t:get_name() end

---gets the material group name
---@return string
function material_t:get_texture_group_name() end

---modulates the current materials alpha property
---@param alpha_factor float
function material_t:alpha_modulate(alpha_factor) end

---modulates the current materials color property
---@param red_factor float
---@param green_factor float
---@param blue_factor float
function material_t:color_modulate(red_factor, green_factor, blue_factor) end

---checks whether this material has the flag active
---@param flag e_material_flags
---@return boolean
function material_t:get_flag(flag) end

---activates the flag for the material
---@param flag e_material_flags
---@param value boolean
function material_t:set_flag(flag, value) end

---gets raw address of material pointer
---@return uint
function material_t:get_address() end

---sets shader param to either an int, string, float or vec3_t
---@param param_name string
---@param val int|string|float|vec3_t
function material_t:set_shader_param(param_name, val) end

---returns shader param as either an int, string, float or vec3_t
---@param param_name string
---@return int|string|float|vec3_t
function material_t:get_shader_param(param_name) end

---@class player_esp_context_t
---@field player entity_t @player entity that is being rendered right now
---@field alpha_modifier float @alpha multiplier of the esp (range 0..1)
---@field dormant boolean @whether new information about this player isnt being networked right now
---@field render_origin e_hitboxes @world coordinates of the player
---@field bbox_start e_hitboxes @2d coordinates of the esp bbox
---@field bbox_size e_hitboxes @2d size of the esp bbox
---@field mode int @team mode of this player; 1 = enemy, 0 = friendly
local player_esp_context_t = {}

---adds a flag to the right side of the player
---if no color is supplied, it will use the default flags color
---@param flag_name string
---@param color color_t
---@overload fun(flag_name: string)
function player_esp_context_t:add_flag(flag_name, color) end

---overrides the main font for this player
---@param font font_t
function player_esp_context_t:set_font(font) end

---overrides the small font for this player (e.g. used for flags)
---@param font font_t
function player_esp_context_t:set_small_font(font) end

---@class target_selection_context_t
local target_selection_context_t = {}

---prioritize the desired target with an arbitrary score
---@param player_index int
---@param priority_value int
---@overload fun(player_index: int)
function target_selection_context_t:prioritize_target(player_index, priority_value) end

---forces the target selection to scan the desired target
---@param player_index int
function target_selection_context_t:force_target(player_index) end

---forces the target selection to ignore the desired target
---@param player_index int
function target_selection_context_t:ignore_target(player_index) end

---@class texture_t
---@field id int @internal id of the texture, used for render.texture
---@field size vec2_t @original size of the texture

---@class trace_result_t
---@field fraction float @how far the trace traveled before hitting the desired target (range 0..1)
---@field entity entity_t @entity object if hit any, nil otherwise
---@field hitgroup e_hitgroups @hit hitgroup if hit a player
---@field hitbox e_hitboxes @hit hitbox if hit a player

---@class unpredicted_data_t
---@field origin vec3_t @read-only
---@field velocity vec3_t @read-only
---@field move vec3_t @read-only
local unpredicted_data_t = {}

---checks if a cmd button was pressed
---@param cmd_button e_cmd_buttons
---@return boolean
function unpredicted_data_t:has_button(cmd_button) end

---checks if a player flag was set
---@param flag e_player_flags
---@return boolean
function unpredicted_data_t:has_player_flag(flag) end

---@class user_cmd_t
---@field command_number int @read-only
---@field tick_count int @read-only, the tick this client was created
---@field viewangles angle_t
---@field aim_direction vec3_t
---@field move vec3_t @movement direction (x = forwardmove, y = sidemove, z = upmove)
---@field impulse int
---@field weaponselect int @entity index of weapon to switch to
---@field weaponsubtype int
---@field random_seed int
---@field mousedx int
---@field mousedy int
---@field hasbeenpredicted int @read-only
---@field head_angles angle_t
---@field head_offset vec3_t
local user_cmd_t = {}

---checks if a cmd button is pressed
---@param cmd_button e_cmd_buttons
---@return boolean
function user_cmd_t:has_button(cmd_button) end

---add a cmd button
---@param cmd_button e_cmd_buttons
function user_cmd_t:add_button(cmd_button) end

---removes a cmd button
---@param cmd_button e_cmd_buttons
function user_cmd_t:remove_button(cmd_button) end

---removes all cmd buttons
function user_cmd_t:clear_buttons() end

---@class weapon_data_t
---@field console_name string
---@field max_clip int
---@field world_model string
---@field view_model string
---@field world_model_dropped string
---@field name string
---@field inventory_slot int
---@field inventory_slot_position int
---@field type e_weapon_types
---@field cycle_time float
---@field is_full_auto boolean
---@field damage float
---@field armor_ratio float
---@field bullets int
---@field penetration float
---@field range float
---@field range_modifier float
---@field throw_velocity float
---@field has_silencer boolean
---@field max_speed float
---@field zoom_levels int
---@field has_burst_mode boolean

---@class color_t
---@field r int
---@field g int
---@field b int
---@field a int

---@param r int
---@param g int
---@param b int
---@param a int
---@return color_t
function color_t(r, g, b, a) end

---@class vec2_t
---@field x float
---@field y float

---@param x float
---@param y float
---@return vec2_t
function vec2_t(x, y) end

---@class vec3_t
---@field x float
---@field y float
---@field z float

---@param x float
---@param y float
---@param z float
---@return vec3_t
function vec3_t(x, y, z) end

---@class angle_t
---@field x float
---@field y float
---@field z float

---@param x float
---@param y float
---@param z float
---@return angle_t
function angle_t(x, y, z) end

---@class antiaim
antiaim = {}

---Returns if the player has inverted desync.
---@return boolean
function antiaim.is_inverting_desync() end

---Returns if the player is fakeducking.
---@return boolean
function antiaim.is_fakeducking() end

---Returns if the player has inverted body lean.
---@return boolean
function antiaim.is_inverting_body_lean() end

---Returns the maximum range for desync.
---@return int
function antiaim.get_max_desync_range() end

---Returns the player's real angle.
---@return float
function antiaim.get_real_angle() end

---Returns the player's fake angle.
---@return float
function antiaim.get_fake_angle() end

---Returns the player's desync side.
---@return any
function antiaim.get_desync_side() end

---Returns 0 if off, 1 for left, 2 for middle, 3 for right
---@return number
function antiaim.get_manual_override() end

---@class client
client = {}

---Returns the current hours, minutes, and seconds
---@return int, int, int
function client.get_local_time() end

---Returns the current unix timestamp
---@return int
function client.get_unix_time() end

---Changes the client's clantag
function client.set_clantag() end

---Returns the specified hitgroup as a string
---@param hitgroup e_hitgroups @hitgroup
---@return string
function client.get_hitgroup_name(hitgroup) end

---Returns the specified hitbox as a string
---@param hitbox e_hitboxes @hitbox
---@return string
function client.get_hitbox_name(hitbox) end

---Converts time (in seconds) into csgo ticks
---@param time float
---@return int
function client.time_to_ticks(time) end

---Converts time (in seconds) into csgo ticks
---@param ticks int
---@return float
function client.ticks_to_time(ticks) end

---Returns the client's frames per second.
---@return int
function client.get_fps() end

---Returns the current server's tickrate.
---@return int
function client.get_tickrate() end

---Adds model to level precache list.
---@param name string @model path to cache
function client.precache_model(name) end

---Returns a random float between min and max.
---@param min float @minimum float value
---@param max float @maximum float value
---@return float
function client.random_float(min, max) end

---Returns a random int between min and max.
---@param min int @minimum int value
---@param max int @maximum int value
---@return int
function client.random_int(min, max) end

---Returns if the camera is in third person.
---@return boolean
function client.is_in_thirdperson() end

---Returns if the client is able to fire.
---@return boolean
function client.can_fire() end

---Prints to screen logs.
---@vararg string|color_t
function client.log_screen(...) end

---Prints to console logs.
---@vararg string|color_t
function client.log(...) end

---Runs a function after a defined delay.
---@param fn function
---@param delay float
function client.delay_call(fn, delay) end

---@class debug_overlay
debug_overlay = {}

---Renders a debug box around the the specified position.
---@param pos vec3_t @world position
---@param mins vec3_t @box mins
---@param maxs vec3_t @box mins
---@param orientation angle_t @orientation
---@param color color_t @box color
---@param duration float @box duration
function debug_overlay.add_box(pos, mins, maxs, orientation, color, duration) end

---Renders a debug sphere around the the specified position.
---@param pos vec3_t @world position
---@param radius float @sphere radius
---@param theta int @ducarii fill me in
---@param phi int @ducarii fill me in
---@param color color_t @sphere color
---@param duration float @sphere duration
function debug_overlay.add_sphere(pos, radius, theta, phi, color, duration) end

---Renders a debug line between two points.
---@param from vec3_t @point start
---@param to vec3_t @point end
---@param color color_t @point end
---@param skip_occlusion boolean @should the line be occluded
---@param duration float @line duration
function debug_overlay.add_line(from, to, color, skip_occlusion, duration) end

---Renders a debug capsule.
---@param mins vec3_t @capsule minimum bounds
---@param maxs vec3_t @capsule maximum bounds
---@param radius float @capsule size
---@param color color_t @capsule color
---@param skip_occlusion boolean @should the capsule be occluded
---@param duration float @render time of capsule
function debug_overlay.add_capsule(mins, maxs, radius, color, skip_occlusion, duration) end

---@class engine
engine = {}

---Returns current player's client view angles.
---@return vec3_t
function engine.get_view_angles() end

---Overrides current player's client view angles.
---@param angle vec3_t
function engine.set_view_angles(angle) end

---Executes a provided command.
---@param command_name string @console command name
function engine.execute_cmd(command_name) end

---Returns the number of choked commands.
---@return int
function engine.get_choked_commands() end

---Returns the last acknowledged command.
---@return int
function engine.get_last_acknowledged_command() end

---Returns the last outgoing command.
---@return int
function engine.get_last_outgoing_command() end

---Returns latency.
---@param latency_type e_latency_flows @latency type (outgoing by default)
---@return int
---@overload fun(): int
function engine.get_latency(latency_type) end

---Returns the level name as a string.
---@return string
function engine.get_level_name() end

---Returns a short version of the level name as a string.
---@return string
function engine.get_level_name_short() end

---Returns if the application is active or not (e.g. whether you're tabbed in or not).
---@return boolean
function engine.is_app_active() end

---Returns the local player's entity index.
---@return int
function engine.get_local_player_index() end

---Returns player entity index from their user id.
---@param user_id int @player's user id
function engine.get_player_index_from_user_id(user_id) end

---Returns if the user is connected to a server.
---@return boolean
function engine.is_connected() end

---Returns if the user is in game.
---@return boolean
function engine.is_in_game() end

---Plays a sound on the client.
---@param name string @sound name
---@param volume float @sound's volume
---@param pitch int @sound's pitch
---@overload fun(name: string, volume:float)
---@overload fun(name: string)
function engine.play_sound(name, volume, pitch) end

---returns bomb radius dependent on map and game mode
---@return float
function engine.get_bomb_radius() end

---returns bsp entity info for the specified classname
---@param classname string
---@return string[]
function engine.get_bsp_entity(classname) end

---returns all bsp entity infos
---@return string[][]
function engine.get_bsp_entities() end

---@class entity_list
entity_list = {}

---Returns entity object from an entity index or handle.
---@param index_or_handle int|uint @entity index or handle
---@return entity_t
function entity_list.get_entity(index_or_handle) end

---Returns entity object from a player's user id.
---@param user_id int @user id
---@return entity_t
function entity_list.get_player_from_userid(user_id) end

---Returns local player entity object.
---@return entity_t
function entity_list.get_local_player() end

---Returns local_player if alive or currently spectated player.
---@return entity_t
function entity_list.get_local_player_or_spectating() end

---Returns table of entities with the specified class id.
---@param class_id int @class id
---@return entity_t[]
function entity_list.get_entities_by_classid(class_id) end

---Returns table of entities with the specified name.
---@param class_id string @class name
---@return entity_t[]
function entity_list.get_entities_by_name(class_id) end

---Returns table of players.
---@param enemies_only boolean @only return enemies
---@return entity_t[]
---@overload fun(): entity_t[]
function entity_list.get_players(enemies_only) end

---Returns the maximum entity index.
---@return int
function entity_list.get_highest_entity_index() end

---@class exploits
exploits = {}

---Returns current charged ticks for exploits.
---@return int
function exploits.get_charge() end

---Returns maximum amount of charged ticks for exploits.
---@return int
function exploits.get_max_charge() end

---Releases current charged ticks for exploits, will teleport you forward.
function exploits.force_uncharge() end

---Forces cheat to recharge ticks for exploits.
function exploits.force_recharge() end

---Stops the cheat from recharging ticks for exploits.
function exploits.block_recharge() end

---Allows the cheat to recharge ticks for exploits.
function exploits.allow_recharge() end

---@class game_rules
game_rules = {}

---Returns specified game_rule prop.
---@param prop_name string @networked prop name
---@param array_index int @array index to use if the prop is an array
---@return any
---@overload fun(prop_name: string): any
function game_rules.get_prop(prop_name, array_index) end

---Sets a specified game_rule prop.
---@param prop_name string @networked prop name
---@param value any @value to set the prop to
---@param array_index int @array index to use if the prop is an array
---@overload fun(prop_name: string, value: any)
function game_rules.set_prop(prop_name, value, array_index) end

---@class player_resource
player_resource = {}

---Returns prop from CCSPlayerResource.
---@param prop_name string @CCSPlayerResource prop name
---@param array_index int @array index to use if the prop is an array
---@return any
---@overload fun(prop_name: string): any
function player_resource.get_prop(prop_name, array_index) end

---Sets a prop from CCSPlayerResource.
---@param prop_name string @CCSPlayerResource prop name
---@param value any @value to set the prop to
---@param array_index int @array index to use if the prop is an array
---@overload fun(prop_name: string, value: any)
function player_resource.set_prop(prop_name, value, array_index) end

---@class global_vars
global_vars = {}

---Returns absolute time.
---@return float
function global_vars.real_time() end

---Returns absolute frame count.
---@return int
function global_vars.frame_count() end

---Returns non paused frametime.
---@return float
function global_vars.absolute_frame_time() end

---Returns current time for your player.
---@return float
function global_vars.cur_time() end

---Returns time spent on last server or client frame.
---@return float
function global_vars.frame_time() end

---Returns current maxplayers setting.
---@return int
function global_vars.max_clients() end

---Returns simulation ticks.
---@return int
function global_vars.tick_count() end

---Returns simulation tick interval.
---@return float
function global_vars.interval_per_tick() end

---Returns interpolation amount.
---@return float
function global_vars.interpolation_amount() end

---Returns simulation ticks this frame.
---@return float
function global_vars.simticks_this_frame() end

---returns the current tick on the server
---@return int
function global_vars.server_tick() end

---@class input
input = {}

---returns key bound to a csgo setting.
---@param setting_name string
---@return e_keys
function input.find_key_bound_to_binding(setting_name) end

---returns x and y coordinates of the mouse position as a vec2_t.
---@return vec2_t
function input.get_mouse_pos() end

---returns if the mouse is in specified bounds.
---@param bounds_start vec2_t
---@param bounds_end vec2_t
---@return boolean
function input.is_mouse_in_bounds(bounds_start, bounds_end) end

---returns if they key is toggled.
---@param key_code e_keys @key code enum
---@return boolean
function input.is_key_toggled(key_code) end

---returns if they key was just pressed.
---@param key_code e_keys @key code enum
---@return boolean
function input.is_key_pressed(key_code) end

---returns if current key was just released.
---@param key_code e_keys @key code enum
---@return boolean
function input.is_key_released(key_code) end

---returns if current key is held.
---@param key_code e_keys @key code enum
---@return boolean
function input.is_key_held(key_code) end

---returns how long a key was held for.
---@param key_code e_keys @key code enum
---@return boolean
function input.get_time_held(key_code) end

---returns mouse scroll delta
---@return int
function input.get_scroll_delta() end

---returns the key name for the key id
---@param key e_keys
---@return string
function input.get_key_name(key) end

---blocks input for the next input tick
function input.block() end

---@class materials
materials = {}

---Returns material object from name
---@param material_name string @name of material
---@return material_t
function materials.find(material_name) end

---Allows for iterating material objects
---@param callback fun(mat: material_t) @callback with material_object as argument
function materials.for_each(callback) end

---creates a material from a buffer
---@param material_name string
---@param key_values_buffer string
function materials.create(material_name, key_values_buffer) end

---@class memory All functions in this table are unsafe and should only be used by people who know what they're doing
memory = {}

---Returns the address of the specified pattern
---
---Note: Patterns are represented in an "IDA-Style" format
---@param module_name string @module name
---@param pattern string @IDA-style pattern
---@return uint
function memory.find_pattern(module_name, pattern) end

---Returns the address(es) of where the specified read-only text is referenced
---@param module_name string
---@param text string
---@return uint[]
---@overload fun(module_name: string, text: string): uint
function memory.find_text(module_name, text, find_all) end

---Returns the address of the interface provided
---@param module_name string @module name
---@param interface_name string @interface name
---@return int
function memory.create_interface(module_name, interface_name) end

---Returns the n-th virtual function of the objects vtable
---@param instance uint
---@param index int
---@return uint
function memory.get_vfunc(instance, index) end

---@class ragebot
ragebot = {}

---Returns the current active config's index
---@return e_ragebot_cfg
function ragebot.get_active_cfg() end

---Returns the current world position for the auto peek circle or nil
---@return vec3_t|nil
function ragebot.get_autopeek_pos() end

---all functions here work on any menu control
---@class menu_control
local menu_control = {}

---returns the controls name
---@return string
function menu_control:get_name() end

---@class button_t: menu_control
local button_t = {}

---sets whether this control is visible
---@param is_visible boolean
function button_t:set_visible(is_visible) end

---@class checkbox_t: menu_control
local checkbox_t = {}

---returns whether this checkbox is enabled
---@return boolean
function checkbox_t:get() end

---sets whether this checkbox is enabled
---@param state boolean
function checkbox_t:set(state) end

---sets whether this control is visible
---@param is_visible boolean
function checkbox_t:set_visible(is_visible) end

---adds a color picker sub control
---@param name string
---@param default_color color_t
---@param has_alpha boolean
---@return color_picker_t
---@overload fun(name: string, default_color: color_t): color_picker_t
---@overload fun(name: string): color_picker_t
function checkbox_t:add_color_picker(name, default_color, has_alpha) end

---adds a keybind sub control
---@param name string
---@param default_key int
---@return keybind_t
---@overload fun(name: string): keybind_t
function checkbox_t:add_keybind(name, default_key) end

---@class color_picker_t: menu_control
local color_picker_t = {}

---returns the current color
---@return color_t
function color_picker_t:get() end

---sets the current color
---@param col color_t
function color_picker_t:set(col) end

---sets whether this control is visible
---@param is_visible boolean
function color_picker_t:set_visible(is_visible) end

---@class keybind_t: menu_control
local keybind_t = {}

---returns if the keybind is active (depending on the current mode)
---@return boolean
function keybind_t:get() end

---returns the current key bound to the keybind
---@return e_keys
function keybind_t:get_key() end

---returns the current keybind mode
---@return e_keybind_modes
function keybind_t:get_mode() end

---sets whether this control is visible
---@param is_visible boolean
function keybind_t:set_visible(is_visible) end

---@class list_t: menu_control
local list_t = {}

---returns the current active item index
---@return int
function list_t:get() end

---returns the current active item name
---@return string
function list_t:get_active_item_name() end

---sets the active item index
---@param active_item_index int
function list_t:set(active_item_index) end

---sets the active item index by name
---@param item_name string
function list_t:set_by_name(item_name) end

---returns the item name for the passed index
---@param item int
---@return string
function list_t:get_item_name(item) end

---returns an indexed table of all the items
---@return string[]
function list_t:get_items() end

---overrides the entire list of items
---@param items string[]
function list_t:set_items(items) end

---adds an item to the list
---@param item string
function list_t:add_item(item) end

---removes an item from the list
---@param item string
function list_t:remove_item(item) end

---sets whether this control is visible
---@param is_visible boolean
function list_t:set_visible(is_visible) end

---@class multi_selection_t: menu_control
local multi_selection_t = {}

---returns whether the item is active, can either be indexed or by name
---@param item int|string
---@return boolean
function multi_selection_t:get(item) end

---sets whether an item is active, can either be indexed or by name
---@param item int|string
---@param value boolean
function multi_selection_t:set(item, value) end

---returns the item name for the passed index
---@param item int
---@return string
function multi_selection_t:get_item_name(item) end

---returns an indexed table of all the items
---@return string[]
function multi_selection_t:get_items() end

---overrides the entire list of items
---@param items string[]
function multi_selection_t:set_items(items) end

---adds an item to the list
---@param item string
function multi_selection_t:add_item(item) end

---sets whether this control is visible
---@param is_visible boolean
function multi_selection_t:set_visible(is_visible) end

---adds a color picker sub control
---@param name string
---@param default_color color_t
---@param has_alpha boolean
---@return color_picker_t
---@overload fun(name: string, default_color: color_t): color_picker_t
---@overload fun(name: string): color_picker_t
function multi_selection_t:add_color_picker(name, default_color, has_alpha) end

---adds a keybind sub control
---@param name string
---@param default_key int
---@return keybind_t
---@overload fun(name: string): keybind_t
function multi_selection_t:add_keybind(name, default_key) end

---@class selection_t: menu_control
local selection_t = {}

---returns the current active item index
---@return int
function selection_t:get() end

---sets the active item index
---@param active_item_index int
function selection_t:set(active_item_index) end

---returns the item name for the passed index
---@param item int
---@return string
function selection_t:get_item_name(item) end

---returns an indexed table of all the items
---@return string[]
function selection_t:get_items() end

---overrides the entire list of items
---@param items string[]
function selection_t:set_items(items) end

---adds an item to the list
---@param item string
function selection_t:add_item(item) end

---sets whether this control is visible
---@param is_visible boolean
function selection_t:set_visible(is_visible) end

---adds a color picker sub control
---@param name string
---@param default_color color_t
---@param has_alpha boolean
---@return color_picker_t
---@overload fun(name: string, default_color: color_t): color_picker_t
---@overload fun(name: string): color_picker_t
function selection_t:add_color_picker(name, default_color, has_alpha) end

---adds a keybind sub control
---@param name string
---@param default_key int
---@return keybind_t
---@overload fun(name: string): keybind_t
function selection_t:add_keybind(name, default_key) end

---@class slider_t: menu_control
local slider_t = {}

---returns the current slider value
---@return float
function slider_t:get() end

---sets the current slider value
---@param value float
function slider_t:set(value) end

---sets whether this control is visible
---@param is_visible boolean
function slider_t:set_visible(is_visible) end

---adds a color picker sub control
---@param name string
---@param default_color color_t
---@param has_alpha boolean
---@return color_picker_t
---@overload fun(name: string, default_color: color_t): color_picker_t
---@overload fun(name: string): color_picker_t
function slider_t:add_color_picker(name, default_color, has_alpha) end

---adds a keybind sub control
---@param name string
---@param default_key int
---@return keybind_t
---@overload fun(name: string): keybind_t
function slider_t:add_keybind(name, default_key) end

---@class text_input_t: menu_control
local text_input_t = {}

---sets whether this control is visible
---@param is_visible boolean
function text_input_t:set_visible(is_visible) end

---@class text_t: menu_control
local text_t = {}

---sets the current text value
---@param text string
function text_t:set(text) end

---sets whether this control is visible
---@param is_visible boolean
function text_t:set_visible(is_visible) end

---adds a color picker sub control
---@param name string
---@param default_color color_t
---@param has_alpha boolean
---@return color_picker_t
---@overload fun(name: string, default_color: color_t): color_picker_t
---@overload fun(name: string): color_picker_t
function text_t:add_color_picker(name, default_color, has_alpha) end

---adds a keybind sub control
---@param name string
---@param default_key int
---@return keybind_t
---@overload fun(name: string): keybind_t
function text_t:add_keybind(name, default_key) end

---@class menu
menu = {}

---Returns size of menu as a vec2_t
---@return vec2_t
function menu.get_size() end

---Returns screen position of the menu as a vec2_t
---@return vec2_t
function menu.get_pos() end

---Returns if the menu is open
---@return boolean
function menu.is_open() end

---Returns a control object or an array depending on the elements
---- Warning: Controls should only be created OUTSIDE of callbacks to avoid infinite controls being spawned
---@param tab string @tab name
---@param sub_tab string @sub tab name
---@param group_name string @group tab name
---@param element_name string @element name
---@return any @can return any of the menu controls
function menu.find(tab, sub_tab, group_name, element_name) end

---places the target group in a column
---@param group string @group which will be moved to the target column
---@param column int
---@return text_t
function menu.set_group_column(group, column) end

---toggles visiblity for a group
---@param group string @group which will be made visible or not
---@param visible boolean
---@return text_t
function menu.set_group_visibility(group, visible) end

---Creates a text control and returns it
---@param group any @group in which the control will be placed (will be created if it doesnt already exist)
---@param text any @text
---@return text_t
function menu.add_text(group, text) end

---Creates a checkbox control and returns it
---@param group string @group in which the control will be placed (will be created if it doesnt already exist)
---@param name string @checkbox name
---@param default_value boolean @default value
---@return checkbox_t
---@overload fun(group: string, name: string): checkbox_t
function menu.add_checkbox(group, name, default_value) end

---Creates a selection control and returns it
---@param group string @group name
---@param name string @selection name
---@param items string[] @array of items
---@param visible_items int @items to show before showing a scrollbar
---@return selection_t
---@overload fun(group: string, name: string, items: string[]): selection_t
function menu.add_selection(group, name, items, visible_items) end

---Creates a slider control and returns it
---@param group string @group name
---@param name string @name
---@param min float @minimum slider value
---@param max float @maximum slider value
---@param step float
---@param precision int
---@param suffix string
---@overload fun(group: string, name: string, min: float, max: float): slider_t
---@overload fun(group: string, name: string, min: float, max: float, step: float): slider_t
---@overload fun(group: string, name: string, min: float, max: float, step: float, precision: int): slider_t
---@return slider_t
function menu.add_slider(group, name, min, max, step, precision, suffix) end

---Creates a button control and returns it
---@param group string @group name
---@param name string @button name
---@param callback function @function executed on click
---@return button_t
function menu.add_button(group, name, callback) end

---Creates a separator control and returns it
---@param group string @group name
function menu.add_separator(group) end

---Creates a list control and returns it
---@param group string @group name
---@param name string @list name
---@param items string[] @array of items
---@param visible_items int @items to show
---@return list_t
---@overload fun(group: string, name: string, items: string[]): list_t
function menu.add_list(group, name, items, visible_items) end

---Creates a text input control and returns it
---@param group string @group name
---@param name string @text input name
---@return text_input_t
function menu.add_text_input(group, name) end

---Creates a multi selection control and returns it
---@param group string @group name
---@param name string @control name
---@param items string[] @array of items
---@param visible_items int
---@return multi_selection_t
---@overload fun(group: string, name: string, items: string[]): multi_selection_t
function menu.add_multi_selection(group, name, items, visible_items) end

---Reload all scripts
function menu.reload_scripts() end

---@class render
render = {}

---Creates a font object
---comment
---@param font_name string @render font name
---@param font_size int @size of created font
---@param font_weight int @weight of created font
---@vararg e_font_flags @font flags
---@return font_t
function render.create_font(font_name, font_size, font_weight, ...) end

---Renders text
---@param font_object font_t @font object
---@param text string @text to render
---@param screen_pos vec2_t @position of text
---@param text_color color_t @color of text
---@return text_t
function render.text(font_object, text, screen_pos, text_color) end

---Returns size of text as a vec2_t
---@param font_object font_t @render font object
---@param text string @text to measure
---@return vec2_t
function render.get_text_size(font_object, text) end

---Renders a weapon icon
---@param weapon_id number
---@param pos vec2_t
---@param color color_t
---@param centered boolean
---@overload fun(weapon_id: number, pos: vec2_t, color: color_t)
function render.weapon_icon(weapon_id, pos, color, centered) end

---Returns the cheat's default font
---@return font_t
function render.get_default_font() end

---Pushes a clip onto render elements
---@param start vec2_t @clip start
---@param size vec2_t @clip size
function render.push_clip(start, size) end

---Stops all other render calls from being clipped
---
---you always have to pop it to stop other render.* calls from being clipped
function render.pop_clip() end

---Pushes a alpha modifier onto render elements
---@param alpha_modifier float @alpha modifier
function render.push_alpha_modifier(alpha_modifier) end

---Stops all other elements from having their alpha modified
---
---you always have to pop the alpha modifier to end it
function render.pop_alpha_modifier() end

---Returns current screen size as a vec2_t
---@return vec2_t
function render.get_screen_size() end

---Renders a 2D line
---@param from vec2_t @starting point
---@param to vec2_t @end point
---@param color color_t @line color
function render.line(from, to, color) end

---Renders a 2D rectangle
---@param screen_coords vec2_t @x and y coordinates
---@param rectangle_size vec2_t @rectangle width and height
---@param color color_t @rectangle color
---@param rounding float @rectangle fill rounding
---@overload fun(screen_coords: vec2_t, rectangle_size: vec2_t, color: color_t)
function render.rect(screen_coords, rectangle_size, color, rounding) end

---Renders a 2D filled rectangle
---@param screen_coords vec2_t @x and y coordinates
---@param rectangle_size vec2_t @rectangle width and height
---@param color color_t @rectangle fill color
---@param rounding float @rectangle fill rounding
---@overload fun(screen_coords: vec2_t, rectangle_size: vec2_t, color: color_t)
function render.rect_filled(screen_coords, rectangle_size, color, rounding) end

---Renders a 2D rectangle with a gradient
---@param screen_coords vec2_t @x and y coordinates
---@param rectangle_size vec2_t @rectangle width and height
---@param color_start color_t @rectangle gradient color start
---@param color_end color_t @rectangle gradient color end
---@param horizontal boolean @makes the gradient horizontal
---@overload fun(screen_coords: vec2_t, rectangle_size: vec2_t, color_start: color_t, color_end: color_t)
function render.rect_fade(screen_coords, rectangle_size, color_start, color_end, horizontal) end

---Renders a 2D triangle
---@param screen_coords vec2_t @x and y coordinates
---@param size int @triangle size
---@param color color_t @triangle color
---@param rotation int @triangle rotation
---@overload fun(screen_coords: vec2_t, size: int, color: color_t)
function render.triangle(screen_coords, size, color, rotation) end

---Renders a 2D triangle
---@param screen_coords vec2_t @x and y coordinates
---@param size int @triangle size
---@param color color_t @triangle color
---@param rotation int @triangle rotation
---@overload fun(screen_coords: vec2_t, size: int, color: color_t)
function render.triangle_filled(screen_coords, size, color, rotation) end

---Renders a 2D circle
---@param screen_coords vec2_t @x and y coordinates
---@param radius int @circle size
---@param color color_t @circle color
---@param thickness float @thickness value
---@overload fun(screen_coords: vec2_t, radius: int, color: color_t)
function render.circle(screen_coords, radius, color, thickness) end

---Renders a 2D filled circle
---@param screen_coords vec2_t @x and y coordinates
---@param radius int @circle size
---@param color color_t @circle fill color
function render.circle_filled(screen_coords, radius, color) end

---Renders a 2D progress_circle
---@param screen_coords vec2_t @x and y coordinates
---@param radius int @progress bar size
---@param color color_t @progress bar color
---@param width int @progress bar width
---@param progess float @progress value
function render.progress_circle(screen_coords, radius, color, width, progess) end

---Renders a 2D polygon
---@param points vec2_t[] @array of 2D points
---@param color color_t @polygon color
function render.polygon(points, color) end

---Renders a 2D polyline
---@param points vec2_t[] @array of 2D points
---@param color color_t @polygon color
function render.polyline(points, color) end

---Returns 2D coordinates for a 3D world point or nil on failure
---@param world_position vec3_t @x, y, z coordinates
---@return vec2_t|nil
function render.world_to_screen(world_position) end

---loads an image from a path and returns a texture
---@param path string @supports .jpg, .jpeg, .png, .svg, .tga, .bmp
---@return texture_t
function render.load_image(path) end

---loads an image from the raw file (has to include header) and returns a texture
---@param raw_file string @supports .jpg, .jpeg, .png, .svg, .tga, .bmp
---@return texture_t
function render.load_image_buffer(raw_file) end

---renders a texture received from load_image or load_image_buffer
---@param texture_id int
---@param screen_pos vec2_t
---@param size vec2_t
---@param color_tint color_t
---@overload fun(texture_id: int, screen_pos: vec2_t, size: vec2_t)
function render.texture(texture_id, screen_pos, size, color_tint) end

---@class trace
trace = {}

---Traces a line and returns the trace data
---@param from vec3_t @trace start
---@param to vec3_t @trace end
---@param ignore_entity entity_t @entity to skip
---@param trace_mask int @trace mask or MASK_SOLID
---@return trace_result_t
---@overload fun(from: vec3_t, to: vec3_t): trace_result_t
---@overload fun(from: vec3_t, to: vec3_t, ignore_entity: entity_t): trace_result_t
function trace.line(from, to, ignore_entity, trace_mask) end

---Performs a hull trace and returns the trace data
---@param from vec3_t @trace start
---@param to vec3_t @trace end
---@param hull_mins vec3_t @trace hull minimum
---@param hull_maxs vec3_t @trace hull maximum
---@param ignore_entity entity_t @entity to skip
---@param trace_mask int @trace mask or MASK_SOLID
---@return trace_result_t
---@overload fun(from: vec3_t, to: vec3_t, hull_mins: vec3_t, hull_maxs: vec3_t): trace_result_t
---@overload fun(from: vec3_t, to: vec3_t, hull_mins: vec3_t, hull_maxs: vec3_t, ignore_entity: entity_t): trace_result_t
function trace.hull(from, to, hull_mins, hull_maxs, ignore_entity, trace_mask) end

---Performs a bullet trace (autowall) and returns the bullet data
---@param from vec3_t @trace start
---@param to vec3_t @trace end
---@param attacker entity_t @trace from entity, local_player by default
---@param target entity_t @trace to entity
---@return bullet_data_t
---@overload fun(from: vec3_t, to: vec3_t): bullet_data_t
---@overload fun(from: vec3_t, to: vec3_t, attacker: entity_t): bullet_data_t
function trace.bullet(from, to, attacker, target) end
