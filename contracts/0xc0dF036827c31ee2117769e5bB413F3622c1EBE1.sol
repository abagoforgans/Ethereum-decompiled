contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 isAuthorized;
uint256 authorizedCount;
uint8 stor4;
mapping of struct wallet;
array of address stor6;
uint256 sub_59b8a95d;
uint256 sub_a6d7f625;
array of uint8 tx;
uint256 sub_46fbdc29;
mapping of uint256 sub_dbe8bb75;
address coldWalletAddress;
array of address stor79801561192323839421891517548707657925327454759387013391951703700869370312135;
array of uint256 stor79801561192323839421891517548707657925327454759387013391951703700869370312137;
array of uint256 stor79801561192323839421891517548707657925327454759387013391951703700869370312138;
array of uint256 stor79801561192323839421891517548707657925327454759387013391951703700869370312139;
array of struct stor115081963381818617715010802043542254849370653212199372747723936328280401999303;

function getWallet(address arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require arg1
    return wallet[address(arg1)].field_0, 
           wallet[address(arg1)].field_256,
           wallet[address(arg1)].field_512,
           wallet[address(arg1)].field_768,
           bool(wallet[address(arg1)].field_1024),
           bool(wallet[address(arg1)].field_1032)
}

function authorizedCount() {
    return authorizedCount
}

function sub_46fbdc29(?) {
    return sub_46fbdc29
}

function sub_59b8a95d(?) {
    return sub_59b8a95d
}

function paused() {
    return bool(stor4)
}

function coldWallet() {
    return coldWalletAddress
}

function owner() {
    return owner
}

function sub_a158ff8b(?) {
    require calldata.size - 4 >= 32
    require not stor4
    return sub_dbe8bb75[arg1]
}

function sub_a6d7f625(?) {
    return sub_a6d7f625
}

function getTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require arg1 > 0
    require 1 <= arg1
    require arg1 - 1 < tx.length
    require uint8(tx[arg1]) <= 6
    require uint8(tx[arg1]) <= 6
    return address(tx[arg1]), address(tx[arg1]), uint8(tx[arg1]), uint256(tx[arg1]), uint256(tx[arg1]), uint256(tx[arg1])
}

function newOwner() {
    return newOwner
}

function sub_dbe8bb75(?) {
    require calldata.size - 4 >= 32
    return sub_dbe8bb75[arg1]
}

function checkWallet(address arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require arg1
    return bool(wallet[address(arg1)].field_1032)
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 != this.address
    require arg1
    require isAuthorized[address(arg1)] <= 3
    return isAuthorized[address(arg1)]
}

function cancelOwnership() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    newOwner = 0
}

function pause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require not stor4
    stor4 = 1
    emit Paused(msg.sender);
}

function unPause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require stor4
    stor4 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require arg1 != this.address
    require arg1
    require owner != arg1
    newOwner = arg1
}

function sub_1b0b66cc(?) {
    require calldata.size - 4 >= 32
    require stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1 > 0
    sub_dbe8bb75[arg1] = 0
    return 1
}

function sub_17c4de8f(?) {
    require calldata.size - 4 >= 64
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1 > 0
    require arg2 > 0
    sub_dbe8bb75[arg1] = arg2
    return 1
}

function changeColdWallet(address arg1) {
    require calldata.size - 4 >= 32
    require stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require arg1
    coldWalletAddress = arg1
    emit 0xda5afb33: coldWalletAddress, address(arg1), block.timestamp
    return 1
}

function acceptOwnership() {
    require newOwner == msg.sender
    require newOwner
    emit OwnerTransferred(owner, newOwner);
    require isAuthorized[stor0] <= 3
    if isAuthorized[stor0] == 1:
        isAuthorized[stor0] = 0
    require isAuthorized[stor1] <= 3
    if isAuthorized[stor1] > 0:
        require 1 <= authorizedCount
        authorizedCount--
    owner = newOwner
    newOwner = 0
    isAuthorized[stor1] = 1
}

function unAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require isAuthorized[address(arg1)] <= 3
    require isAuthorized[address(arg1)] != 1
    require arg1 != this.address
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if isAuthorized[address(arg1)] > 0:
        require 1 <= authorizedCount
        authorizedCount--
    isAuthorized[address(arg1)] = 0
    emit UnAuthorized(arg1);
}

