const articlesListJsonString = r'''
[
  {
    "id": 15875,
    "title": "SpaceX and Mattel partner to create rocket ship toys to encourage tapping into your inner space explorer",
    "url": "https://www.teslarati.com/spacex-and-mattel-create-rocket-ship-toys/",
    "imageUrl": "https://www.teslarati.com/wp-content/uploads/2022/07/spacex-Ptd-iTdrCJM-unsplash.jpeg",
    "newsSite": "Teslarati",
    "summary": "SpaceX and Mattel are partnering to create new rocket ship toys for children. Fast Company noted that the announcement came on the...",
    "publishedAt": "2022-07-22T22:20:59.000Z",
    "updatedAt": "2022-07-22T22:21:13.409Z",
    "featured": false,
    "launches": []
  },
  {
    "id": 15874,
    "title": "UK launches consultation on Virgin Orbit launch",
    "url": "https://spacenews.com/uk-launches-consultation-on-virgin-orbit-launch/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/05/above-the-clouds3.jpg",
    "newsSite": "SpaceNews",
    "summary": "The U.K. announced a public consultation July 22 to assess the environmental impact of the country’s first space launch, as part of the licensing process for clearing Virgin Orbit’s mission this year.",
    "publishedAt": "2022-07-22T21:10:14.000Z",
    "updatedAt": "2022-07-23T04:31:06.876Z",
    "featured": false,
    "launches": [
      {
        "id": "b0fbc1b8-f822-4345-95af-85782e2669d3",
        "provider": "Launch Library 2"
      }
    ]
  },
  {
    "id": 15873,
    "title": "SCOUT wins defense contract to demonstrate utility of commercial data from sensors in space",
    "url": "https://spacenews.com/scout-wins-defense-contract-to-demonstrate-utility-of-commercial-data-from-sensors-in-space/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/07/SCOUT-Inc.-Image-1.jpg",
    "newsSite": "SpaceNews",
    "summary": "Startup SCOUT Space won a Phase 2 Small Business Innovation Research contract from the U.S. Space Force to augment military systems with commercial data from space-based sensors",
    "publishedAt": "2022-07-22T19:50:22.000Z",
    "updatedAt": "2022-07-22T19:50:22.231Z",
    "featured": false,
    "launches": []
  },
  {
    "id": 15852,
    "title": "SpaceX breaks 2021 record with 32nd launch of the year",
    "url": "https://www.nasaspaceflight.com/2022/07/starlink-3-2/",
    "imageUrl": "https://www.nasaspaceflight.com/wp-content/uploads/2022/07/SARah-1_Pauline-1170x836.jpg",
    "newsSite": "NASA Spaceflight",
    "summary": "SpaceX broke several records on the Starlink Group 3-2 mission. Launching from Space Launch Complex 4 East (SLC-4E) at the Vandenberg Space Force Base in California, the Falcon 9 Block 5 placed 46 Starlink internet communication satellites into the third shell of the constellation.",
    "publishedAt": "2022-07-22T14:33:54.000Z",
    "updatedAt": "2022-07-22T18:10:49.961Z",
    "featured": false,
    "launches": [
      {
        "id": "b3d0dafc-9b12-4c35-8ceb-3fa21802236f",
        "provider": "Launch Library 2"
      }
    ]
  },
  {
    "id": 15870,
    "title": "Rocket Report: A heavy-lift rocket funded by crypto; Falcon 9 damaged in transport",
    "url": "https://arstechnica.com/science/2022/07/rocket-report-a-heavy-lift-rocket-funded-by-crypto-falcon-9-damaged-in-transport/",
    "imageUrl": "https://cdn.arstechnica.net/wp-content/uploads/2022/07/F28-BW-Low2.jpg",
    "newsSite": "Arstechnica",
    "summary": "\"EcoRocket Heavy is an ecological, reusable, unprecedentedly low-cost rocket.\"",
    "publishedAt": "2022-07-22T11:00:53.000Z",
    "updatedAt": "2022-07-22T15:18:49.744Z",
    "featured": false,
    "launches": [
      {
        "id": "f33d5ece-e825-4cd8-809f-1d4c72a2e0d3",
        "provider": "Launch Library 2"
      }
    ]
  },
  {
    "id": 15869,
    "title": "NASA safety advisers warn ISS transition plans on “precarious trajectory”",
    "url": "https://spacenews.com/nasa-safety-advisers-warn-iss-transition-plans-on-precarious-trajectory/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2021/10/orbitalreef.jpg",
    "newsSite": "SpaceNews",
    "summary": "NASA’s safety advisers warn that the agency’s efforts to transition from the International Space Station to commercial space stations without a gap are on a “precarious trajectory.”",
    "publishedAt": "2022-07-22T10:00:15.000Z",
    "updatedAt": "2022-07-22T10:00:15.969Z",
    "featured": false,
    "launches": []
  },
  {
    "id": 15868,
    "title": "Mapping the Sky: Finding asteroids requires a combination of tools",
    "url": "https://spacenews.com/mapping-the-sky-finding-asteroids-requires-a-combination-of-tools/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/07/earth-moon-sun-solar-system-asteroids-3446x5000-950.jpg",
    "newsSite": "SpaceNews",
    "summary": "Finding asteroids that threaten the Earth requires a combination of tools, not to mention money. Are we spending enough to avert disaster?",
    "publishedAt": "2022-07-22T09:10:12.000Z",
    "updatedAt": "2022-07-22T09:10:12.362Z",
    "featured": false,
    "launches": []
  },
  {
    "id": 15853,
    "title": "Russian cosmonaut, European astronaut complete joint spacewalk",
    "url": "https://spaceflightnow.com/2022/07/21/russian-esa-iss-eva/",
    "imageUrl": "https://spaceflightnow.com/wp-content/uploads/2022/07/20220721evacrew.jpg",
    "newsSite": "Spaceflight Now",
    "summary": "Russian cosmonaut Oleg Artemyev and European astronaut Samantha Cristoforetti headed outside the International Space Station on a rare joint spacewalk Thursday. They continued outfitting a European robotic arm and deployed 10 nanosatellites for radio technology experiments.",
    "publishedAt": "2022-07-21T22:30:00.000Z",
    "updatedAt": "2022-07-21T22:30:00.613Z",
    "featured": false,
    "launches": [],
    "events": [
      {
        "id": 342,
        "provider": "Launch Library 2"
      }
    ]
  },
  {
    "id": 15864,
    "title": "SpaceX calls rare last-minute abort during California launch countdown",
    "url": "https://spaceflightnow.com/2022/07/21/spacex-calls-rare-last-minute-abort-during-california-launch-countdown/",
    "imageUrl": "https://spaceflightnow.com/wp-content/uploads/2022/07/20220722spacexscrub.jpg",
    "newsSite": "Spaceflight Now",
    "summary": "SpaceX called off a Falcon 9 launch attempt Thursday less than a minute before liftoff from Vandenberg Space Force Base in California, the company’s first terminal countdown abort in more than 18 months for reasons other than bad weather or range safety.",
    "publishedAt": "2022-07-21T22:20:02.000Z",
    "updatedAt": "2022-07-22T06:16:14.216Z",
    "featured": false,
    "launches": [
      {
        "id": "b3d0dafc-9b12-4c35-8ceb-3fa21802236f",
        "provider": "Launch Library 2"
      }
    ]
  },
  {
    "id": 15863,
    "title": "Crew Dragon mission delayed after booster damaged in transport",
    "url": "https://spacenews.com/crew-dragon-mission-delayed-after-booster-damaged-in-transport/",
    "imageUrl": "https://spacenews.com/wp-content/uploads/2022/04/crew4-launch.jpg",
    "newsSite": "SpaceNews",
    "summary": "NASA is delaying the next commercial crew mission to the International Space Station by nearly a month after the Falcon 9 booster that will launch it was damaged during transport across the country for testing.",
    "publishedAt": "2022-07-21T22:00:21.000Z",
    "updatedAt": "2022-07-22T06:16:19.987Z",
    "featured": false,
    "launches": [
      {
        "id": "f33d5ece-e825-4cd8-809f-1d4c72a2e0d3",
        "provider": "Launch Library 2"
      }
    ]
  }
]
''';
