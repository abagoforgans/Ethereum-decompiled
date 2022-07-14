contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOfOwner;
address owner;
address reserveAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOfOwner() {
    return balanceOfOwner[stor7]
}

function balanceOf(address arg1) {
    return balanceOfOwner[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function reserve() {
    return reserveAddress
}

function _fallback() payable {
    revert
}

function burnCoins(uint256 arg1) {
    require owner != msg.sender
    require balanceOfOwner[address(msg.sender)] >= arg1
    require totalSupply >= arg1
    balanceOfOwner[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require arg1 != owner
    require arg2 > 0
    require balanceOfOwner[address(msg.sender)] >= arg2
    require balanceOfOwner[address(arg1)] + arg2 >= balanceOfOwner[address(arg1)]
    if msg.sender == reserveAddress:
        require block.timestamp >= 441000 * 24 * 3600
    if not arg1:
        totalSupply -= arg2
    else:
        if arg1 == 1:
            totalSupply -= arg2
        else:
            if arg1 == 57005:
                totalSupply -= arg2
    balanceOfOwner[address(msg.sender)] -= arg2
    balanceOfOwner[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
