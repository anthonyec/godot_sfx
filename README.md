# SFX Plugin for Godot

<div align="center">
  <img src="logo.png" width="195" alt="SFX">
</div>

## Installation
- Install the plugin in the Addons folder
- Enable it in `Project Settings > Addons`

## Setup

![Screenshot of SFX in Project Settings](./screenshot.png)

1. Go to `Project > Project Settings...`
2. Turn on "Advanced Settings"
3. In the list, go to `Addons > SFX` or search for "SFX"
4. For the sounds directory, choose a folder where all your sounds will live.

## Usage

### Playing sounds
```gdscript
# Play a sound at a location
SFX.play_at_location("water_splash", Vector3(10, 20, 30))

# Play a sound at attached to a node
SFX.play_attached_to_node("footstep", player)

# Play a non-spatial sound
SFX.play_everywhere("ui_select")
```

### Random sounds
If you include sounds with file names that end with numbers, `SFX` will randomly
choose one and play it.

For example, in my sounds directory I include the following files:

```txt
res://audio/sfx/footstep_1.wav
res://audio/sfx/footstep_2.wav
res://audio/sfx/footstep_3.wav
```

Then when playing the sound, replace the number in the sound name with `[%n]`:

```gdscript
SFX.play_attached_to_node("footstep_[%n]", player)
```