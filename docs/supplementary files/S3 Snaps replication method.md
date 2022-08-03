## S3. Inferring police.uk's list of snaps

As mentioned earlier, there are two major versions of the snap list. Version one was in use until 2012, and version two was used afterwards. The creation of both versions uses roughly the same routine:

1. Get a list of urban features (mostly centre of residential roads) from Ordinance survey data. Add in additional locations suggested by the local police forces. These form the initial list of snap points.
2. For each snap point, construct catchments using Voronoi polygons. Apply a privacy filter by omitting snap points with catchments containing fewer than a certain number of addresses. The remaining snap points form the final snaps list.

For version two, we know there were 762,000 potential snaps in use in 2013 by police.uk (see table below from data.police.uk). Before applying the privacy filter in step 2, there were 955,000 potential snap points. So we know that a substantial proportion of changes were due to the privacy filtering routine.


|                                               | final count | count before privacy filters |
|-----------------------------------------------|-------------|------------------------------|
| Street                                        | 679089      | 833913                       |
| Sports/Recreation Area                        | 24510       | 34237                        |
| Parking Area                                  | 17797       | 29591                        |
| Park/Open Space                               | 14051       | 20418                        |
| Supermarket                                   | 5703        | 7518                         |
| Petrol Station                                | 5501        | 7296                         |
| Pedestrian Subway                             | 4570        | 6173                         |
| Shopping Area                                 | 3024        | 4232                         |
| Further/Higher Educational Building           | 1347        | 2095                         |
| Police Station                                | 1083        | 1605                         |
| Hospital                                      | 982         | 1721                         |
| Nightclub                                     | 824         | 1109                         |
| Bus/Coach Station                             | 816         | 1141                         |
| Theatre/Concert Hall                          | 733         | 997                          |
| Conference/Exhibition Centre                  | 524         | 781                          |
| Airport/Airfield                              | 369         | 564                          |
| Added by Police Force                         | 350         | 577                          |
| Ferry Terminal                                | 203         | 320                          |
| Theme/Adventure Park                          | 106         | 370                          |
| Prison                                        | 102         | 171                          |
| Race Track                                    | 100         | 170                          |
| Motorway Service Area                         | 79          | 147                          |
| sum                                           | 761863      | 955146                       |
| Source: https://data.police.uk/about/ (2013)  |             |                              |

__Table 1: Total snap points used by police.uk (source: data.police.uk)__

As mentioned before, given the density of crime in urban regions and a long enough period, all the unique snap points on police.uk will eventually be used. So we can simply infer the master snap list by counting the number of unique locations used by police.uk during a given period. To check for changes to the master snaps, we studied the dates when each snap was first used. We found a large influx of new snaps being used for the December 2011 data (see figure below).

![](assets/markdown-img-paste-20220207130818346.png)

__Figure 1: Histogram of data of the first appearance of each snap point__

This and other evidence from Smith and Heath (2014) allow us to pinpoint when version two first came into use (i.e. for police data from December 2011).
