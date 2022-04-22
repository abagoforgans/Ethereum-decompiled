contract main {


// =======================  Init code  ======================


uint128 stor4; offset 168
uint128 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
    Mask(96, 0, stor4.field_160) = 0
    Mask(88, 0, stor4.field_168) = 0
    stor5 = 420168 * 24 * 3600
    stor8 = 420432 * 24 * 3600
    stor9 = 420912 * 24 * 3600
    stor10 = 0x4fff34f3addcfc8e159626baf5eff4375e32442
    require not msg.value
    address(stor4.field_0) = msg.sender
    return code.data[258 len 10879]
}



// =====================  Runtime code  =====================


const name = 'Cube Intelligence Coin'

const decimals = 0

const symbol = 'CUBE'

const INITIAL_SUPPLY = (20000 * 3600)

const MARKET_CAP = 120 * 10^6


uint256 totalSupply;
mapping of uint256 balanceOf;
array of struct stor2;
mapping of uint256 allowance;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address owner;
uint256 preIcoEndDate;
mapping of uint8 stor6;
uint256 sub_a0819282;
uint256 sub_00317c8e;
uint256 sub_d65c1ddb;
address companyAddress;

function sub_00317c8e(?) {
    return sub_00317c8e
}

function mintingFinished() {
    return bool(uint8(stor4.field_160))
}

function totalSupply() {
    return totalSupply
}

function preIcoEndDate() {
    return preIcoEndDate
}

function companyAddress() {
    return companyAddress
}

