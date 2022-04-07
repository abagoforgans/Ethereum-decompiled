contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor3;
address stor3; offset 8

function _fallback() payable {
    uint8(stor3.field_0) = 0
    require not msg.value
    address(stor3.field_8) = msg.sender
    stor0 = 0
    return code.data[76 len 2697]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''

const INITIAL_SUPPLY = 0


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3;
address stor3;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_70bf49bb(?) {
    if not stor4[address(arg1)]:
        return eth.balance(arg1)
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function redeem(address arg1) {
    require not uint8(stor3)
    uint8(stor3) = 1
    require not stor4[address(arg1)]
    require eth.balance(arg1)
    mem[1376] = 0
    mem[1408 len 1248] = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require 2 * idx < 40
        if Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 244 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(64 * idx) + 1376] = (uint8(arg1 / 2^(8 * -idx + 19)) / 16) + 87 << 248
        else:
            mem[(64 * idx) + 1376] = (uint8(arg1 / 2^(8 * -idx + 19)) / 16) + 48 << 248
        require (2 * idx) + 1 < 40
        if uint8(arg1 / 2^(8 * -idx + 19)) - Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 248 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(32 * (2 * idx) + 1) + 1376] = uint8(uint8(arg1 / 2^(8 * -idx + 19)) - Mask(4, 4, arg1 / 2^(8 * -idx + 19))) + 87 << 248
        else:
            mem[(32 * (2 * idx) + 1) + 1376] = uint8(uint8(arg1 / 2^(8 * -idx + 19)) - Mask(4, 4, arg1 / 2^(8 * -idx + 19))) + 48 << 248
        s = uint8(arg1 / 2^(8 * -idx + 19)) - Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 248
        s = Mask(4, 4, arg1 / 2^(8 * -idx + 19)) << 244
        s = arg1 / 2^(8 * -idx + 19) << 248
        idx = idx + 1
        continue 
    mem[2656] = 0
    mem[2688 len 1248] = 0
    mem[3936] = 0
    mem[3968 len 1248] = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require 2 * idx < 40
        if Mask(4, 4, msg.sender / 2^(8 * -idx + 19)) << 244 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(64 * idx) + 3936] = (uint8(msg.sender / 2^(8 * -idx + 19)) / 16) + 87 << 248
        else:
            mem[(64 * idx) + 3936] = (uint8(msg.sender / 2^(8 * -idx + 19)) / 16) + 48 << 248
        require (2 * idx) + 1 < 40
        if uint8(msg.sender / 2^(8 * -idx + 19)) - Mask(4, 4, msg.sender / 2^(8 * -idx + 19)) << 248 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(32 * (2 * idx) + 1) + 3936] = uint8(uint8(msg.sender / 2^(8 * -idx + 19)) - Mask(4, 4, msg.sender / 2^(8 * -idx + 19))) + 87 << 248
        else:
            mem[(32 * (2 * idx) + 1) + 3936] = uint8(uint8(msg.sender / 2^(8 * -idx + 19)) - Mask(4, 4, msg.sender / 2^(8 * -idx + 19))) + 48 << 248
        s = uint8(msg.sender / 2^(8 * -idx + 19)) - Mask(4, 4, msg.sender / 2^(8 * -idx + 19)) << 248
        s = Mask(4, 4, msg.sender / 2^(8 * -idx + 19)) << 244
        s = msg.sender / 2^(8 * -idx + 19) << 248
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 40:
        if Mask(8, 248, mem[(32 * idx) + 1376]) == Mask(8, 248, mem[(32 * idx) + 3936]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s <= 0:
        uint8(stor3) = 0
        return 0
    if s >= 4:
        uint8(stor3) = 0
        return 0
    if eth.balance(arg1) <= 0:
        uint8(stor3) = 0
        return 0
    require s
    stor4[address(arg1)] = 1
    require (eth.balance(arg1) / s) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += eth.balance(arg1) / s
    require (eth.balance(arg1) / s / 100) + balanceOf[address(stor3)] >= balanceOf[address(stor3)]
    balanceOf[address(stor3)] += eth.balance(arg1) / s / 100
    require (eth.balance(arg1) / s) + (eth.balance(arg1) / s / 100) + totalSupply >= totalSupply
    totalSupply = (eth.balance(arg1) / s) + (eth.balance(arg1) / s / 100) + totalSupply
    uint8(stor3) = 0
    return (eth.balance(arg1) / s)
}



}
