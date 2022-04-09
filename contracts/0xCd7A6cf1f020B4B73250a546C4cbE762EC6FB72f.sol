contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 1
    require not msg.value
    stor0 = code.data[4906 len 20]
    return code.data[77 len 4817]
}



// =====================  Runtime code  =====================


const name = 'Leeroy'


address pointsAddress;
uint256 stor1;
mapping of struct userBlockNumber;
mapping of uint256 addresses;
mapping of struct posts;

function posts(uint256 arg1) {
    require arg1 < posts.length
    return posts[arg1].field_0, 
           posts[arg1].field_256,
           posts[arg1].field_512,
           posts[arg1].field_768,
           posts[arg1].field_1024,
           posts[arg1].field_1792,
           posts[arg1].field_2048
}

function points() {
    return pointsAddress
}

function getUserBlockNumber(bytes32 arg1) {
    return userBlockNumber[arg1].field_1024
}

function addresses(address arg1) {
    return addresses[arg1]
}

function usernames(bytes32 arg1) {
    return userBlockNumber[arg1].field_0, 
           userBlockNumber[arg1].field_256,
           userBlockNumber[arg1].field_512,
           userBlockNumber[arg1].field_768,
           userBlockNumber[arg1].field_1024
}

function _fallback() payable {
    revert 
}

function updateUserDetails(bytes32 arg1) {
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    userBlockNumber[stor3[address(msg.sender)]].field_512 = arg1
}

function unfollow(bytes32 arg1) {
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    require userBlockNumber[arg1].field_256
    require userBlockNumber[stor3[address(msg.sender)]].field_0 != userBlockNumber[arg1].field_0
    require userBlockNumber[stor3[address(msg.sender)]][5][userBlockNumber[arg1].field_0].field_0
    userBlockNumber[stor3[address(msg.sender)]][5][userBlockNumber[arg1].field_0].field_0 = 0
    emit Follow(0, userBlockNumber[stor3[address(msg.sender)]].field_0, userBlockNumber[arg1].field_0);
}

function follow(bytes32 arg1) {
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    require userBlockNumber[arg1].field_256
    require userBlockNumber[stor3[address(msg.sender)]].field_0 != userBlockNumber[arg1].field_0
    require bool(userBlockNumber[stor3[address(msg.sender)]][5][userBlockNumber[arg1].field_0].field_0) != 1
    userBlockNumber[stor3[address(msg.sender)]][5][userBlockNumber[arg1].field_0].field_0 = 1
    emit Follow(1, userBlockNumber[stor3[address(msg.sender)]].field_0, userBlockNumber[arg1].field_0);
}

function post(bytes32 arg1) {
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    posts.length++
    posts[posts.length].field_0 = userBlockNumber[stor3[address(msg.sender)]].field_0
    posts[posts.length].field_256 = arg1
    posts[posts.length].field_512 = block.timestamp
    posts[posts.length].field_768 = block.number
    posts[posts.length].field_1024 = posts.length + 1
    posts[posts.length].field_1792 = 0
    posts[posts.length].field_2048 = 0
    emit NewPost((posts.length + 1), userBlockNumber[stor3[address(msg.sender)]].field_0);
    require ext_code.size(pointsAddress)
    call pointsAddress.create(uint256 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args stor1, userBlockNumber[stor3[address(msg.sender)]].field_256
    require ext_call.success
}

function registerUsername(bytes32 arg1) {
    require not userBlockNumber[arg1].field_256
    require not userBlockNumber[stor3[address(msg.sender)]].field_256
    s = 0
    idx = 0
    while idx < 32:
        if Mask(8, 248, arg1 * 2^(8 * idx)) < 'A':
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            continue 
        require Mask(8, 248, arg1 * 2^(8 * idx)) > 'Z'
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        continue 
    userBlockNumber[arg1].field_0 = arg1
    userBlockNumber[arg1].field_256 = msg.sender
    userBlockNumber[arg1].field_512 = 0
    userBlockNumber[arg1].field_768 = block.timestamp
    userBlockNumber[arg1].field_1024 = block.number
    addresses[address(msg.sender)] = arg1
    emit NewUser(arg1);
    require ext_code.size(pointsAddress)
    call pointsAddress.create(uint256 rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args stor1, msg.sender
    require ext_call.success
}

function like(uint256 arg1) {
    require arg1 - 1 < posts.length
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    require posts[arg1].field_0
    require bool(stor[(9 * arg1) + ('name', 'posts', 4) - 4][stor2[stor3[address(msg.sender)]].field_0].field_0) != 1
    stor[(9 * arg1) + ('name', 'posts', 4) - 4][stor2[stor3[address(msg.sender)]].field_0].field_0 = 1
    emit Like(userBlockNumber[stor3[address(msg.sender)]].field_0, posts[arg1].field_0, posts[arg1].field_0);
    emit ChangeFeed(posts[arg1].field_0, posts[arg1].field_0);
    if userBlockNumber[stor3[address(msg.sender)]].field_0 != posts[arg1].field_0:
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor4[arg1].field_0].field_256
        require ext_call.success
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor3[address(msg.sender)]].field_256
        require ext_call.success
}