function paused() {
    return bool(uint8(stor4.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_a0819282(?) {
    return sub_a0819282
}

function sub_c7a8bbe7(?) {
    return bool(stor6[arg1])
}

function sub_d65c1ddb(?) {
    return sub_d65c1ddb
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isPreIcoDate() {
    return block.timestamp <= preIcoEndDate
}

function sub_de458d90(?) {
    require msg.sender == owner
    require arg1 > 0
    sub_d65c1ddb = arg1
}

function sub_f61b8fb0(?) {
    require msg.sender == owner
    require arg1 > 0
    sub_00317c8e = arg1
}

function setCompanyAddress(address arg1) {
    require msg.sender == owner
    require arg1
    companyAddress = arg1
}

function changePreIcoEndDate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    preIcoEndDate = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor4.field_168)
    Mask(88, 0, stor4.field_168) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor4.field_168)
    Mask(88, 0, stor4.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function whitelistAddress(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_3537c258(?) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require not arg2 % 10^18
    require arg2 / 10^18 > 0
    require arg2 / 10^18 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2 / 10^18
    require arg2 / 10^18 <= totalSupply
    totalSupply -= arg2 / 10^18
    emit Transfer((arg2 / 10^18), arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= preIcoEndDate
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(arg1)]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[stor2.length].field_0 = arg1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function superMint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    if not balanceOf[address(arg1)]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[stor2.length].field_0 = arg1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not balanceOf[address(arg2)]:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor2[stor2.length].field_0 = arg2
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_17e56697(?) {
    if owner != msg.sender:
        require bool(stor6[address(msg.sender)]) == 1
    if not stor2.length:
        mem[(32 * stor2.length) + 160] = 32
        mem[(32 * stor2.length) + 192] = stor2.length
        mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 160
           len (96 * stor2.length) + 64
    mem[160] = address(stor2.field_0)
    idx = 160
    s = 0
    while (32 * stor2.length) + 128 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 224 len floor32(stor2.length)] = mem[160 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[160 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 224 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function sub_dc150dcd(?) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    if 20000 * 3600 <= sub_a0819282:
        require 120 * 10^6 >= totalSupply
        totalSupply = 120 * 10^6
        if not balanceOf[stor10]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor2[stor2.length].field_0 = companyAddress
        require balanceOf[stor10] + -totalSupply + 120 * 10^6 >= balanceOf[stor10]
        balanceOf[stor10] = balanceOf[stor10] + -totalSupply + 120 * 10^6
        emit Mint((-totalSupply + 120 * 10^6), companyAddress);
        emit Transfer((-totalSupply + 120 * 10^6), 0, companyAddress);
    else:
        require totalSupply + 48 * 10^6 >= totalSupply
        totalSupply += 48 * 10^6
        if not balanceOf[stor10]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor2[stor2.length].field_0 = companyAddress
        require balanceOf[stor10] + 48 * 10^6 >= balanceOf[stor10]
        balanceOf[stor10] += 48 * 10^6
        emit Mint(48 * 10^6, companyAddress);
        emit Transfer(48 * 10^6, 0, companyAddress);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require not arg2 % 10^18
    require arg2 / 10^18 > 0
    require sub_a0819282 + (arg2 / 10^18) >= sub_a0819282
    require sub_a0819282 + (arg2 / 10^18) <= 20000 * 3600
    require sub_a0819282 + (arg2 / 10^18) >= sub_a0819282
    sub_a0819282 += arg2 / 10^18
    if block.timestamp > preIcoEndDate:
        if block.timestamp >= sub_00317c8e:
            if block.timestamp >= sub_d65c1ddb:
                require totalSupply + (arg2 / 10^18) >= totalSupply
                totalSupply += arg2 / 10^18
                if not balanceOf[address(arg1)]:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor2[stor2.length].field_0 = arg1
                require balanceOf[address(arg1)] + (arg2 / 10^18) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2 / 10^18
                emit Mint((arg2 / 10^18), arg1);
                emit Transfer((arg2 / 10^18), 0, arg1);
            else:
                if arg2 / 10^18:
                    require arg2 / 10^18
                    require 5 * arg2 / 10^18 / arg2 / 10^18 == 5
                require (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= arg2 / 10^18
                require totalSupply + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= totalSupply
                totalSupply = totalSupply + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100)
                if not balanceOf[address(arg1)]:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor2[stor2.length].field_0 = arg1
                require balanceOf[address(arg1)] + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100)
                emit Mint(((arg2 / 10^18) + (5 * arg2 / 10^18 / 100)), arg1);
                emit Transfer(((arg2 / 10^18) + (5 * arg2 / 10^18 / 100)), 0, arg1);
        else:
            if block.timestamp <= preIcoEndDate:
                if block.timestamp < sub_00317c8e:
                    require totalSupply + (arg2 / 10^18) >= totalSupply
                    totalSupply += arg2 / 10^18
                    if not balanceOf[address(arg1)]:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_0 = arg1
                    require balanceOf[address(arg1)] + (arg2 / 10^18) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += arg2 / 10^18
                    emit Mint((arg2 / 10^18), arg1);
                    emit Transfer((arg2 / 10^18), 0, arg1);
                else:
                    if block.timestamp >= sub_d65c1ddb:
                        require totalSupply + (arg2 / 10^18) >= totalSupply
                        totalSupply += arg2 / 10^18
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += arg2 / 10^18
                        emit Mint((arg2 / 10^18), arg1);
                        emit Transfer((arg2 / 10^18), 0, arg1);
                    else:
                        if arg2 / 10^18:
                            require arg2 / 10^18
                            require 5 * arg2 / 10^18 / arg2 / 10^18 == 5
                        require (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= arg2 / 10^18
                        require totalSupply + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (5 * arg2 / 10^18 / 100)
                        emit Mint(((arg2 / 10^18) + (5 * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (5 * arg2 / 10^18 / 100)), 0, arg1);
            else:
                if arg2 / 10^18:
                    require arg2 / 10^18
                    require 10 * arg2 / 10^18 / arg2 / 10^18 == 10
                require (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) >= arg2 / 10^18
                if block.timestamp < sub_00317c8e:
                    require totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) >= totalSupply
                    totalSupply = totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100)
                    if not balanceOf[address(arg1)]:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_0 = arg1
                    require balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100)
                    emit Mint(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100)), arg1);
                    emit Transfer(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100)), 0, arg1);
                else:
                    if block.timestamp >= sub_d65c1ddb:
                        require totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100)
                        emit Mint(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100)), 0, arg1);
                    else:
                        if (arg2 / 10^18) + (10 * arg2 / 10^18 / 100):
                            require (arg2 / 10^18) + (10 * arg2 / 10^18 / 100)
                            require (5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) == 5
                        require (5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100 >= 0
                        require totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100)
                        emit Mint(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (10 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 10 * arg2 / 10^18 / 100) / 100)), 0, arg1);
    else:
        if arg2 / 10^18:
            require arg2 / 10^18
            require 20 * arg2 / 10^18 / arg2 / 10^18 == 20
        require (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= arg2 / 10^18
        if block.timestamp >= sub_00317c8e:
            if block.timestamp >= sub_d65c1ddb:
                require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= totalSupply
                totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                if not balanceOf[address(arg1)]:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor2[stor2.length].field_0 = arg1
                require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), arg1);
                emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), 0, arg1);
            else:
                if (arg2 / 10^18) + (20 * arg2 / 10^18 / 100):
                    require (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                    require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) == 5
                require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100 >= 0
                require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100) >= totalSupply
                totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)
                if not balanceOf[address(arg1)]:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor2[stor2.length].field_0 = arg1
                require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)
                emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)), arg1);
                emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)), 0, arg1);
        else:
            if block.timestamp <= preIcoEndDate:
                if block.timestamp < sub_00317c8e:
                    require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= totalSupply
                    totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                    if not balanceOf[address(arg1)]:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_0 = arg1
                    require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                    emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), arg1);
                    emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), 0, arg1);
                else:
                    if block.timestamp >= sub_d65c1ddb:
                        require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                        emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100)), 0, arg1);
                    else:
                        if (arg2 / 10^18) + (20 * arg2 / 10^18 / 100):
                            require (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                            require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) == 5
                        require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100 >= 0
                        require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)
                        emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) / 100)), 0, arg1);
            else:
                if (arg2 / 10^18) + (20 * arg2 / 10^18 / 100):
                    require (arg2 / 10^18) + (20 * arg2 / 10^18 / 100)
                    require (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) == 10
                require (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100 >= 0
                if block.timestamp < sub_00317c8e:
                    require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) >= totalSupply
                    totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)
                    if not balanceOf[address(arg1)]:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor2[stor2.length].field_0 = arg1
                    require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)
                    emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)), arg1);
                    emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)), 0, arg1);
                else:
                    if block.timestamp >= sub_d65c1ddb:
                        require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)
                        emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)), 0, arg1);
                    else:
                        if (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100):
                            require (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100)
                            require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) == 5
                        require (5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100 >= 0
                        require totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100) >= totalSupply
                        totalSupply = totalSupply + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100)
                        if not balanceOf[address(arg1)]:
                            stor2.length++
                            if not stor2.length <= stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            stor2[stor2.length].field_0 = arg1
                        require balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100)
                        emit Mint(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100)), arg1);
                        emit Transfer(((arg2 / 10^18) + (20 * arg2 / 10^18 / 100) + ((10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) + ((5 * arg2 / 10^18) + (5 * 20 * arg2 / 10^18 / 100) + (5 * (10 * arg2 / 10^18) + (10 * 20 * arg2 / 10^18 / 100) / 100) / 100)), 0, arg1);
    if sub_a0819282 == 20000 * 3600:
        Mask(88, 0, stor4.field_168) = 1
        require msg.sender == owner
        require not uint8(stor4.field_160)
        require not uint8(stor4.field_168)
        require 120 * 10^6 >= totalSupply
        totalSupply = 120 * 10^6
        if not balanceOf[stor10]:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 1
                while stor2.length > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor2[stor2.length].field_0 = companyAddress
        require balanceOf[stor10] + -totalSupply + 120 * 10^6 >= balanceOf[stor10]
        balanceOf[stor10] = balanceOf[stor10] + -totalSupply + 120 * 10^6
        emit Mint((-totalSupply + 120 * 10^6), companyAddress);
        emit Transfer((-totalSupply + 120 * 10^6), 0, companyAddress);
    return 1
}



}
