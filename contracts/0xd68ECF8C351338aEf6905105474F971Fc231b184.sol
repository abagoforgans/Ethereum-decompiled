contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor5 = 350000000 * 10^18
    stor6 = 87500000 * 10^18
    stor7 = 87500000 * 10^18
    stor8 = 87500000 * 10^18
    stor9 = 17500000 * 10^18
    stor10 = 17500000 * 10^18
    stor11 = 145000000 * 10^18
    stor12 = 30000000 * 10^18
    stor13 = 52500000 * 10^18
    stor14 = 0
    require not msg.value
    mem[96 len -3136] = code.data[3582 len -3136]
    mem[64] = -3040
    stor0 = msg.sender
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[address(msg.sender)] = 875000000 * 10^18
    return code.data[446 len 3136]
}



// =====================  Runtime code  =====================


const totalSupply = 875 * 10^6

const decimals = 18

const INITIAL_TOKEN_SUPPLY = 875 * 10^6


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of struct stor15;

function name() {
    return name[0 len name.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function getBalances() {
    return stor5, stor6, stor7, stor8, stor9, stor10, stor11, stor12, stor13
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_0cb81938(?) {
    require owner == msg.sender
    require arg1
    require stor15[address(arg1)].field_512
    if stor14 < 100000:
        if stor11 >= 200 * 10^18:
            stor14++
            stor11 += 0xfffffffffffffffffffffffffffffffffffffffffffffff5287143a539e00000
            require arg1
            require 200 * 10^18 <= balanceOf[address(msg.sender)]
            require 200 * 10^18 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= 200 * 10^18
            require balanceOf[arg1] + 200 * 10^18 >= balanceOf[arg1]
            balanceOf[address(arg1)] = balanceOf[arg1] + 200 * 10^18
            emit Transfer(200 * 10^18, msg.sender, arg1);
            emit Transfer(200 * 10^18, msg.sender, arg1);
    return stor15[address(arg1)].field_0
}

function registerUser(address arg1) {
    require owner == msg.sender
    require arg1
    require not stor15[address(arg1)].field_512
    if stor11 < 500 * 10^18:
        stor15[address(arg1)].field_0 = 0
        stor15[address(arg1)].field_256 = 0
        idx = 0
        while stor15[address(arg1)].field_256 > idx:
            stor15[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        stor15[address(arg1)].field_512 = 1
    else:
        stor11 += 0xffffffffffffffffffffffffffffffffffffffffffffffe4e51b291d10b00000
        stor15[address(arg1)].field_0 = 500 * 10^18
        stor15[address(arg1)].field_256 = 0
        idx = 0
        while stor15[address(arg1)].field_256 > idx:
            stor15[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        stor15[address(arg1)].field_512 = 1
        require arg1
        require 500 * 10^18 <= balanceOf[address(msg.sender)]
        require 500 * 10^18 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= 500 * 10^18
        require balanceOf[arg1] + 500 * 10^18 >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[arg1] + 500 * 10^18
        emit Transfer(500 * 10^18, msg.sender, arg1);
        emit Transfer(500 * 10^18, msg.sender, arg1);
    return stor15[address(arg1)].field_0
}



}
