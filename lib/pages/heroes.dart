import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_guide/services/theme.dart';
import 'package:valorant_guide/services/heroes_categories.dart';

class Heroes extends StatefulWidget {
  @override
  _HeroesState createState() => _HeroesState();
}

class _HeroesState extends State<Heroes> {

  ValorantThemes ValorantTheme = ValorantThemes();

  List<HeroCategory> HeroesCategories = [
    HeroCategory(heroname: 'Breach',
      e_ability: 'Equip a seismic blast, hold fire to increase the distance, and release to set off a quake that dazes all players caught in it.',
      q_ability: 'Equip a blinding charge that can be set on a wall. It fires a fast burst that blinds anyone on the other side.',
      c_ability: 'Equip a Fusion Charge and fire it to send a slow-firing burst through a wall, which deals high damage to anyone it connects with. More handy for clearing corners than actually getting frags.',
      x_ability: 'Equip a seismic charge, fire to send a quake through all terrain in the ult’s cone of effect. This dazes and knocks anyone caught in its blast into the air. It also deals some damage.',
      biography: "Breach, the bionic Swede, fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair."
    ),
    HeroCategory(heroname: 'Brimstone',
      e_ability: 'Use your map to call in smokescreens that obscure vision, click to set the locations, and confirm to launch.',
      q_ability: 'Launch a grenade that deploys a damaging field of fire',
      c_ability: 'Target a nearby location to call in the beacon, giving all players near the beacon rapid-fire.',
      x_ability: 'Target a nearby location, launch a devastating orbital strike that damages enemies for several seconds.',
      biography: "Joining from the USA, Brimstone's orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and from a distance make him an unmatched boots-on-the-ground commander."
    ),
    HeroCategory(heroname: 'Cypher',
      e_ability: 'Place a remote camera, once placed reactive to view the video feed. Left click while the camera is activated to fire a tracking dart.',
      q_ability: 'Place a remote activation trap, reactive to create a cage that slows enemies who pass through it. Traps can be detonated.',
      c_ability: 'Place a tripwire between two walls, triggered enemies are restrained and revealed for a short time. If the trap hasn’t been destroyed, it activates to daze the trapped victim.',
      x_ability: 'Once an enemy is killed, information can be extracted of the locations of their living allies.',
      biography: "The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy's every move. No secret is safe. No maneuver goes unseen. Cypher is always watching."
    ),
    HeroCategory(heroname: 'Jett',
      e_ability: 'Dash a short distance.',
      q_ability: 'Launch upwards after a brief delay.',
      c_ability: 'Throw a cloud of fog that obscures vision on impact.',
      x_ability: 'Throw deadly throwing knives that deal damage and kill on headshots. A kill restores daggers, left click throws a single dagger and right click throws all remaining daggers.',
      biography: "Representing her home country of South Korea, Jett's agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them."
    ),
    HeroCategory(heroname: 'Killjoy',
      e_ability: 'Deploy a bot that hunts down enemies in range and explodes, applying vulnerable. Can be recalled once deployed.',
      q_ability: 'Throw a grenade that lands and goes covert, activating the grenade deploys a swarm of damaging nanobots.',
      c_ability: 'Fire deploys a turret that fires at enemies in a 180 degree cone. Can be recalled once deployed.',
      x_ability: 'Fire to deploy the device, after a long windup, the device detains all enemies caught in the radius, and can be destroyed by enemies.',
      biography: "The genius of Germany. Killjoy secures the battlefield with ease using her arsenal of inventions. If the damage from her gear doesn't stop her enemies, her robots' debuff will help make short work of them."
    ),
    HeroCategory(heroname: 'Omen',
      e_ability: 'Cast an orb that bursts into a sphere of shadow obscuring the final location. Can be charged to increase distance.',
      q_ability: 'Cast a shadow in a straight line that blinds anyone it touches.',
      c_ability: 'After a delay, teleport a short distance.',
      x_ability: 'Select anywhere on the map to teleport and reform, will initially appear as a shadow, which can be killed by enemies and cancel the teleport. If teleport is successful, you become invisible for a short time.',
      biography: "A phantom of a memory, Omen hunts in the shadows. He renders enemies blind, teleports across the field, then lets paranoia take hold as his foe scrambles to learn where he might strike next."
    ),
    HeroCategory(heroname: 'Phoenix',
      e_ability: 'Throw a fireball that explodes after a short delay on impact with the ground. The fire zone damages enemies but heals Phoenix.',
      q_ability: 'Cast a curved flare that bursts into a light after a short delay, temporarily blinding anyone and can be curved left and right.',
      c_ability: 'Cast a flame wall that blocks enemy vision and damages anyone passing through it. The wall can be bent both horizontally and vertically so you can cover ramps, too.',
      x_ability: 'Marks your current location. If you die while this ability is active, or when it expires, you’ll respawn at the marked location with full health.',
      biography: "Hailing from the U.K., Phoenix's star power shines through in his fighting style, igniting the battlefield with flash and flare. Whether he's got backup or not, he'll rush into a fight on his own terms."
    ),
    HeroCategory(heroname: 'Raze',
      e_ability: 'Cluster grenade that deals initial impact damage, followed by damage from the clusters.',
      q_ability: 'Like a C4 satchel. Throw it down and either detonate it when you want or let the timer run down. Deals AoE damage and displaces Agents.',
      c_ability: 'Set down an explosive robot that goes in a straight line, bouncing off walls until it detects an enemy in front of it. It will then home in and detonate on them unless shot.',
      x_ability: 'Pull out a rocket launcher and fire it down a lane. The explosion deals huge damage to anyone in its radius. We’ve seen aces with a single shot from this.',
      biography: 'Raze explodes out of Brazil with her big personality and big guns. With her blunt-force-trauma playstyle, she excels at flushing entrenched enemies and clearing tight spaces with a generous dose of "boom."'
    ),
    HeroCategory(heroname: 'Reyna',
      e_ability: 'Consumes a nearby soul orb, becoming intangible for a short duration. If your ultimate is active, also become invisible.',
      q_ability: 'Enemies killed by Reyna leave behind Soul Orbs that last 3 seconds. Consume a nearby soul orb, rapidly healing for a short duration. Health gained through this skill exceeding 100 will decay over time. If your ultimate is active, this skill will automatically cast and not consume the orb.',
      c_ability: 'Throw an eye through surfaces. The eye will blind all enemies who look at – only affects distant vision, so use to take on AWPers.',
      x_ability: 'Enter a frenzy, increasing firing speed, equip, and reload speed dramatically. Scoring a kill renews the duration.',
      biography: "Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance."
    ),
    HeroCategory(heroname: 'Sage',
      e_ability: 'Heal an ally or yourself to full health over a few seconds.',
      q_ability: 'An orb that breaks into a slowing field on impact with the found, all caught in the field are slowed, grounded, and make a noise when moving.',
      c_ability: 'A wall that can be rotated.',
      x_ability: 'Target a friendly corpse, after a short delay revive them with full health.',
      biography: "The stronghold of China, Sage creates safety for herself and her team wherever she goes. Able to revive fallen friends and stave off aggressive pushes, she provides a calm center to a hellish fight."
    ),
    HeroCategory(heroname: 'Sova',
      e_ability: 'Fire a bolt that deploys a sonar emitter and tags nearby enemies, revealing them.',
      q_ability: 'Fire and explosive bolt that damages enemies on impact. Use it to clear out boxes and corners.',
      c_ability: 'Deploy and control a drone that reveals enemies around the map. Once active you can fire a tracking dart that reveals one enemy’s location until they remove it.',
      x_ability: 'Fire up to three energy blasts that spear across the entire map and each hit enemy takes damages and is marked.',
      biography: "Born from the eternal winter of Russia's tundra, Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide."
    ),
    HeroCategory(heroname: 'Viper',
      e_ability: 'Deploy a line of gas that can be reactivated to create a wall of toxic gas which costs fuel.',
      q_ability: 'Throw a cloud of gas that can be reactivated to create a smoke cloud which costs fuel. This can be redeployed after a cooldown.',
      c_ability: 'Fire a projectile that explodes into a pool of acid that does damage.',
      x_ability: 'A toxic cloud covers a large radius and highlights enemies to Viper, the duration of the cloud extends if Viper remains in the cloud.',
      biography: "The American chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and cripple the enemy's vision. If the toxins don't kill her prey, her mind games surely will."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,//allows for background image of body, else colour covers image
      appBar: AppBar(
        title: Text(
            'vALORANT AGENTS',
            style: ValorantTheme.appBarTitleTextStyle
        ),
        centerTitle: true,
        backgroundColor: ValorantTheme.valorantBlackColor,
      ),
      body: Column(
          children: <Widget>[
            Expanded(
            flex: 1,
              child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image:AssetImage('assets/valorantblurryhavenwallpaper.jpg'),
                fit: BoxFit.cover,
                             ),
                            ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemCount: HeroesCategories.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(//radius of card corners
                          borderRadius: BorderRadius.circular(0),
                        ),
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                              Navigator.pushNamed(context, '/heroes-info', arguments: {
                                'heroname':'${HeroesCategories[index].heroname}',
                                'e_ability':'${HeroesCategories[index].e_ability}',
                                'q_ability':'${HeroesCategories[index].q_ability}',
                                'c_ability':'${HeroesCategories[index].c_ability}',
                                'x_ability':'${HeroesCategories[index].x_ability}',
                                'heroicon':'assets/heroes/heroes_icon/${HeroesCategories[index].heroname}.png',
                                'heroimage':'assets/heroes/heroes_image/${HeroesCategories[index].heroname}full.png',
                                'biography':'${HeroesCategories[index].biography}',
                              });
                          },
                          child: (
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:AssetImage('assets/heroes/heroes_icon/${HeroesCategories[index].heroname}.png'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              )
                          ),
                        ),
                      );;
                    },
                  ),
                )
            )
        ]
      )
    );
  }
}
