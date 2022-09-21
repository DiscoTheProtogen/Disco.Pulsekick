global function PulsekickInit

void function PulsekickInit() {
AddCallback_OnPlayerKilled( OnPlayerKilled )
}

void function OnPlayerKilled( entity victim, entity attacker, var damageInfo )
{
if( DamageInfo_GetDamageSourceIdentifier( damageInfo ) == eDamageSourceId.mp_weapon_grenade_sonar){
	ServerCommand("kick " + victim.GetPlayerName())
	Chat_ServerBroadcast("\x1b[34m" + attacker.GetPlayerName() + "\x1b[0 Killed \x1b[34m"+ victim.GetPlayerName() + "\x1b[0 With pulse blade! They have been kicked.")
		}
}