function reply(bytes32 arg1, uint256 arg2) {
    require arg2 - 1 < posts.length
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    require posts[arg2].field_0
    posts.length++
    posts[posts.length].field_0 = userBlockNumber[stor3[address(msg.sender)]].field_0
    posts[posts.length].field_256 = arg1
    posts[posts.length].field_512 = block.timestamp
    posts[posts.length].field_768 = block.number
    posts[posts.length].field_1024 = posts.length + 1
    posts[posts.length].field_1792 = 0
    posts[posts.length].field_2048 = posts[arg2].field_0
    emit Reply(userBlockNumber[stor3[address(msg.sender)]].field_0, posts[arg2].field_0, posts[arg2].field_0);
    emit ChangeFeed(posts[arg2].field_0, posts[arg2].field_0);
    emit NewPost((posts.length + 1), userBlockNumber[stor3[address(msg.sender)]].field_0);
    if userBlockNumber[stor3[address(msg.sender)]].field_0 != posts[arg2].field_0:
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor4[arg2].field_0].field_256
        require ext_call.success
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor3[address(msg.sender)]].field_256
        require ext_call.success
}

function repost(uint256 arg1) {
    require arg1 - 1 < posts.length
    require userBlockNumber[stor3[address(msg.sender)]].field_256
    require posts[arg1].field_0
    require bool(stor[(9 * arg1) + ('name', 'posts', 4) - 3][stor2[stor3[address(msg.sender)]].field_0].field_0) != 1
    stor[(9 * arg1) + ('name', 'posts', 4) - 3][stor2[stor3[address(msg.sender)]].field_0].field_0 = 1
    posts.length++
    if not posts.length <= posts.length + 1:
        idx = (9 * posts.length) + 9
        while 9 * posts.length > idx:
            posts[idx].field_0 = 0
            posts[idx].field_256 = 0
            posts[idx].field_512 = 0
            posts[idx].field_768 = 0
            posts[idx].field_1024 = 0
            posts[idx].field_1792 = 0
            posts[idx].field_2048 = 0
            idx = idx + 9
            continue 
    posts[posts.length].field_0 = userBlockNumber[stor3[address(msg.sender)]].field_0
    posts[posts.length].field_256 = 0
    posts[posts.length].field_512 = block.timestamp
    posts[posts.length].field_768 = block.number
    posts[posts.length].field_1024 = posts.length + 1
    posts[posts.length].field_1792 = posts[arg1].field_0
    posts[posts.length].field_2048 = 0
    emit Repost(userBlockNumber[stor3[address(msg.sender)]].field_0, posts[arg1].field_0, posts[arg1].field_0);
    emit ChangeFeed(posts[arg1].field_0, posts[arg1].field_0);
    emit NewPost((posts.length + 1), userBlockNumber[stor3[address(msg.sender)]].field_0);
    if userBlockNumber[stor3[address(msg.sender)]].field_0 != posts[arg1].field_0:
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor4[arg1].field_0].field_256
        require ext_call.success
        require ext_code.size(pointsAddress)
        call pointsAddress.create(uint256 rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args stor1, userBlockNumber[stor3[address(msg.sender)]].field_256
        require ext_call.success
}



}
