
# 1 connect
./redis-cli -p 6379
# 2 get pass
config get requirepass

# 3 setting pass
config set requirepass 

# 4 auth
auth 123

# 5 get pass
config get requirepass