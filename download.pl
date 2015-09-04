#usr/bin/perl
#use strict;
#use warnings;
use LWP::Simple;
use JSON qw(decode_json);

#The 6 regions to extract API data from
my @regions = ("br","eune","euw","kr","lan","las","na","oce","ru","tr");
my $num_regions = @regions;
#The two patches
my @patch = ("5.11", "5.14");
#Base URL for the Riot API
my $baseURL = "";
#Set the API Key
my $key = "8cdd8483-d12f-4c16-a623-d603191c3c2f";

sub fix_up()
{
	my $patch;
	my $region;
	my $file;
	my $total=0;
	foreach $patch(@patch)
	{
		foreach $region(@regions)
		{
			opendir(DH, "./$patch/match/$region/");
			my @files = readdir(DH);
			closedir(DH);
			my $i = 0;
			my $data = "";
			foreach $file(@files)
			{
				my $match_id =  substr $file, 0, rindex ($file, q{.});
				my $URL = "https://$region.api.pvp.net/api/lol/$region/v2.2/match/$match_id?api_key=$key";
				if (!-s "./$patch/match/$region/$file")
				{
					if ($file != ".." || $file != ".")
					{
						#insert code to redownload json files here
						$data = get($URL);
						print "Getting data from $region $patch $file.";
						
						#if we didn't retrieve data
						if (!$data)
						{
							#loop as long as emtpy
							while (!$data)
							{
								print " - failed.";
								#retry to get the data
								$data = get($URL);
								sleep 1;
							}
						}
						
						#once $data is full of API information, print success and write to file
						print " - success!\n";
						
						#open json file, and write the match data inside of it
						open(my $fh, '>', "./$patch/match/$region/$file") or die $!;
						{
							print $fh $data;
						}
						close $fh;
						
						#sleep one second to meet API rate limiting 
						sleep 1;
						$i++;	
					}
				}
			}
			$total = $total + $i-2;
		}
	}
	print "Total number of files redownloaded: $total";
}
fix_up();

sub initial_download()
	{
	#Loop twice for the two patches 5.11 and 5.14
	foreach(@patch)
	{
		#loop through every region
		for (my $i = 0; $i < $num_regions; $i++)
		{
			#open the region json file, extract all match id numbers
			my $filename = "./$_/RANKED_SOLO/$regions[$i].json";
		
			#open the json file, and put all match id numbers into array
			my @match_id;
			my $count = 0;
			open (my $fh, "<", $filename) or die $!;
			while (my $line = <$fh>)
			{
				$line =~ tr/, //d;
				chomp($line);
				$match_id[$count] = $line;
				$count++;
			}
			close $fh;
			
			#remove the '[' and ']' from the array
			shift @match_id;
			pop @match_id;
			
			#make call to Riot match API to retrieve JSON file, write to local JSON file
			my $data = "";
			my $size = @match_id;
			my $URL = "";
			$baseURL = "https://$regions[$i].api.pvp.net/api/lol";
		
			for(my $j = 0; $j < $size; $j++){
				#assemble the url for web call
				$URL = "$baseURL/$regions[$i]/v2.2/match/$match_id[$j]?api_key=$key";
				
				#retrieve the data from the riot api
				$data = get($URL);
			
				#create a json file, and write the match data inside of it
				open(my $fh, '>', "./$_/match/$regions[$i]/$match_id[$j].json") or die $!;
				{
					print $fh $data;
				}
				close $fh;
				
				#provide a progress report
				print "Currently downloading item from $_ $regions[$i]: ", $j+1, " of $size.\n";
				
				#stall the program for 1 second to follow the rate limiting count
				sleep 1;
			}
		}
	}
}

