/// @description Define movement and attributes.

// Define general world stuff.
global.player = id;

// Stuff for getting the player set up in the level.
canJump = false;
currentHealthStep = 0;
depth = -100;
dead = false;

// Define the audio listening stuff so global sounds are heard relative to the player.
audio_listener_orientation(0, -1, 0, 0, 0, -1);
audio_falloff_set_model(audio_falloff_linear_distance);

/// @description Adjust Gertrude's jump height and such according to the hormones.
function AdjustAttributesFromHormones()
{
	jumpSpeed = 10 * global.estrogen + 12;
	inertia = 100 * global.follicleStimulatingHormone;
	phy_linear_damping = global.luteinizingHormone;
	healthRegenFramesPerHP = -1;
	if global.progesterone > 0
	{
		healthRegenFramesPerHP = 15 / global.progesterone;
	}
}

/// @description Walk left.
function MoveLeft(multiplier = 1.0)
{
	AdjustAttributesFromHormones();
	image_xscale = -1;
	phy_linear_velocity_x = -walkSpeed * global.pixelsPerBlock * multiplier;
}

/// @description Walk right.
function MoveRight(multiplier = 1.0)
{
	AdjustAttributesFromHormones();
	image_xscale = 1;
	phy_linear_velocity_x = walkSpeed * global.pixelsPerBlock * multiplier;
}

/// @description Move up, as in jumping.
function MoveUp(multiplier = 1.0)
{
	AdjustAttributesFromHormones();
	phy_linear_velocity_y += -jumpSpeed * global.pixelsPerBlock * multiplier;
}

function Jump(multiplier = 1.0)
{
	
	if canJump || global.estrogen > 0.75
	{
		MoveUp(multiplier);
		canJump = false;
	}
	PlaySoundFrom(id, snd_jumpFlapping); //jumping sound
}

/// @description Stop moving left or right.
function StopWalking()
{
	phy_linear_velocity_x = inertia / phy_linear_velocity_x;
}

/// @description Regenerate health according to global level of progesterone.
function RegenHealth()
{
	if healthRegenFramesPerHP > 0 && currentHealth < maxHealth
	{
		// Wait another frame.
		if currentHealthStep < healthRegenFramesPerHP
		{
			currentHealthStep += 1;
		}
		// Regen 1 health and reset waiting.
		else
		{
			currentHealthStep = 0;
			currentHealth += 1;
		}
	}

	// You're dead, you're dead, you're dead,
	// You're dead and outta this world.
	if currentHealth <= 0
	{
		Die();
	}
}

/// @description Take the amount of damage and handle damage-taking visual effects.
function TakeDamage(dmgAmount)
{
	currentHealth -= dmgAmount;
	MoveUp(dmgAmount * 0.05); // tiny jump because they're like, "ouch!"
	Screenshake(dmgAmount * 0.25, dmgAmount * 0.25, 0.9);
}

/// @description Switch to death sprite and then restart the room.
function Die()
{
	dead = true;
	sprite_index = spr_gertrudeDeath;
	phy_angular_damping = 0;
	phy_linear_damping = 0;
	phy_angular_velocity = 1080 * choose(-1, 1); // degrees per second left or right
	MoveUp(); // Ya know how when game characters die they just, like, get flung into the air?
	SwitchToRoom(room); // TODO maybe add a death exit sound?
}