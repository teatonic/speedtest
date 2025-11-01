# Install (ubuntu)
```
snap install fast
```

# Install (other)
```
curl -L https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -o fast

# or wget
wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_amd64 -O fast

# then chmod
chmod +x fast

# Run fast
./fast
```

# Use speedtest
```
nohup ./speedtest.sh <nb sec | nb_min m> &
```
examples : 
```
nohup ./speedtest.sh 30 & # starts a speed test every 30 seconds
nohup ./speedtest.sh 5m & # starts a speed test every 5 minutes
```
