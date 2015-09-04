#usr/bin/perl;
use strict;
use warnings;
use JSON qw(decode_json); 

#The 6 regions to extract API data from
my @regions = ("br","eune","euw","kr","lan","las","na","oce","ru","tr");

#The two patches
my @patches = ("5.11", "5.14");

my $region;
my $patch;
my $file;

#set-up the anonymous hash for json file
my $teemo = {"5.11" => {"br"   => 0,
						"eune" => 0,
						"euw"  => 0,
						"kr"   => 0,
						"lan"  => 0,
						"las"  => 0,
						"na"   => 0,
						"oce"  => 0,
						"ru"   => 0,
						"tr"   => 0,
						"all"  => 0},
			 "5.14" => {"br"   => 0,
						"eune" => 0,
						"euw"  => 0,
						"kr"   => 0,
						"lan"  => 0,
						"las"  => 0,
						"na"   => 0,
						"oce"  => 0,
						"ru"   => 0,
						"tr"   => 0,
			 			"all"  => 0}};
			 			
foreach $region(@regions)
{
	foreach $patch(@patches)
	{
		#open directory, store all file names into array
		opendir (DH, "./$patch/match/$region");
		my @files = readdir(DH);
		closedir(DH);
		
		#initialize variable to hold number of teemo games per region/patch
		my $teemos = 0;
		my $i = 0;
		
		#loop through each file, increase $teemos if he was used that game
		foreach $file(@files)
		{
			#if the "file" is a directory, do not open
			if (-d "./$patch/match/$region/$file/")
			{
				#do nothing
			}
			else
			{
				open(my $fh, '<', "./$patch/match/$region/$file") or die $!;
				my $data;
				while (<$fh>){$data.= $_};
				

					#Counts teemo bans
					if ($data =~ /"championId":17,"pickTurn":/)
					{
						print "Teemo was banned in $region $patch $file\n";
						#Untoggle if want to find banned games
						#$teemos++;
					}
					#Counts teemo games
					elsif ($data =~ /"championId":17,"highest.*/)
					{
						print "Found a teemo in $region $patch $file\n";
						#Toggle off for bans
						$teemos++;
					}

				close $fh;
			}
		}
		#place the number of teemos into the hash
		
		$teemo->{$patch}->{$region} = $teemos;
		$teemo->{$patch}->{"all"} = $teemo->{$patch}->{"all"} + $teemos;
	}
}

#Print a status update of the process
foreach $region(@regions)
{
	foreach $patch(@patches)
	{
		print "Region: $region, Patch: $patch, Number of teemo games: $teemo->{$patch}{$region}.\n";
	}
}

#Create a json formatted text 
my $json =
"{
	\"5.11\":{
		\"br\":\"$teemo->{'5.11'}->{'br'}\",
		\"eune\":\"$teemo->{'5.11'}->{'eune'}\",
		\"euw\":\"$teemo->{'5.11'}->{'euw'}\",
		\"kr\":\"$teemo->{'5.11'}->{'kr'}\",
		\"lan\":\"$teemo->{'5.11'}->{'lan'}\",
		\"las\":\"$teemo->{'5.11'}->{'las'}\",
		\"na\":\"$teemo->{'5.11'}->{'na'}\",
		\"oce\":\"$teemo->{'5.11'}->{'oce'}\",
		\"ru\":\"$teemo->{'5.11'}->{'ru'}\",
		\"tr\":\"$teemo->{'5.11'}->{'tr'}\",
		\"all\":\"$teemo->{'5.11'}->{'all'}\"
	},
	\"5.14\":{
		\"br\":\"$teemo->{'5.14'}->{'br'}\",
		\"eune\":\"$teemo->{'5.14'}->{'eune'}\",
		\"euw\":\"$teemo->{'5.14'}->{'euw'}\",
		\"kr\":\"$teemo->{'5.14'}->{'kr'}\",
		\"lan\":\"$teemo->{'5.14'}->{'lan'}\",
		\"las\":\"$teemo->{'5.14'}->{'las'}\",
		\"na\":\"$teemo->{'5.14'}->{'na'}\",
		\"oce\":\"$teemo->{'5.14'}->{'oce'}\",
		\"ru\":\"$teemo->{'5.14'}->{'ru'}\",
		\"tr\":\"$teemo->{'5.14'}->{'tr'}\",
		\"all\":\"$teemo->{'5.14'}->{'all'}\"
	}
}";

#write json file to file
open (my $fh, '>', "./teemo_ban.json") or die $!;
	print $fh $json;
close $fh;