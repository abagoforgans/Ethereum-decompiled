contract main {


// =======================  Init code  ======================


uint256 stor2;
uint16 stor13; offset 160
address stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 stor27; offset 160

function _fallback() payable {
    stor2 = 420493 * 3600
    uint16(stor13.field_160) = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor20 = 0
    stor21 = 0
    stor22 = 0
    stor23 = 0
    stor24 = 0
    stor25 = 0
    stor26 = 500000000 * 10^18
    stor27 = 0
    address(stor13.field_0) = msg.sender
    return code.data[166 len 10781]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - isFreeze(address arg1, uint256 arg2)
#  - newTransferManualTokensnewTransfer(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'ADD Token'

const decimals = 18

const symbol = 'ADD'


uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 stor2;
mapping of struct stor3;
mapping of struct stor4;
mapping of struct stor5;
mapping of struct stor6;
mapping of uint8 stor7;
array of address stor8;
array of address stor9;
array of address stor10;
array of address stor11;
mapping of uint256 allowance;
uint8 stor13; offset 160
uint8 stor13; offset 168
address ownerToken;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint8 stor27; offset 160
address stor27;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return ownerToken
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getOwnerToken() {
    return ownerToken
}

function _fallback() payable {
    revert
}

function finishMinting() {
    require ownerToken == msg.sender
    uint8(stor13.field_160) = 1
}

function setFreeze(address arg1) {
    require ownerToken == msg.sender
    stor7[address(arg1)] = 1
}

function removeFreeze(address arg1) {
    require ownerToken == msg.sender
    stor7[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require ownerToken == msg.sender
    require arg1
    ownerToken = arg1
}

function tokenTransferOwnership(address arg1) {
    require ownerToken == msg.sender
    require arg1
    ownerToken = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrowTokens(address arg1, uint256 arg2) {
    require ownerToken == msg.sender
    balanceOf[address(stor27.field_0)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
}

function mint(address arg1, uint256 arg2) {
    require not uint8(stor13.field_160)
    require ownerToken == msg.sender
    emit Mint(arg2, arg1);
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function moveUnsold(address arg1) {
    require ownerToken == msg.sender
    require not uint8(stor27.field_160)
    require balanceOf[address(stor27.field_0)] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[address(stor27.field_0)] + balanceOf[arg1]
    uint8(stor27.field_160) = 1
}

function setTotalSupply(address arg1) {
    require ownerToken == msg.sender
    require not uint8(stor13.field_168)
    totalSupply = stor26
    address(stor27.field_0) = arg1
    require not uint8(stor13.field_160)
    require ownerToken == msg.sender
    emit Mint(stor26, arg1);
    require stor26 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += stor26
    uint8(stor13.field_168) = 1
}

function setFreezeForPEInvestors(uint256 arg1, address arg2, uint256 arg3) {
    require ownerToken == msg.sender
    stor2 = arg1
    if arg1 != stor6[address(arg2)].field_0:
        stor11.length++
        if not stor11.length <= stor11.length + 1:
            idx = stor11.length + 1
            while stor11.length > idx:
                uint256(stor11[idx]) = 0
                idx = idx + 1
                continue 
        address(stor11[stor11.length]) = arg2
    stor14 = stor2
    stor15 = stor2 + (4320 * 24 * 3600)
    stor16 = stor2 + (8640 * 24 * 3600)
    stor17 = stor2 + (12960 * 24 * 3600)
    stor18 = arg3 + stor6[address(arg2)].field_1024
    if arg3:
        require arg3
        require 20 * arg3 / arg3 == 20
    stor19 = 20 * arg3 / 100
    if arg3:
        require arg3
        require 30 * arg3 / arg3 == 30
    stor20 = 30 * arg3 / 100
    stor22 = stor19 + stor6[address(arg2)].field_1280
    stor23 = stor19 + stor6[address(arg2)].field_1536
    stor24 = (30 * arg3 / 100) + stor6[address(arg2)].field_1792
    stor25 = stor6[address(arg2)].field_2048 + (30 * arg3 / 100)
}

function setFreezeForCoreTeam(uint256 arg1, address arg2, uint256 arg3) {
    require ownerToken == msg.sender
    stor2 = arg1
    if arg1 != stor5[address(arg2)].field_0:
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            idx = stor10.length + 1
            while stor10.length > idx:
                uint256(stor10[idx]) = 0
                idx = idx + 1
                continue 
        address(stor10[stor10.length]) = arg2
    stor14 = stor2
    stor15 = stor2 + (4320 * 24 * 3600)
    stor16 = stor2 + (8640 * 24 * 3600)
    stor17 = stor2 + (12960 * 24 * 3600)
    stor18 = arg3 + stor5[address(arg2)].field_1024
    if arg3:
        require arg3
        require 5 * arg3 / arg3 == 5
    stor19 = 5 * arg3 / 100
    if arg3:
        require arg3
        require 10 * arg3 / arg3 == 10
    stor20 = 10 * arg3 / 100
    if arg3:
        require arg3
        require 75 * arg3 / arg3 == 75
    stor21 = 75 * arg3 / 100
    stor22 = stor19 + stor5[address(arg2)].field_1280
    stor23 = stor20 + stor5[address(arg2)].field_1536
    stor24 = stor5[address(arg2)].field_1792 + stor20
    stor25 = stor5[address(arg2)].field_2048 + (75 * arg3 / 100)
}

function setFreezeForFounding(uint256 arg1, address arg2, uint256 arg3) {
    require ownerToken == msg.sender
    stor2 = arg1
    if arg1 != stor3[address(arg2)].field_0:
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            idx = stor8.length + 1
            while stor8.length > idx:
                uint256(stor8[idx]) = 0
                idx = idx + 1
                continue 
        address(stor8[stor8.length]) = arg2
    stor14 = stor2
    stor15 = stor2 + (4320 * 24 * 3600)
    stor16 = stor2 + (8640 * 24 * 3600)
    stor17 = stor2 + (12960 * 24 * 3600)
    stor18 = arg3 + stor3[address(arg2)].field_1024
    if arg3:
        require arg3
        require 20 * arg3 / arg3 == 20
    stor19 = 20 * arg3 / 100
    if arg3:
        require arg3
        require 30 * arg3 / arg3 == 30
    stor20 = 30 * arg3 / 100
    stor22 = stor19 + stor3[address(arg2)].field_1280
    stor23 = stor19 + stor3[address(arg2)].field_1536
    stor24 = (30 * arg3 / 100) + stor3[address(arg2)].field_1792
    stor25 = (30 * arg3 / 100) + stor3[address(arg2)].field_2048
    stor4[address(arg2)].field_0 = stor14
    stor4[address(arg2)].field_256 = stor15
    stor4[address(arg2)].field_512 = stor16
    stor4[address(arg2)].field_768 = stor17
    stor4[address(arg2)].field_1024 = stor18
    stor4[address(arg2)].field_1280 = stor22
    stor4[address(arg2)].field_1536 = stor23
    stor4[address(arg2)].field_1792 = stor24
    stor4[address(arg2)].field_2048 = stor25
}

function transferTokens(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require ownerToken == msg.sender
    require balanceOf[address(arg1)] >= arg3
    emit Transfer(arg3, arg1, arg2);
    if 3 == arg5:
        require ownerToken == msg.sender
        stor2 = arg4
        if arg4 != stor5[address(arg2)].field_0:
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                idx = stor10.length + 1
                while stor10.length > idx:
                    uint256(stor10[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor10[stor10.length]) = arg2
        stor14 = stor2
        stor15 = stor2 + (4320 * 24 * 3600)
        stor16 = stor2 + (8640 * 24 * 3600)
        stor17 = stor2 + (12960 * 24 * 3600)
        stor18 = arg3 + stor5[address(arg2)].field_1024
        if arg3:
            require arg3
            require 5 * arg3 / arg3 == 5
        stor19 = 5 * arg3 / 100
        if arg3:
            require arg3
            require 10 * arg3 / arg3 == 10
        stor20 = 10 * arg3 / 100
        if arg3:
            require arg3
            require 75 * arg3 / arg3 == 75
        stor21 = 75 * arg3 / 100
        stor22 = stor19 + stor5[address(arg2)].field_1280
        stor23 = stor20 + stor5[address(arg2)].field_1536
        stor24 = stor5[address(arg2)].field_1792 + stor20
        stor25 = stor5[address(arg2)].field_2048 + (75 * arg3 / 100)
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] += arg3
}

function setFreezeForAngel(uint256 arg1, address arg2, uint256 arg3) {
    require ownerToken == msg.sender
    stor2 = arg1
    if arg1 != stor4[address(arg2)].field_0:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        address(stor9[stor9.length]) = arg2
    stor14 = stor2
    stor15 = stor2 + (2160 * 24 * 3600)
    stor16 = stor2 + (4320 * 24 * 3600)
    stor17 = stor2 + (6480 * 24 * 3600)
    stor18 = arg3 + stor4[address(arg2)].field_1024
    if arg3:
        require arg3
        require 25 * arg3 / arg3 == 25
    stor19 = 25 * arg3 / 100
    stor22 = (25 * arg3 / 100) + stor4[address(arg2)].field_1280
    stor23 = (25 * arg3 / 100) + stor4[address(arg2)].field_1536
    stor24 = (25 * arg3 / 100) + stor4[address(arg2)].field_1792
    stor25 = (25 * arg3 / 100) + stor4[address(arg2)].field_2048
    emit 0xef7dab84: Array(len=34, data='setFreezeForAngel: firstPhaseCou', 'nt'), (25 * arg3 / 100) + stor4[address(arg2)].field_1280
    stor4[address(arg2)].field_0 = stor14
    stor4[address(arg2)].field_256 = stor15
    stor4[address(arg2)].field_512 = stor16
    stor4[address(arg2)].field_768 = stor17
    stor4[address(arg2)].field_1024 = stor18
    stor4[address(arg2)].field_1280 = stor22
    stor4[address(arg2)].field_1536 = stor23
    stor4[address(arg2)].field_1792 = stor24
    stor4[address(arg2)].field_2048 = stor25
    emit 0xef7dab84: Array(len=57, data='setFreezeForAngel: angel_tokens[', '_address].firstPhaseCount'), stor4[address(arg2)].field_1280
}

function transferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ownerToken == msg.sender
    require balanceOf[address(stor27.field_0)] >= arg2
    emit Transfer(arg2, address(stor27.field_0), arg1);
    emit 0xef7dab84: arg2, arg2, 16, 'Before condition'
    if not arg4:
        require ownerToken == msg.sender
        stor2 = arg3
        if arg3 != stor4[address(arg1)].field_0:
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                idx = stor9.length + 1
                while stor9.length > idx:
                    uint256(stor9[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor9[stor9.length]) = arg1
        stor14 = stor2
        stor15 = stor2 + (2160 * 24 * 3600)
        stor16 = stor2 + (4320 * 24 * 3600)
        stor17 = stor2 + (6480 * 24 * 3600)
        stor18 = arg2 + stor4[address(arg1)].field_1024
        if arg2:
            require arg2
            require 25 * arg2 / arg2 == 25
        stor19 = 25 * arg2 / 100
        stor22 = (25 * arg2 / 100) + stor4[address(arg1)].field_1280
        stor23 = (25 * arg2 / 100) + stor4[address(arg1)].field_1536
        stor24 = (25 * arg2 / 100) + stor4[address(arg1)].field_1792
        stor25 = (25 * arg2 / 100) + stor4[address(arg1)].field_2048
        emit 0xef7dab84: Array(len=34, data='setFreezeForAngel: firstPhaseCou', 'nt'), (25 * arg2 / 100) + stor4[address(arg1)].field_1280
        stor4[address(arg1)].field_0 = stor14
        stor4[address(arg1)].field_256 = stor15
        stor4[address(arg1)].field_512 = stor16
        stor4[address(arg1)].field_768 = stor17
        stor4[address(arg1)].field_1024 = stor18
        stor4[address(arg1)].field_1280 = stor22
        stor4[address(arg1)].field_1536 = stor23
        stor4[address(arg1)].field_1792 = stor24
        stor4[address(arg1)].field_2048 = stor25
        emit 0xef7dab84: Array(len=57, data='setFreezeForAngel: angel_tokens[', '_address].firstPhaseCount'), stor4[address(arg1)].field_1280
        emit 0xef7dab84: Array(len=6, data='Inside'), arg2
        balanceOf[address(stor27.field_0)] -= arg2
        balanceOf[arg1] += arg2
    if 1 == arg4:
        require ownerToken == msg.sender
        stor2 = arg3
        if arg3 != stor3[address(arg1)].field_0:
            stor8.length++
            if not stor8.length <= stor8.length + 1:
                idx = stor8.length + 1
                while stor8.length > idx:
                    uint256(stor8[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor8[stor8.length]) = arg1
        stor14 = stor2
        stor15 = stor2 + (4320 * 24 * 3600)
        stor16 = stor2 + (8640 * 24 * 3600)
        stor17 = stor2 + (12960 * 24 * 3600)
        stor18 = arg2 + stor3[address(arg1)].field_1024
        if arg2:
            require arg2
            require 20 * arg2 / arg2 == 20
        stor19 = 20 * arg2 / 100
        if arg2:
            require arg2
            require 30 * arg2 / arg2 == 30
        stor20 = 30 * arg2 / 100
        stor22 = stor19 + stor3[address(arg1)].field_1280
        stor23 = stor19 + stor3[address(arg1)].field_1536
        stor24 = (30 * arg2 / 100) + stor3[address(arg1)].field_1792
        stor25 = (30 * arg2 / 100) + stor3[address(arg1)].field_2048
        stor4[address(arg1)].field_0 = stor14
        stor4[address(arg1)].field_256 = stor15
        stor4[address(arg1)].field_512 = stor16
        stor4[address(arg1)].field_768 = stor17
        stor4[address(arg1)].field_1024 = stor18
        stor4[address(arg1)].field_1280 = stor22
        stor4[address(arg1)].field_1536 = stor23
        stor4[address(arg1)].field_1792 = stor24
        stor4[address(arg1)].field_2048 = stor25
        balanceOf[address(stor27.field_0)] -= arg2
        balanceOf[arg1] += arg2
    if 2 == arg4:
        require ownerToken == msg.sender
        stor2 = arg3
        if arg3 != stor6[address(arg1)].field_0:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    uint256(stor11[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor11[stor11.length]) = arg1
        stor14 = stor2
        stor15 = stor2 + (4320 * 24 * 3600)
        stor16 = stor2 + (8640 * 24 * 3600)
        stor17 = stor2 + (12960 * 24 * 3600)
        stor18 = arg2 + stor6[address(arg1)].field_1024
        if arg2:
            require arg2
            require 20 * arg2 / arg2 == 20
        stor19 = 20 * arg2 / 100
        if arg2:
            require arg2
            require 30 * arg2 / arg2 == 30
        stor20 = 30 * arg2 / 100
        stor22 = stor19 + stor6[address(arg1)].field_1280
        stor23 = stor19 + stor6[address(arg1)].field_1536
        stor24 = (30 * arg2 / 100) + stor6[address(arg1)].field_1792
        stor25 = stor6[address(arg1)].field_2048 + (30 * arg2 / 100)
        balanceOf[address(stor27.field_0)] -= arg2
        balanceOf[arg1] += arg2
}



}
