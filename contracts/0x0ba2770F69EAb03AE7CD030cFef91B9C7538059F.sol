contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor10;

function _fallback() payable {
    stor3 = 8
    stor5 = 95
    stor6 = 987
    require not msg.value
    stor0 = msg.sender
    stor4 = 1500 * 10^6 * 10^stor3
    stor10[address(msg.sender)] = 1500 * 10^6 * 10^stor3
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_8 = 'gctest' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 7
    stor2.length.field_8 = 'GCTESTS' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[420 len 2883]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_d2b57d88;
uint256 sub_7aa4efe4;
mapping of uint256 stor7;
mapping of uint256 preTotalTokens;
mapping of uint8 stor9;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_59013846(?) {
    return bool(stor9[arg1])
}

function preTotalTokens(address arg1) {
    return preTotalTokens[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7aa4efe4(?) {
    return sub_7aa4efe4
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_d2b57d88(?) {
    return sub_d2b57d88
}

function _fallback() payable {
    revert
}

function sub_347bde64(?) {
    require owner == msg.sender
    sub_d2b57d88 = arg1
}

function sub_7cc9e6a4(?) {
    require owner == msg.sender
    sub_7aa4efe4 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_219a8299(?) {
    require owner == msg.sender
    require sub_d2b57d88 > 0
    require 5 <= sub_d2b57d88
    sub_d2b57d88 -= 5
}

function sub_962d939f(?) {
    require owner == msg.sender
    require sub_7aa4efe4 > 0
    if sub_7aa4efe4 <= 13:
        sub_7aa4efe4 = 0
    else:
        require 13 <= sub_7aa4efe4
        sub_7aa4efe4 -= 13
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] > balanceOf[address(arg1)]
    if stor7[address(msg.sender)] > 0:
        if not stor9[address(msg.sender)]:
            if not preTotalTokens[address(msg.sender)]:
                stor7[address(msg.sender)] = 0
                require 0 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                require sub_7aa4efe4 * preTotalTokens[address(msg.sender)] / preTotalTokens[address(msg.sender)] == sub_7aa4efe4
                stor7[address(msg.sender)] = sub_7aa4efe4 * preTotalTokens[address(msg.sender)] / 1000
                require sub_7aa4efe4 * preTotalTokens[address(msg.sender)] / 1000 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)] - (sub_7aa4efe4 * preTotalTokens[address(msg.sender)] / 1000)
        else:
            if not preTotalTokens[address(msg.sender)]:
                stor7[address(msg.sender)] = 0
                require 0 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
            else:
                require sub_d2b57d88 * preTotalTokens[address(msg.sender)] / preTotalTokens[address(msg.sender)] == sub_d2b57d88
                stor7[address(msg.sender)] = sub_d2b57d88 * preTotalTokens[address(msg.sender)] / 100
                require sub_d2b57d88 * preTotalTokens[address(msg.sender)] / 100 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)] - (sub_d2b57d88 * preTotalTokens[address(msg.sender)] / 100)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_575cf9c6(?) {
    require owner == msg.sender
    if not arg2:
        require balanceOf[stor0] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require arg1
        require 0 <= balanceOf[stor0]
        require balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[arg1]
        stor9[address(arg1)] = 1
        require preTotalTokens[address(arg1)] >= preTotalTokens[address(arg1)]
        if not preTotalTokens[address(arg1)]:
            stor7[address(arg1)] = 0
        else:
            require sub_d2b57d88 * preTotalTokens[address(arg1)] / preTotalTokens[address(arg1)] == sub_d2b57d88
            stor7[address(arg1)] = sub_d2b57d88 * preTotalTokens[address(arg1)] / 100
        emit Transfer(0, owner, arg1);
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        require balanceOf[stor0] >= 10^decimals * arg2
        require (10^decimals * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (10^decimals * arg2) + balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require arg1
        require 10^decimals * arg2 <= balanceOf[stor0]
        balanceOf[stor0] += -1 * 10^decimals * arg2
        require (10^decimals * arg2) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (10^decimals * arg2) + balanceOf[arg1]
        stor9[address(arg1)] = 1
        require (10^decimals * arg2) + preTotalTokens[address(arg1)] >= preTotalTokens[address(arg1)]
        preTotalTokens[address(arg1)] += 10^decimals * arg2
        if not (10^decimals * arg2) + preTotalTokens[address(arg1)]:
            stor7[address(arg1)] = 0
        else:
            require (10^decimals * arg2 * sub_d2b57d88) + (preTotalTokens[address(arg1)] * sub_d2b57d88) / (10^decimals * arg2) + preTotalTokens[address(arg1)] == sub_d2b57d88
            stor7[address(arg1)] = (10^decimals * arg2 * sub_d2b57d88) + (preTotalTokens[address(arg1)] * sub_d2b57d88) / 100
        emit Transfer((10^decimals * arg2), owner, arg1);
}

function sub_68a91e64(?) {
    require owner == msg.sender
    if not arg2:
        require balanceOf[stor0] >= 0
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require arg1
        require 0 <= balanceOf[stor0]
        require balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[arg1]
        stor9[address(arg1)] = 1
        require preTotalTokens[address(arg1)] >= preTotalTokens[address(arg1)]
        if not preTotalTokens[address(arg1)]:
            stor7[address(arg1)] = 0
        else:
            require sub_d2b57d88 * preTotalTokens[address(arg1)] / preTotalTokens[address(arg1)] == sub_d2b57d88
            stor7[address(arg1)] = sub_d2b57d88 * preTotalTokens[address(arg1)] / 100
        emit Transfer(0, owner, arg1);
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        require balanceOf[stor0] >= 10^decimals * arg2
        require (10^decimals * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (10^decimals * arg2) + balanceOf[address(arg1)] > balanceOf[address(arg1)]
        require arg1
        require 10^decimals * arg2 <= balanceOf[stor0]
        balanceOf[stor0] += -1 * 10^decimals * arg2
        require (10^decimals * arg2) + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = (10^decimals * arg2) + balanceOf[arg1]
        stor9[address(arg1)] = 1
        require (10^decimals * arg2) + preTotalTokens[address(arg1)] >= preTotalTokens[address(arg1)]
        preTotalTokens[address(arg1)] += 10^decimals * arg2
        if not (10^decimals * arg2) + preTotalTokens[address(arg1)]:
            stor7[address(arg1)] = 0
        else:
            require (10^decimals * arg2 * sub_d2b57d88) + (preTotalTokens[address(arg1)] * sub_d2b57d88) / (10^decimals * arg2) + preTotalTokens[address(arg1)] == sub_d2b57d88
            stor7[address(arg1)] = (10^decimals * arg2 * sub_d2b57d88) + (preTotalTokens[address(arg1)] * sub_d2b57d88) / 100
        emit Transfer((10^decimals * arg2), owner, arg1);
    stor9[address(arg1)] = 0
}



}