function sub_cc84cb34(?) {
    require calldata.size - 4 >= 32
    require not stor4
    require arg1 > 0
    require arg1 <= stor6.length
    require 1 <= arg1
    require arg1 - 1 < stor6.length
    return address(stor6[arg1]), 
           wallet[address(stor6[arg1])].field_0,
           wallet[address(stor6[arg1])].field_256,
           wallet[address(stor6[arg1])].field_512,
           wallet[address(stor6[arg1])].field_768,
           bool(wallet[address(stor6[arg1])].field_1024),
           bool(wallet[address(stor6[arg1])].field_1032)
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 1
    require arg1 <= eth.balance(this.address)
    call coldWalletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc169c019: arg1, 0, block.timestamp, coldWalletAddress
    return 0
}

function authorized(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require isAuthorized[address(arg1)] <= 3
    require isAuthorized[address(arg1)] != 1
    require arg1 != this.address
    require arg2 <= 3
    require arg2 > 0
    require arg2 <= 3
    require 3 >= arg2
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if not isAuthorized[address(arg1)]:
        require authorizedCount + 1 >= authorizedCount
        authorizedCount++
    require arg2 <= 3
    isAuthorized[address(arg1)] = arg2
    emit Authorized(arg2, arg1);
}

function sub_f247d217(?) {
    require calldata.size - 4 >= 64
    require not stor4
    if msg.sender != this.address:
        require isAuthorized[msg.sender] <= 3
        require isAuthorized[msg.sender] > 0
        require isAuthorized[msg.sender] <= 3
    wallet[address(arg1)].field_0 = 0
    wallet[address(arg1)].field_256 = 0
    wallet[address(arg1)].field_512 = block.timestamp
    wallet[address(arg1)].field_768 = 0
    wallet[address(arg1)].field_1024 = 1
    wallet[address(arg1)].field_1032 = 1
    wallet[address(arg1)].field_1040 = 0
    stor6.length++
    address(stor6[stor6.length]) = arg1
    sub_59b8a95d++
    if sub_dbe8bb75[arg2] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg2] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xab5df568: stor6.length + 1, block.timestamp, arg1
    return 1
}

