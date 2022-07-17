contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_c33253b8;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address sub_dc5bb021Address;
address saleAddress;
address mineAddress;
address evtAddress;
address teamAddress;
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

function evt() {
    return evtAddress
}

function sale() {
    return saleAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function mine() {
    return mineAddress
}

function sub_c33253b8(?) {
    return sub_c33253b8
}

function reserve() {
    return reserveAddress
}

function sub_dc5bb021(?) {
    return sub_dc5bb021Address
}

function _fallback() payable {
    revert
}

function burnCoins(uint256 arg1) {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    require totalSupply >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if msg.sender == teamAddress:
        require block.timestamp >= 441183 * 3600
        if balanceOf[address(msg.sender)] - arg2 < 80 * 10^6 * 10^decimals:
            require block.timestamp >= 449943 * 3600
        if balanceOf[address(msg.sender)] - arg2 < 60 * 10^6 * 10^decimals:
            require block.timestamp >= 458703 * 3600
        if balanceOf[address(msg.sender)] - arg2 < 40 * 10^6 * 10^decimals:
            require block.timestamp >= 467463 * 3600
        if balanceOf[address(msg.sender)] - arg2 < 20 * 10^6 * 10^decimals:
            require block.timestamp >= 476247 * 3600
    if msg.sender == mineAddress:
        sub_c33253b8 += arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
