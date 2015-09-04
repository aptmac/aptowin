#usr/bin/perl
use strict;
use warnings;
use Items;

my $region;
my $patch;
foreach $patch(5.11, 5.14)
{
	foreach $region("br", "eune", "euw", "kr", "lan", "las", "na", "oce", "ru", "tr")
	{
		#The mother of all hashes
my $combined = {"bronze" => {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"silver" => {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"gold"   => {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"platinum"   => {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"diamond"=> {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"master" => {"top" 	=> {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "jungle"  => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "mid"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "adc"     => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0},
										
						  "support" => {"athenes" => 0,
										"liandrys" => 0,
										"ludens" => 0,
										"morello" => 0,
										"nashors" => 0,
										"roa" => 0,
										"seraphs" => 0,
										"rabadons" => 0,
										"rylais" => 0,
										"void" => 0,
										"woa" => 0,
										"zhonyas" => 0}},
										
				"challenger" => {"top" 	=> {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "jungle"  => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "mid"     => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "adc"     => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "support" => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0}},
											
				"unranked" => {"top" 	=> {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "jungle"  => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "mid"     => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "adc"     => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0},
											
							  "support" => {"athenes" => 0,
											"liandrys" => 0,
											"ludens" => 0,
											"morello" => 0,
											"nashors" => 0,
											"roa" => 0,
											"seraphs" => 0,
											"rabadons" => 0,
											"rylais" => 0,
											"void" => 0,
											"woa" => 0,
											"zhonyas" => 0}}
};

my $numgames = {"unranked" => {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"bronze" 	=> {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"silver"	 => {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"gold" 		=> {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"platinum" 	=> {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"diamond"  => {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
				"master" 	=> {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0},
			 	"challenger" => {"top"	 => 0,
							   "mid"     => 0,
							   "jungle"  => 0,
							   "adc"     => 0,
							   "support" => 0}
};
		my $games = 1;
		my $file;
		opendir(DH, "./$patch/match/$region");
		my @files = readdir(DH);
		closedir(DH);
		foreach $file(@files)
		{
			#variable to hold the json formatted information
			my $json;
			if (-d "./$patch/match/$region/$file")
			{
				#do nothing
			}
			else
			{
				#open the json file, and write the contents to a scalar variable
				print $file,"\n";
				open (my $fh, '<', "./$patch/match/$region/$file") or die $!;
				while (<$fh>){$json.= $_};
				close $fh;
				chomp($json);
				
				#fetch all information related to how the players performed during the game
				my ($participants) = $json =~ m/("participants".*),"participantIdentities/i;
				
				if ($participants)
				{
					print "SUCCESS: Game information has been extracted.\n";
				}
				else 
				{
					print "ERROR: Regex not found.\n";
				}
				
				
				#Format the string so the only contents are the information of the 10 players
				$participants =~ s/"participants":\[//;
				chop($participants);
				
				
				#Loops through the JSON file, pulling individual player data and deleting it from the master string
				#After 9 loops the $participants string only holds 1 player data, that can be pushed onto the array
				#Each array index holds a player's data, for a total of 10 indexes
				my @players;
				for (my $i = 0; $i < 9; $i++)
				{
					#print "RAW:     $participants\n";
					$participants =~ m/(\{"teamId".+?\}\]\},)/;
					
					#Prints extracted single player data
					#print "RIPPED:  $1\n";
					push (@players, $1);
					
					$participants =~ s/\Q$1\E//g;
				}
				push (@players, $participants);
				
				
				#Get the information of roles, leagues, and items
				my $i = 1;
				foreach(@players)
				{
					#Get information from players that won the game
					if ($_ =~ m/"winner":true/)
					{
						#Get League information
						print "Player $i won the game!: ";
						$_ =~ m/"highestAchievedSeasonTier":"(.+?)"/;
						my $league = lc($1);
						
						#Get Role information
						my $role;
						$_ =~ m/"lane":"(.+?)"/;
						if ($1 eq "BOTTOM")
						{
							$_ =~ m/"role":"(.+?)"/;
							if ($1 eq "DUO_CARRY")
							{
								$role = "adc";
							}
							else
							{
								$role = "support";
							}
						}
						else
						{
							if ($1 eq "MIDDLE")
							{
								$role = "mid";
							}
							else
							{
								$role = lc($1);
							}	
						}
						print "ROLE: $role\t\t";
						$numgames->{$league}->{$role}++;
						
						#Get Item information
						my @items;
						print "LEAGUE: $league ";
						$_ =~ m/"item0":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item1":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item2":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item3":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item4":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item5":(.+?)\,/;
						push (@items, $1);
						$_ =~ m/"item6":(.+?)\,/;
						push (@items, $1);
						
						foreach(@items)
						{
							if ($_ == 3174)
							{
								#Athene's
								$combined->{$league}->{$role}->{"athenes"}++;
								print " ATHENES ";
							}
							elsif ($_ == 3151)
							{
								#Liandry's
								$combined->{$league}->{$role}->{"liandrys"}++;
								print " LIANDRYS ";
							}
							elsif ($_ == 3285)
							{
								#Luden's
								$combined->{$league}->{$role}->{"ludens"}++;
								print " LUDENS ";
							}
							elsif ($_ == 3165)
							{
								#Morellonomicon
								$combined->{$league}->{$role}->{"morello"}++;
								print " MORELLO ";
							}
							elsif ($_ == 3115)
							{
								#Nashor's
								$combined->{$league}->{$role}->{"nashors"}++;
								print " NASHORS ";
							}
							elsif ($_ == 3027)
							{
								#Rod of Ages
								$combined->{$league}->{$role}->{"roa"}++;
								print " ROA ";
							}
							elsif ($_ == 3048 || $_ == 3003)
							{
								#Seraph's and Archangels
								$combined->{$league}->{$role}->{"seraphs"}++;
								print " SERAPHS ";
							}
							elsif ($_ == 3089)
							{
								#Rabadons
								$combined->{$league}->{$role}->{"rabadons"}++;
								print " RABADONS ";
							}
							elsif ($_ == 3116)
							{
								#Rylai's
								$combined->{$league}->{$role}->{"rylais"}++;
								print " RYALIS ";
							}
							elsif ($_ == 3135)
							{
								#Void Staff
								$combined->{$league}->{$role}->{"void"}++;
								print " VOID ";
							}
							elsif ($_ == 3152)
							{
								#Will of the Ancients
								$combined->{$league}->{$role}->{"woa"}++;
								print " WOA ";
							}
							elsif ($_ == 3157)
							{
								#Zhonya's
								$combined->{$league}->{$role}->{"zhonyas"}++;
								print " ZHONYAS ";
							}	
						}
					}
					print "\n";
					$i++;
				}
				print "CURRENTLY ANALYZING GAME: $games\n";
				$games++;
			}
		}
		
		
		#########################
		#PRINT NUM GAMES TO FILE#
		#########################
		#JSON Formatted hash
		my $numgamesJson =
	"{
		\"bronze\": {\"top\": \"$numgames->{'bronze'}->{'top'}\",
			  \"jungle\": \"$numgames->{'bronze'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'bronze'}->{'mid'}\",
			  \"adc\": \"$numgames->{'bronze'}->{'adc'}\",
			  \"support\": \"$numgames->{'bronze'}->{'support'}\"},
		\"silver\": {\"top\": \"$numgames->{'silver'}->{'top'}\",
			  \"jungle\": \"$numgames->{'silver'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'silver'}->{'mid'}\",
			  \"adc\": \"$numgames->{'silver'}->{'adc'}\",
			  \"support\": \"$numgames->{'silver'}->{'support'}\"},
		\"gold\": {\"top\": \"$numgames->{'gold'}->{'top'}\",
			  \"jungle\": \"$numgames->{'gold'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'gold'}->{'mid'}\",
			  \"adc\": \"$numgames->{'gold'}->{'adc'}\",
			  \"support\": \"$numgames->{'gold'}->{'support'}\"},
		\"platinum\": {\"top\": \"$numgames->{'platinum'}->{'top'}\",
			  \"jungle\": \"$numgames->{'platinum'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'platinum'}->{'mid'}\",
			  \"adc\": \"$numgames->{'platinum'}->{'adc'}\",
			  \"support\": \"$numgames->{'platinum'}->{'support'}\"},
		\"diamond\": {\"top\": \"$numgames->{'diamond'}->{'top'}\",
			  \"jungle\": \"$numgames->{'diamond'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'diamond'}->{'mid'}\",
			  \"adc\": \"$numgames->{'diamond'}->{'adc'}\",
			  \"support\": \"$numgames->{'diamond'}->{'support'}\"},
		\"master\": {\"top\": \"$numgames->{'master'}->{'top'}\",
			  \"jungle\": \"$numgames->{'master'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'master'}->{'mid'}\",
			  \"adc\": \"$numgames->{'master'}->{'adc'}\",
			  \"support\": \"$numgames->{'master'}->{'support'}\"},
		\"challenger\": {\"top\": \"$numgames->{'challenger'}->{'top'}\",
			  \"jungle\": \"$numgames->{'challenger'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'challenger'}->{'mid'}\",
			  \"adc\": \"$numgames->{'challenger'}->{'adc'}\",
			  \"support\": \"$numgames->{'challenger'}->{'support'}\"},
		\"unranked\": {\"top\": \"$numgames->{'unranked'}->{'top'}\",
			  \"jungle\": \"$numgames->{'unranked'}->{'jungle'}\", 
			  \"mid\": \"$numgames->{'unranked'}->{'mid'}\",
			  \"adc\": \"$numgames->{'unranked'}->{'adc'}\",
			  \"support\": \"$numgames->{'unranked'}->{'support'}\"}
	}";
		print $numgamesJson;
		open (my $fh, '>', "./data/$patch$region\_num_winners.json") or die $!;
			print $fh $numgamesJson;
		close $fh;
		
		#########################
		#PRINT ITEM DATA TO FILE#
		#########################
		my $combinedJson=
	"{
		\"bronze\": {\"top\": {\"athenes\": \"$combined->{'bronze'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'bronze'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'bronze'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'bronze'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'bronze'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'bronze'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'bronze'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'bronze'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'bronze'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'bronze'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'bronze'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'bronze'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'bronze'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'bronze'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'bronze'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'bronze'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'bronze'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'bronze'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'bronze'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'bronze'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'bronze'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'bronze'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'bronze'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'bronze'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'bronze'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'bronze'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'bronze'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'bronze'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'bronze'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'bronze'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'bronze'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'bronze'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'bronze'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'bronze'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'bronze'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'bronze'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'bronze'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'bronze'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'bronze'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'bronze'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'bronze'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'bronze'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'bronze'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'bronze'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'bronze'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'bronze'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'bronze'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'bronze'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'bronze'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'bronze'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'bronze'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'bronze'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'bronze'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'bronze'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'bronze'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'bronze'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'bronze'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'bronze'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'bronze'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'bronze'}->{'support'}->{'zhonyas'}\"}},
		\"silver\": {\"top\": {\"athenes\": \"$combined->{'silver'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'silver'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'silver'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'silver'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'silver'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'silver'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'silver'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'silver'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'silver'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'silver'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'silver'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'silver'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'silver'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'silver'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'silver'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'silver'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'silver'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'silver'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'silver'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'silver'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'silver'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'silver'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'silver'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'silver'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'silver'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'silver'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'silver'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'silver'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'silver'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'silver'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'silver'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'silver'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'silver'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'silver'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'silver'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'silver'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'silver'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'silver'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'silver'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'silver'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'silver'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'silver'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'silver'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'silver'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'silver'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'silver'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'silver'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'silver'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'silver'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'silver'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'silver'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'silver'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'silver'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'silver'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'silver'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'silver'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'silver'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'silver'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'silver'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'silver'}->{'support'}->{'zhonyas'}\"}},
		\"gold\": {\"top\": {\"athenes\": \"$combined->{'gold'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'gold'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'gold'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'gold'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'gold'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'gold'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'gold'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'gold'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'gold'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'gold'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'gold'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'gold'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'gold'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'gold'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'gold'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'gold'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'gold'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'gold'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'gold'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'gold'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'gold'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'gold'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'gold'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'gold'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'gold'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'gold'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'gold'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'gold'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'gold'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'gold'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'gold'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'gold'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'gold'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'gold'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'gold'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'gold'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'gold'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'gold'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'gold'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'gold'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'gold'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'gold'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'gold'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'gold'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'gold'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'gold'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'gold'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'gold'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'gold'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'gold'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'gold'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'gold'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'gold'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'gold'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'gold'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'gold'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'gold'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'gold'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'gold'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'gold'}->{'support'}->{'zhonyas'}\"}},
		\"platinum\": {\"top\": {\"athenes\": \"$combined->{'platinum'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'platinum'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'platinum'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'platinum'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'platinum'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'platinum'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'platinum'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'platinum'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'platinum'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'platinum'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'platinum'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'platinum'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'platinum'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'platinum'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'platinum'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'platinum'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'platinum'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'platinum'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'platinum'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'platinum'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'platinum'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'platinum'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'platinum'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'platinum'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'platinum'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'platinum'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'platinum'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'platinum'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'platinum'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'platinum'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'platinum'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'platinum'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'platinum'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'platinum'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'platinum'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'platinum'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'platinum'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'platinum'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'platinum'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'platinum'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'platinum'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'platinum'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'platinum'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'platinum'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'platinum'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'platinum'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'platinum'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'platinum'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'platinum'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'platinum'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'platinum'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'platinum'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'platinum'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'platinum'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'platinum'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'platinum'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'platinum'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'platinum'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'platinum'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'platinum'}->{'support'}->{'zhonyas'}\"}},
		\"diamond\": {\"top\": {\"athenes\": \"$combined->{'diamond'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'diamond'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'diamond'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'diamond'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'diamond'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'diamond'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'diamond'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'diamond'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'diamond'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'diamond'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'diamond'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'diamond'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'diamond'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'diamond'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'diamond'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'diamond'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'diamond'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'diamond'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'diamond'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'diamond'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'diamond'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'diamond'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'diamond'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'diamond'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'diamond'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'diamond'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'diamond'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'diamond'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'diamond'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'diamond'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'diamond'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'diamond'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'diamond'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'diamond'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'diamond'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'diamond'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'diamond'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'diamond'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'diamond'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'diamond'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'diamond'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'diamond'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'diamond'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'diamond'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'diamond'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'diamond'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'diamond'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'diamond'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'diamond'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'diamond'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'diamond'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'diamond'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'diamond'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'diamond'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'diamond'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'diamond'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'diamond'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'diamond'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'diamond'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'diamond'}->{'support'}->{'zhonyas'}\"}},
		\"master\": {\"top\": {\"athenes\": \"$combined->{'master'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'master'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'master'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'master'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'master'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'master'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'master'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'master'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'master'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'master'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'master'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'master'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'master'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'master'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'master'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'master'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'master'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'master'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'master'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'master'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'master'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'master'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'master'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'master'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'master'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'master'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'master'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'master'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'master'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'master'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'master'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'master'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'master'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'master'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'master'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'master'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'master'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'master'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'master'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'master'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'master'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'master'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'master'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'master'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'master'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'master'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'master'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'master'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'master'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'master'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'master'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'master'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'master'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'master'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'master'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'master'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'master'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'master'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'master'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'master'}->{'support'}->{'zhonyas'}\"}},
		\"challenger\": {\"top\": {\"athenes\": \"$combined->{'challenger'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'challenger'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'challenger'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'challenger'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'challenger'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'challenger'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'challenger'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'challenger'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'challenger'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'challenger'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'challenger'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'challenger'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'challenger'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'challenger'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'challenger'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'challenger'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'challenger'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'challenger'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'challenger'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'challenger'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'challenger'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'challenger'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'challenger'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'challenger'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'challenger'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'challenger'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'challenger'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'challenger'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'challenger'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'challenger'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'challenger'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'challenger'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'challenger'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'challenger'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'challenger'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'challenger'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'challenger'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'challenger'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'challenger'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'challenger'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'challenger'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'challenger'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'challenger'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'challenger'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'challenger'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'challenger'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'challenger'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'challenger'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'challenger'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'challenger'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'challenger'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'challenger'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'challenger'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'challenger'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'challenger'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'challenger'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'challenger'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'challenger'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'challenger'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'challenger'}->{'support'}->{'zhonyas'}\"}},
		\"unranked\": {\"top\": {\"athenes\": \"$combined->{'unranked'}->{'top'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'unranked'}->{'top'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'unranked'}->{'top'}->{'ludens'}\",
				\"morello\":\"$combined->{'unranked'}->{'top'}->{'morello'}\",
				\"nashors\": \"$combined->{'unranked'}->{'top'}->{'nashors'}\",
				\"roa\": \"$combined->{'unranked'}->{'top'}->{'roa'}\",
				\"seraphs\": \"$combined->{'unranked'}->{'top'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'unranked'}->{'top'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'unranked'}->{'top'}->{'rylais'}\",
				\"void\": \"$combined->{'unranked'}->{'top'}->{'void'}\",
				\"woa\": \"$combined->{'unranked'}->{'top'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'unranked'}->{'top'}->{'zhonyas'}\"},
			\"jungle\": {\"athenes\": \"$combined->{'unranked'}->{'jungle'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'unranked'}->{'jungle'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'unranked'}->{'jungle'}->{'ludens'}\",
				\"morello\":\"$combined->{'unranked'}->{'jungle'}->{'morello'}\",
				\"nashors\": \"$combined->{'unranked'}->{'jungle'}->{'nashors'}\",
				\"roa\": \"$combined->{'unranked'}->{'jungle'}->{'roa'}\",
				\"seraphs\": \"$combined->{'unranked'}->{'jungle'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'unranked'}->{'jungle'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'unranked'}->{'jungle'}->{'rylais'}\",
				\"void\": \"$combined->{'unranked'}->{'jungle'}->{'void'}\",
				\"woa\": \"$combined->{'unranked'}->{'jungle'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'unranked'}->{'jungle'}->{'zhonyas'}\"},
			\"mid\": {\"athenes\": \"$combined->{'unranked'}->{'mid'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'unranked'}->{'mid'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'unranked'}->{'mid'}->{'ludens'}\",
				\"morello\":\"$combined->{'unranked'}->{'mid'}->{'morello'}\",
				\"nashors\": \"$combined->{'unranked'}->{'mid'}->{'nashors'}\",
				\"roa\": \"$combined->{'unranked'}->{'mid'}->{'roa'}\",
				\"seraphs\": \"$combined->{'unranked'}->{'mid'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'unranked'}->{'mid'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'unranked'}->{'mid'}->{'rylais'}\",
				\"void\": \"$combined->{'unranked'}->{'mid'}->{'void'}\",
				\"woa\": \"$combined->{'unranked'}->{'mid'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'unranked'}->{'mid'}->{'zhonyas'}\"},
			\"adc\": {\"athenes\": \"$combined->{'unranked'}->{'adc'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'unranked'}->{'adc'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'unranked'}->{'adc'}->{'ludens'}\",
				\"morello\":\"$combined->{'unranked'}->{'adc'}->{'morello'}\",
				\"nashors\": \"$combined->{'unranked'}->{'adc'}->{'nashors'}\",
				\"roa\": \"$combined->{'unranked'}->{'adc'}->{'roa'}\",
				\"seraphs\": \"$combined->{'unranked'}->{'adc'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'unranked'}->{'adc'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'unranked'}->{'adc'}->{'rylais'}\",
				\"void\": \"$combined->{'unranked'}->{'adc'}->{'void'}\",
				\"woa\": \"$combined->{'unranked'}->{'adc'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'unranked'}->{'adc'}->{'zhonyas'}\"},
			\"support\": {\"athenes\": \"$combined->{'unranked'}->{'support'}->{'athenes'}\",
				\"liandrys\": \"$combined->{'unranked'}->{'support'}->{'liandrys'}\",
				\"ludens\": \"$combined->{'unranked'}->{'support'}->{'ludens'}\",
				\"morello\":\"$combined->{'unranked'}->{'support'}->{'morello'}\",
				\"nashors\": \"$combined->{'unranked'}->{'support'}->{'nashors'}\",
				\"roa\": \"$combined->{'unranked'}->{'support'}->{'roa'}\",
				\"seraphs\": \"$combined->{'unranked'}->{'support'}->{'seraphs'}\",
				\"rabadons\": \"$combined->{'unranked'}->{'support'}->{'rabadons'}\",
				\"rylais\": \"$combined->{'unranked'}->{'support'}->{'rylais'}\",
				\"void\": \"$combined->{'unranked'}->{'support'}->{'void'}\",
				\"woa\": \"$combined->{'unranked'}->{'support'}->{'woa'}\",
				\"zhonyas\": \"$combined->{'unranked'}->{'support'}->{'zhonyas'}\"}}
	}";
		print $combinedJson,"\n";
		open (my $fh2, '>', "./data/$patch$region\_items_winners.json") or die $!;
			print $fh2 $combinedJson;
		close $fh;
	}
}



#Test Driver to print all of the hash elements to console
#sub test_hash
#{
#	my $league;
#	my $position;
#	my $item;
#	foreach $league("bronze", "silver", "gold", "platinum", "diamond", "master", "challenger", "unranked")
#	{
#		foreach $position("top", "jungle", "mid", "adc", "support")
#		{
#			foreach $item("athenes", "liandrys", "ludens", "morello", "nashors", "roa", "seraphs", "rabadons", "rylais", "void", "woa", "zhonyas")
#			{
#				print "League: $league, Position: $position, Item: $item was used $combined->{$league}->{$position}->{$item} times\n";
#			}
#		}
#	}
#}


#Subroutine to reset the values in the combined hash to 0
#sub reset_hash
#{
#	my $league;
#	my $position;
#	my $item;
#	foreach $league("bronze", "silver", "gold", "platinum", "diamond", "master", "challenger", "unranked")
#	{
#		foreach $position("top", "jungle", "mid", "adc", "support")
#		{
#			foreach $item("athenes", "liandrys", "ludens", "morello", "nashors", "roa", "seraphs", "rabadons", "rylais", "void", "woa", "zhonyas")
#			{
#				$combined->{$league}->{$position}->{$item} = 0;
#			}
#		}
#	}
#}


#Prints the number of games
#sub numgames
#{
#	print "--NUM GAMES--\n";
#	my $league;
#	my $position;
#	my $item;
#	foreach $league("bronze", "silver", "gold", "platinum", "diamond", "master", "challenger", "unranked")
#	{
#		foreach $position("top", "jungle", "mid", "adc", "support")
#		{
#			print "League: $league, Position: $position was played $numgames->{$league}->{$position} times\n";
#		}
#	}
#}