function sub_ec14f14a(?) {
    require calldata.size - 4 >= 96
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require arg2 > 0
    require wallet[address(arg1)].field_1032
    require sub_dbe8bb75[arg3] + arg2 >= arg2
    require sub_dbe8bb75[arg3] + arg2 <= wallet[address(arg1)].field_0
    wallet[address(arg1)].field_0 = wallet[address(arg1)].field_0 - sub_dbe8bb75[arg3] - arg2
    require arg2 + wallet[address(arg1)].field_256 >= wallet[address(arg1)].field_256
    wallet[address(arg1)].field_256 += arg2
    wallet[address(arg1)].field_768 = block.timestamp
    tx.length++
    storB06E[stor9.length] = arg1
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_160 = 3
    storB06E[stor9.length] = arg2
    storB06E[stor9.length] = sub_dbe8bb75[arg3]
    storB06E[stor9.length] = block.timestamp
    sub_46fbdc29++
    emit 0xaf0129d0: tx.length + 1, 3, arg2, sub_dbe8bb75[arg3], block.timestamp, arg1, 0
    if sub_dbe8bb75[arg3] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_c4516339(?) {
    require calldata.size - 4 >= 96
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require arg2 > 0
    require wallet[address(arg1)].field_1032
    require arg2 <= wallet[address(arg1)].field_256
    require wallet[address(arg1)].field_0 >= sub_dbe8bb75[arg3]
    require arg2 <= wallet[address(arg1)].field_256
    wallet[address(arg1)].field_256 -= arg2
    require sub_dbe8bb75[arg3] <= wallet[address(arg1)].field_0
    wallet[address(arg1)].field_0 -= sub_dbe8bb75[arg3]
    require arg2 >= 0
    wallet[address(arg1)].field_0 = arg2 + wallet[address(arg1)].field_0 - sub_dbe8bb75[arg3]
    wallet[address(arg1)].field_768 = block.timestamp
    tx.length++
    storB06E[stor9.length] = arg1
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_160 = 4
    storB06E[stor9.length] = arg2
    storB06E[stor9.length] = sub_dbe8bb75[arg3]
    storB06E[stor9.length] = block.timestamp
    sub_46fbdc29++
    emit 0xaf0129d0: tx.length + 1, 4, arg2, sub_dbe8bb75[arg3], block.timestamp, arg1, 0
    if sub_dbe8bb75[arg3] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_4492652d(?) payable {
    require calldata.size - 4 >= 96
    require not stor4
    if msg.sender != this.address:
        require isAuthorized[msg.sender] <= 3
        require isAuthorized[msg.sender] > 0
        require isAuthorized[msg.sender] <= 3
    require arg1
    require arg2 > 0
    require arg2 <= eth.balance(this.address)
    require sub_dbe8bb75[arg3] + arg2 >= arg2
    require sub_dbe8bb75[arg3] + arg2 <= wallet[address(arg1)].field_0
    wallet[address(arg1)].field_0 = wallet[address(arg1)].field_0 - sub_dbe8bb75[arg3] - arg2
    wallet[address(arg1)].field_768 = block.timestamp
    tx.length++
    storB06E[stor9.length] = arg1
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_0 = 0
    storFE6E[stor9.length].field_160 = 2
    storB06E[stor9.length] = arg2
    storB06E[stor9.length] = sub_dbe8bb75[arg3]
    storB06E[stor9.length] = block.timestamp
    sub_46fbdc29++
    emit 0xaf0129d0: tx.length + 1, 2, arg2, sub_dbe8bb75[arg3], block.timestamp, arg1, 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_dbe8bb75[arg3] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xc169c019: arg2, 0, block.timestamp, arg1
    return 1
}

function sub_f0e21463(?) {
    require calldata.size - 4 >= 192
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require arg2
    require arg3 > 0
    require wallet[address(arg1)].field_1032
    require wallet[address(arg1)].field_0 >= sub_dbe8bb75[arg6]
    if not arg4:
        require arg3 <= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 -= arg3
    else:
        require arg3 <= wallet[address(arg1)].field_256
        wallet[address(arg1)].field_256 -= arg3
    if sub_dbe8bb75[arg6] > 0:
        require sub_dbe8bb75[arg6] <= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 -= sub_dbe8bb75[arg6]
    wallet[address(arg1)].field_768 = block.timestamp
    require wallet[address(arg2)].field_1032
    if not arg5:
        require arg3 + wallet[address(arg2)].field_0 >= wallet[address(arg2)].field_0
        wallet[address(arg2)].field_0 += arg3
    else:
        require arg3 + wallet[address(arg2)].field_256 >= wallet[address(arg2)].field_256
        wallet[address(arg2)].field_256 += arg3
    wallet[address(arg2)].field_768 = block.timestamp
    tx.length++
    storB06E[stor9.length] = arg1
    storFE6E[stor9.length].field_0 = arg2
    storFE6E[stor9.length].field_0 = arg2
    storFE6E[stor9.length].field_160 = 5
    storB06E[stor9.length] = arg3
    storB06E[stor9.length] = sub_dbe8bb75[arg6]
    storB06E[stor9.length] = block.timestamp
    sub_46fbdc29++
    emit 0xaf0129d0: tx.length + 1, 5, arg3, sub_dbe8bb75[arg6], block.timestamp, arg1, arg2
    emit 0xf47b703c: arg3, arg4, arg5, block.timestamp, arg1, arg2
    if sub_dbe8bb75[arg6] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg6] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_695185ac(?) {
    require calldata.size - 4 >= 96
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require wallet[address(arg1)].field_1032
    if arg2 > 0:
        require arg2 <= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 -= arg2
        tx.length++
        storB06E[stor9.length] = arg1
        storFE6E[stor9.length].field_0 = coldWalletAddress
        storFE6E[stor9.length].field_0 = coldWalletAddress
        storFE6E[stor9.length].field_160 = 6
        storB06E[stor9.length] = 0
        storB06E[stor9.length] = arg2
        storB06E[stor9.length] = block.timestamp
        sub_46fbdc29++
        emit 0xaf0129d0: tx.length + 1, 6, 0, arg2, block.timestamp, arg1, coldWalletAddress
        call coldWalletAddress with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_dbe8bb75[arg3] > 0:
        require wallet[address(arg1)].field_0 >= sub_dbe8bb75[arg3]
        require sub_dbe8bb75[arg3] <= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 -= sub_dbe8bb75[arg3]
        tx.length++
        storB06E[stor9.length] = arg1
        storFE6E[stor9.length].field_0 = coldWalletAddress
        storFE6E[stor9.length].field_0 = coldWalletAddress
        storFE6E[stor9.length].field_160 = 6
        storB06E[stor9.length] = 0
        storB06E[stor9.length] = sub_dbe8bb75[arg3]
        storB06E[stor9.length] = block.timestamp
        sub_46fbdc29++
        emit 0xaf0129d0: tx.length + 1, 6, 0, sub_dbe8bb75[arg3], block.timestamp, arg1, coldWalletAddress
        call coldWalletAddress with:
           value sub_dbe8bb75[arg3] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    wallet[address(arg1)].field_768 = block.timestamp
    return 1
}

function sub_53c82dd4(?) {
    require calldata.size - 4 >= 64
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require not stor4
    require arg1
    require 0 < wallet[address(arg1)].field_256
    wallet[address(arg1)].field_256 = 0
    if 0 >= sub_dbe8bb75[arg2]:
        require wallet[address(arg1)].field_256 + wallet[address(arg1)].field_0 >= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 += wallet[address(arg1)].field_256
        wallet[address(arg1)].field_768 = block.timestamp
        wallet[address(arg1)].field_1024 = 1
        wallet[address(arg1)].field_1032 = 1
        wallet[address(arg1)].field_1032 = 0
        tx.length++
        storB06E[stor9.length] = arg1
        storFE6E[stor9.length].field_0 = 0
        storFE6E[stor9.length].field_0 = 0
        storFE6E[stor9.length].field_160 = 4
        storB06E[stor9.length] = wallet[address(arg1)].field_256
        storB06E[stor9.length] = sub_dbe8bb75[arg2]
        storB06E[stor9.length] = block.timestamp
        sub_46fbdc29++
        emit 0xaf0129d0: tx.length + 1, 4, wallet[address(arg1)].field_256, sub_dbe8bb75[arg2], block.timestamp, arg1, 0
    else:
        require sub_dbe8bb75[arg2] <= wallet[address(arg1)].field_256
        require wallet[address(arg1)].field_256 - sub_dbe8bb75[arg2] + wallet[address(arg1)].field_0 >= wallet[address(arg1)].field_0
        wallet[address(arg1)].field_0 = wallet[address(arg1)].field_256 - sub_dbe8bb75[arg2] + wallet[address(arg1)].field_0
        wallet[address(arg1)].field_768 = block.timestamp
        wallet[address(arg1)].field_1024 = 1
        wallet[address(arg1)].field_1032 = 1
        wallet[address(arg1)].field_1032 = 0
        tx.length++
        storB06E[stor9.length] = arg1
        storFE6E[stor9.length].field_0 = 0
        storFE6E[stor9.length].field_0 = 0
        storFE6E[stor9.length].field_160 = 4
        storB06E[stor9.length] = wallet[address(arg1)].field_256 - sub_dbe8bb75[arg2]
        storB06E[stor9.length] = sub_dbe8bb75[arg2]
        storB06E[stor9.length] = block.timestamp
        sub_46fbdc29++
        emit 0xaf0129d0: tx.length + 1, 4, wallet[address(arg1)].field_256 - sub_dbe8bb75[arg2], sub_dbe8bb75[arg2], block.timestamp, arg1, 0
    if sub_dbe8bb75[arg2] > 0:
        call coldWalletAddress with:
           value sub_dbe8bb75[arg2] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xb609aa16: block.timestamp, arg1
    return 1
}

function _fallback() payable {
    require not stor4
    if msg.sender == owner:
        if msg.value > 0:
            emit 0xfa430e49: msg.value, 0, block.timestamp, msg.sender
    else:
        if msg.value > 0:
            if msg.value < sub_dbe8bb75[1]:
                emit Donate(msg.value, block.timestamp, msg.sender);
            else:
                if msg.value > 0:
                    if msg.value >= sub_dbe8bb75[1]:
                        if not wallet[msg.sender].field_1032:
                            wallet[msg.sender].field_0 = 0
                            wallet[msg.sender].field_256 = msg.value
                            wallet[msg.sender].field_512 = block.timestamp
                            wallet[msg.sender].field_768 = 0
                            wallet[msg.sender].field_1024 = 0
                            wallet[msg.sender].field_1032 = 0
                            wallet[msg.sender].field_1040 = 0
                            stor6.length++
                            uint256(stor6[stor6.length]) = msg.sender or Mask(96, 160, uint256(stor6[stor6.length]))
                            sub_59b8a95d++
                            require msg.value + sub_a6d7f625 >= sub_a6d7f625
                            sub_a6d7f625 += msg.value
                            emit 0xfa430e49: msg.value, 1, block.timestamp, msg.sender
                            emit 0xab5df568: stor6.length + 1, block.timestamp, msg.sender
                        else:
                            if wallet[msg.sender].field_1024:
                                require msg.value + wallet[msg.sender].field_0 >= wallet[msg.sender].field_0
                                wallet[msg.sender].field_0 += msg.value
                                wallet[msg.sender].field_768 = block.timestamp
                                require msg.value + sub_a6d7f625 >= sub_a6d7f625
                                sub_a6d7f625 += msg.value
                                emit 0xfa430e49: msg.value, 0, block.timestamp, msg.sender
                            else:
                                wallet[msg.sender].field_0 = 0
                                wallet[msg.sender].field_256 = msg.value
                                wallet[msg.sender].field_512 = block.timestamp
                                wallet[msg.sender].field_768 = 0
                                wallet[msg.sender].field_1024 = 0
                                wallet[msg.sender].field_1032 = 0
                                wallet[msg.sender].field_1040 = 0
                                stor6.length++
                                uint256(stor6[stor6.length]) = msg.sender or Mask(96, 160, uint256(stor6[stor6.length]))
                                sub_59b8a95d++
                                require msg.value + sub_a6d7f625 >= sub_a6d7f625
                                sub_a6d7f625 += msg.value
                                emit 0xfa430e49: msg.value, 1, block.timestamp, msg.sender
                                emit 0xab5df568: stor6.length + 1, block.timestamp, msg.sender
}

function sub_b8cf2605(?) {
    require calldata.size - 4 >= 96
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require not stor4
    require arg1
    wallet[address(arg1)].field_1024 = 0
    wallet[address(arg1)].field_768 = block.timestamp
    if arg2:
        if wallet[address(arg1)].field_256 > 0:
            require not stor4
            require isAuthorized[msg.sender] <= 3
            require isAuthorized[msg.sender] > 0
            require isAuthorized[msg.sender] <= 3
            require arg1
            require wallet[address(arg1)].field_256 > 0
            require wallet[address(arg1)].field_1032
            require wallet[address(arg1)].field_256 <= wallet[address(arg1)].field_256
            require wallet[address(arg1)].field_0 >= sub_dbe8bb75[0]
            require wallet[address(arg1)].field_256 <= wallet[address(arg1)].field_256
            wallet[address(arg1)].field_256 = 0
            require sub_dbe8bb75[0] <= wallet[address(arg1)].field_0
            wallet[address(arg1)].field_0 -= sub_dbe8bb75[0]
            require wallet[address(arg1)].field_256 >= 0
            wallet[address(arg1)].field_0 = wallet[address(arg1)].field_256 + wallet[address(arg1)].field_0 - sub_dbe8bb75[0]
            wallet[address(arg1)].field_768 = block.timestamp
            tx.length++
            storB06E[stor9.length] = arg1
            storFE6E[stor9.length].field_0 = 0
            storFE6E[stor9.length].field_0 = 0
            storFE6E[stor9.length].field_160 = 4
            storB06E[stor9.length] = wallet[address(arg1)].field_256
            storB06E[stor9.length] = sub_dbe8bb75[0]
            storB06E[stor9.length] = block.timestamp
            sub_46fbdc29++
            emit 0xaf0129d0: tx.length + 1, 4, wallet[address(arg1)].field_256, sub_dbe8bb75[0], block.timestamp, arg1, 0
            if sub_dbe8bb75[0] > 0:
                call coldWalletAddress with:
                   value sub_dbe8bb75[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if 0 < wallet[address(arg1)].field_0:
            if sub_dbe8bb75[arg3] > 0:
                require sub_dbe8bb75[arg3] <= wallet[address(arg1)].field_0
                wallet[address(arg1)].field_0 -= sub_dbe8bb75[arg3]
            require not stor4
            if msg.sender != this.address:
                require isAuthorized[msg.sender] <= 3
                require isAuthorized[msg.sender] > 0
                require isAuthorized[msg.sender] <= 3
            require arg1
            require wallet[address(arg1)].field_0 > 0
            require wallet[address(arg1)].field_0 <= eth.balance(this.address)
            require sub_dbe8bb75[arg3] + wallet[address(arg1)].field_0 >= wallet[address(arg1)].field_0
            require sub_dbe8bb75[arg3] + wallet[address(arg1)].field_0 <= wallet[address(arg1)].field_0
            wallet[address(arg1)].field_0 = -sub_dbe8bb75[arg3]
            wallet[address(arg1)].field_768 = block.timestamp
            tx.length++
            storB06E[stor9.length] = arg1
            storFE6E[stor9.length].field_0 = 0
            storFE6E[stor9.length].field_0 = 0
            storFE6E[stor9.length].field_160 = 2
            storB06E[stor9.length] = wallet[address(arg1)].field_0
            storB06E[stor9.length] = sub_dbe8bb75[arg3]
            storB06E[stor9.length] = block.timestamp
            sub_46fbdc29++
            emit 0xaf0129d0: tx.length + 1, 2, wallet[address(arg1)].field_0, sub_dbe8bb75[arg3], block.timestamp, arg1, 0
            call arg1 with:
               value wallet[address(arg1)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_dbe8bb75[arg3] > 0:
                call coldWalletAddress with:
                   value sub_dbe8bb75[arg3] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit 0xc169c019: wallet[address(arg1)].field_0, 0, block.timestamp, arg1
    emit 0x1e57b7fc: block.timestamp, arg1
    return 1
}



}
