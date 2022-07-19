# கட்டச்சங்கிலி வெள்ளோட்டம்
கட்டச்சங்கிலி கருத்துருவை இணைய வழியில் விளக்கும் வெள்ளோட்டம். 

எளிதில் புரிந்துகொள்ளக் கூடிய வகையில், காட்சி வடிவில் கட்டச்சங்கிலி கருத்துருவை விளக்குகிறது. 
இந்த வெள்ளோட்டத்தில் மறுக்க இயலாத பேரேடு கருத்துருவும் அறிமுகம் செய்யப்படுகிறது. 

இதன் ஆங்கில வடிவம், https://andersbrownworth.com/blockchain/ என்ற முகவரியில் கிடைக்கிறது.

## அமைவு வழிகாட்டி
வெள்ளோட்டத்தின் மூலக்கூற்றை பதிவிறக்கம் செய்யவும்:

```
git clone https://github.com/cybervattam/tamil-blockchain-demo.git
```

சார்புகளை நிறுவவும்:

```
cd tamil-blockchain-demo
npm install
```
சேவையை துவக்கவும்:

```
npm start
```

OR

```
./bin/www
```
#விண்டோஸ்க்கு: மேற்கூறிய கட்டளை வேலை செய்யாவிடில், இந்த கட்டளையை இயக்கவும் (இதற்கு முன்னர், உங்கள் கணினியில் Node.js நிறுவப்பட்டுள்ளதா என்பதை உறுதி செய்யவும் ):
```
node ./bin/www      
```

வெள்ளோட்டத்தைக் காண, உங்கள் உலாவியில் கிழ்காணும் முகவரிக்கு செல்லவும்:

```
http://localhost:3000
```

## Docker அமைவு வழிகாட்டி

வெள்ளோட்டத்தின் மூலக்கூற்றை பதிவிறக்கம் செய்யவும்:

```
git clone https://github.com/cybervattam/tamil-blockchain-demo.git
```

Docker அமைவு வழிகாட்டியை இயக்கவும்:

```
cd tamil-blockchain-demo
docker-compose up -d
```

வெள்ளோட்டத்தைக் காண, உங்கள் உலாவியில் கிழ்காணும் முகவரிக்கு செல்லவும்:

```
http://localhost:3000
```

## விருப்ப உள்ளமைவு
You can adjust the "number of zeros" required by the demo by editing the first two lines of
`public/javascripts/blockchain.js`.

Because there are 16 possible characters in a hex value, each time you increment the difficulty
by one you make the puzzle 16 times harder. In my testing, a difficulty of 6 requires a
maximumNonce well over 500,000,000.

If you adjust the difficulty above 4, blocks will show up as not mined because the demo data
assumes 4 zeros for a signed block. For example, on the `http://localhost:3000/block` page
with a difficulty of 6, the first nonce that works is `8719932` yielding a hash of
`000000669445c22167511857d8f3b822b331c3342f25dfdcb326e35c1a7aa267`. This gets out of hand fairly
quickly though. Here's some time estimates at the various thresholds.

|digits|nonce|time estimate|
|------|-------|-------------|
|4|500,000|15 minutes
|5|8,000,000|4 hours
|6|128,000,000|3 days
|7|2,048,000,000|a month
|8|32,768,000,000|2 years
|9|524,288,000,000|30 years
|10|8,388,608,000,000|481 years
|11|134,217,728,000,000|7,690 years
|12|2,147,483,648,000,000|123,036 years
|13|34,359,738,368,000,000|1,968,581 years
|14|549,755,813,888,000,000|31,497,291 years
|15|8,796,093,022,208,000,000|503,956,662 years

In the production bitcoin blockchain, block `458,091` has the hash digest
`00000000000000000000011246f099d94f91628d71c9d75ad2f9a06e2beb7e92`. That's 21 zeros in a row!
That one block would take this software approximately 8,454,989,768,407,765 years to mine.

### பொதுத்திறவி தனித்திறவி வெள்ளோட்டம்

* https://github.com/vjambulingam/tamil-public-private-key-demo
