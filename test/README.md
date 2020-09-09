[https://github.com/rakyll/hey](https://github.com/rakyll/hey)

```sh
./hey -n 5000 -c 50 -m POST  \
-H "Content-Type: application/json;charset=utf8" \
-d '{"username":"admin", "password":"dtapi_admin"}' \
https://dtapi-socket-z5m7rjds5q-uc.a.run.app/api/Login/index
```
Summary:
  Total:        42.4123 secs
  Slowest:      12.3232 secs
  Fastest:      0.0407 secs
  Average:      0.1927 secs
  Requests/sec: 117.8904

  Total data:   353012 bytes
  Size/request: 71 bytes

Response time histogram:
  0.041 [1]     |   
  1.269 [4893]  |■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■   
  2.497 [8]     |   
  3.725 [28]    |   
  4.954 [14]    |   
  6.182 [14]    |   
  7.410 [8]     |   
  8.638 [3]     |   
  9.867 [1]     |   
  11.095 [1]    |   
  12.323 [1]    |   


Latency distribution:    
  10% in 0.0623 secs    
  25% in 0.0708 secs    
  50% in 0.0892 secs    
  75% in 0.1278 secs    
  90% in 0.2143 secs    
  95% in 0.3889 secs    
  99% in 3.4387 secs    

Details (average, fastest, slowest):
  DNS+dialup:   0.0032 secs, 0.0407 secs, 12.3232 secs   
  DNS-lookup:   0.0006 secs, 0.0000 secs, 0.0735 secs   
  req write:    0.0003 secs, 0.0000 secs, 0.0570 secs   
  resp wait:    0.1889 secs, 0.0406 secs, 12.3231 secs   
  resp read:    0.0002 secs, 0.0000 secs, 0.0512 secs   

Status code distribution:   
  \[200\] 4972 responses   

Error distribution:   
  \[28\]  Post https://dtapi-socket-z5m7rjds5q-uc.a.run.app/api/Login/index: net/http: request canceled (Client.Timeout exceeded while awaiting headers)   

![MySQL](.test_mysql.png)   
Cloud Run   
!(.test_count.png)   
!(.test_query.png)   
!(.test_memory.png)   

