contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor3;
address stor5;
address stor6;
address stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor5 = 0x98950bf9d79574943efda8b08ce36a18c1a3dd27
    stor6 = 0x98950bf9d79574943efda8b08ce36a18c1a3dd27
    stor7 = 0x98950bf9d79574943efda8b08ce36a18c1a3dd27
    stor0 = 500 * 10^6
    require stor0 + 500 * 10^6 >= stor0
    require stor0 + 500 * 10^6 >= 500 * 10^6
    stor0 += 500 * 10^6
    stor1[stor6] = 500 * 10^6
    stor1[stor7] = 500 * 10^6
    if stor1[0] < 5 * 10^9:
        if stor1[0] >= 5 * 10^9:
            if stor2[0][address(msg.sender)] >= 5 * 10^9:
                stor1[0x98950bf9d79574943efda8b08ce36a18c1a3dd27] += 5 * 10^9
                stor1[0] -= 5 * 10^9
                stor2[0][address(msg.sender)] -= 5 * 10^9
                emit Transfer(address rg1, address rg2, uint256 rg3):
                              5 * 10^9,
                emit 0x0: 5 * 10^9
                emit 0x98950bf9: 5 * 10^9
    else:
        if stor2[0][address(msg.sender)] >= 5 * 10^9:
            stor1[0x98950bf9d79574943efda8b08ce36a18c1a3dd27] += 5 * 10^9
            stor1[0] -= 5 * 10^9
            stor2[0][address(msg.sender)] -= 5 * 10^9
            emit Transfer(address rg1, address rg2, uint256 rg3):
                          5 * 10^9,
            emit 0x0: 5 * 10^9
            emit 0x98950bf9: 5 * 10^9
        if stor1[0] >= 5 * 10^9:
            if stor2[0][address(msg.sender)] >= 5 * 10^9:
                stor1[0x98950bf9d79574943efda8b08ce36a18c1a3dd27] += 5 * 10^9
                stor1[0] -= 5 * 10^9
                stor2[0][address(msg.sender)] -= 5 * 10^9
                emit Transfer(address rg1, address rg2, uint256 rg3):
                              5 * 10^9,
                emit 0x0: 5 * 10^9
                emit 0x98950bf9: 5 * 10^9
    return code.data[1743 len 3242]
}



// =====================  Runtime code  =====================


const name = 'TESTToken'

const decimals = 2

const sub_37c88306(?) = 500 * 10^6

const tokenCreationCap = 10^9

const symbol = 'TEST'

const sub_9f907098(?) = 500 * 10^6


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
