contract main {




// =====================  Runtime code  =====================


#
#  - sub_91cd06f0(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor157;
address owner;
uint256 sub_6b1b2490;
uint256 sub_a4ffee47;
uint256 stor361; offset 1
uint256 stor361;
uint256 stor362;
uint256 stor363;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_6b1b2490(?) {
    return sub_6b1b2490
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a4ffee47(?) {
    return sub_a4ffee47
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor157[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setGasPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_a4ffee47 = arg1
}

function renounceMinter() {
    require msg.sender
    require stor157[address(msg.sender)]
    stor157[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor157[address(msg.sender)]
    require arg1
    require not stor157[address(arg1)]
    stor157[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require sub_6b1b2490 <= eth.balance(this.address)
    call arg1 with:
       value eth.balance(this.address) - sub_6b1b2490 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sqrt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if arg1 <= 3:
        return 1
    require arg1 + 1 >= arg1
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s > 0
        require s
        require (arg1 / s) + s >= arg1 / s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor157[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    emit OwnershipTransferred(0, owner);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sub_62acb414(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if uint256(stor361.field_0) <= 0:
        revert with 0, 'ERROR_ZERO_FOUNDER_DAO_TOKENS'
    require stor363 <= uint255(stor361.field_1)
    require arg1
    require uint255(stor361.field_1) - stor363 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - uint255(stor361.field_1) + stor363
    require balanceOf[address(arg1)] + uint255(stor361.field_1) - stor363 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + uint255(stor361.field_1) - stor363
    emit Transfer((uint255(stor361.field_1) - stor363), this.address, arg1);
    require uint255(stor361.field_1) >= stor363
    stor363 = uint255(stor361.field_1)
}

function sub_97d6e151(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if uint256(stor361.field_0) <= 0:
        revert with 0, 'ERROR_ZERO_FOUNDER_DAO_TOKENS'
    require stor362 <= uint255(stor361.field_1)
    require arg1
    require uint255(stor361.field_1) - stor362 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = balanceOf[address(this.address)] - uint255(stor361.field_1) + stor362
    require balanceOf[address(arg1)] + uint255(stor361.field_1) - stor362 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + uint255(stor361.field_1) - stor362
    emit Transfer((uint255(stor361.field_1) - stor362), this.address, arg1);
    require uint255(stor361.field_1) >= stor362
    stor362 = uint255(stor361.field_1)
}

function initialize(string arg1, string arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_715cfadb(?) {
    require calldata.size - 4 >= 32
    require arg1 + 10^18 <= (arg1 + 10^18)^2
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 10^10 == (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18
    require 10^18 <= arg1 + 10^18
    require 10^10 * totalSupply + arg1 + 10^18 / 10^18 / 10^10 == totalSupply + arg1 + 10^18 / 10^18
    require (10^10 * totalSupply + arg1 + 10^18 / 10^18) + 10^11 >= 10^11
    require 10^10 <= (10^10 * totalSupply + arg1 + 10^18 / 10^18) + 10^11
    if not (10^10 * totalSupply + arg1 + 10^18 / 10^18) + (25 * 10^6 * 3600):
        require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= 0
        return (-10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 / 10^18)
    require (10^10 * totalSupply + arg1 + 10^18 / 10^18) + (25 * 10^6 * 3600)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + arg1 + 10^18 / 10^18 * arg1) / (10^10 * totalSupply + arg1 + 10^18 / 10^18) + (25 * 10^6 * 3600) == arg1
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + arg1 + 10^18 / 10^18 * arg1)
    return ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + arg1 + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
}

function sub_0202bb8d(?) {
    require calldata.size - 4 >= 32
    if totalSupply < arg1:
        revert with 0, 'ERROR_SELL_AMOUNT'
    require arg1 + 10^18 <= (arg1 + 10^18)^2
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 10^10 == (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18
    require 10^18 <= arg1 + 10^18
    require 10^10 * totalSupply + 10^18 / 10^18 / 10^10 == totalSupply + 10^18 / 10^18
    require (10^10 * totalSupply + 10^18 / 10^18) + 10^11 >= 10^11
    require 10^10 <= (10^10 * totalSupply + 10^18 / 10^18) + 10^11
    if not (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600):
        require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= 0
        return (-10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 / 10^18 / 5)
    require (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) / (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600) == arg1
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    return ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5)
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require block.gasprice <= sub_a4ffee47
    if arg1 <= 0:
        revert with 0, 'ERROR_SELL_AMOUNT'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERROR_SELL_AMOUNT'
    if totalSupply < arg1:
        revert with 0, 'ERROR_SELL_AMOUNT'
    require arg1 + 10^18 <= (arg1 + 10^18)^2
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 10^10 == (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18
    require 10^18 <= arg1 + 10^18
    require 10^10 * totalSupply + 10^18 / 10^18 / 10^10 == totalSupply + 10^18 / 10^18
    require (10^10 * totalSupply + 10^18 / 10^18) + 10^11 >= 10^11
    require 10^10 <= (10^10 * totalSupply + 10^18 / 10^18) + 10^11
    if not (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600):
        require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= 0
        call msg.sender with:
           value -10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 / 10^18 / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require -10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 / 10^18 / 5 <= sub_6b1b2490
        sub_6b1b2490 -= -10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 / 10^18 / 5
    else:
        require (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600)
        require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) / (10^10 * totalSupply + 10^18 / 10^18) + (25 * 10^6 * 3600) == arg1
        require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
        call msg.sender with:
           value (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require msg.sender
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5 <= sub_6b1b2490
        sub_6b1b2490 -= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 5
}

function sub_a6e2d4ef(?) {
    require calldata.size - 4 >= 32
    require 2000000000000000000000 * 10^18 * totalSupply / 2000000000000000000000 * 10^18 == totalSupply
    require 100 * 10^18 * totalSupply^2 / 100 * 10^18 == totalSupply^2
    if not arg1:
        require (100 * 10^18 * totalSupply^2) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require 2000000000000000000000 * 10^18 * totalSupply >= 0
        require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
        s = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s > 0
            require s
            require ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
            s = ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require 0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1 / 20000000000 * 10^18 == 10^18 * arg1
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require 100 * 10^18 * totalSupply^2 >= 0
        require 2000000000000000000000 * 10^18 * totalSupply >= 0
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s > 0
            require s
            require ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    require 100000000000 * 10^18 <= t
    require totalSupply <= t - 100000000000 * 10^18 / 10^10
    return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
}

function buy() payable {
    if msg.value <= 0:
        revert with 0, 'ERROR_ZERO_ETH'
    require 2000000000000000000000 * 10^18 * totalSupply / 2000000000000000000000 * 10^18 == totalSupply
    require 100 * 10^18 * totalSupply^2 / 100 * 10^18 == totalSupply^2
    if not msg.value:
        require (100 * 10^18 * totalSupply^2) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require 2000000000000000000000 * 10^18 * totalSupply >= 0
        require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
        s = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s > 0
            require s
            require ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
            s = ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require 0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 20000000000 * 10^18 == 10^18 * msg.value
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require 100 * 10^18 * totalSupply^2 >= 0
        require 2000000000000000000000 * 10^18 * totalSupply >= 0
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s > 0
            require s
            require ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
    require 100000000000 * 10^18 <= t
    require totalSupply <= t - 100000000000 * 10^18 / 10^10
    require msg.sender
    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
    totalSupply = t - 100000000000 * 10^18 / 10^10
    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
    emit Transfer(((t - 100000000000 * 10^18 / 10^10) - totalSupply), 0, msg.sender);
    require sub_6b1b2490 + (msg.value / 5) >= sub_6b1b2490
    sub_6b1b2490 += msg.value / 5
    require 10^6 * 10^decimals / 10^6 == 10^decimals
    if uint256(stor361.field_0) < 10^6 * 10^decimals:
        require 2000000000000000000000 * 10^18 * totalSupply / 2000000000000000000000 * 10^18 == totalSupply
        require 100 * 10^18 * totalSupply^2 / 100 * 10^18 == totalSupply^2
        if not Mask(254, 2, msg.value):
            require (100 * 10^18 * totalSupply^2) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            require 2000000000000000000000 * 10^18 * totalSupply >= 0
            require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            require (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
            s = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s > 0
                require s
                require ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
                s = ((100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        else:
            require msg.value / 4
            require 10^18 * msg.value / 4 / msg.value / 4 == 10^18
            require 0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4 / 20000000000 * 10^18 == 10^18 * msg.value / 4
            require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 >= 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            require 100 * 10^18 * totalSupply^2 >= 0
            require 2000000000000000000000 * 10^18 * totalSupply >= 0
            require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            require (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 > 3
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s > 0
                require s
                require ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s >= (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value / 4) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
        require 100000000000 * 10^18 <= t
        require totalSupply <= t - 100000000000 * 10^18 / 10^10
        require uint256(stor361.field_0) + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= uint256(stor361.field_0)
        if uint256(stor361.field_0) + (t - 100000000000 * 10^18 / 10^10) - totalSupply <= 10^6 * 10^decimals:
            require this.address
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require balanceOf[address(this.address)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            emit Transfer(((t - 100000000000 * 10^18 / 10^10) - totalSupply), 0, this.address);
            require sub_6b1b2490 + (msg.value / 20) >= sub_6b1b2490
            sub_6b1b2490 += msg.value / 20
            require uint256(stor361.field_0) + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= uint256(stor361.field_0)
            uint256(stor361.field_0) = uint256(stor361.field_0) + (t - 100000000000 * 10^18 / 10^10) - totalSupply
        else:
            require uint256(stor361.field_0) <= 10^6 * 10^decimals
            require (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 <= ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2
            require 10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 10^10 == ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18
            require 10^18 <= (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18
            require 10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18 / 10^10 == totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18
            require (10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) + 10^11 >= 10^11
            require 10^10 <= (10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) + 10^11
            if not (10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) + (25 * 10^6 * 3600):
                require 10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2 <= 0
                require this.address
                require totalSupply + (10^6 * 10^decimals) - uint256(stor361.field_0) >= totalSupply
                totalSupply = totalSupply + (10^6 * 10^decimals) - uint256(stor361.field_0)
                require balanceOf[address(this.address)] + (10^6 * 10^decimals) - uint256(stor361.field_0) >= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (10^6 * 10^decimals) - uint256(stor361.field_0)
                emit Transfer(((10^6 * 10^decimals) - uint256(stor361.field_0)), 0, this.address);
                require sub_6b1b2490 + (-10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2 / 10^18) >= sub_6b1b2490
                sub_6b1b2490 += -10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2 / 10^18
            else:
                require (10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) + (25 * 10^6 * 3600)
                require (25 * 10^12 * 3600 * 10^decimals) - (25 * 10^6 * 3600 * uint256(stor361.field_0)) + (10^16 * 10^decimals * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * uint256(stor361.field_0) * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) / (10^10 * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) + (25 * 10^6 * 3600) == (10^6 * 10^decimals) - uint256(stor361.field_0)
                require 10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2 <= (25 * 10^12 * 3600 * 10^decimals) - (25 * 10^6 * 3600 * uint256(stor361.field_0)) + (10^16 * 10^decimals * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * uint256(stor361.field_0) * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18)
                require this.address
                require totalSupply + (10^6 * 10^decimals) - uint256(stor361.field_0) >= totalSupply
                totalSupply = totalSupply + (10^6 * 10^decimals) - uint256(stor361.field_0)
                require balanceOf[address(this.address)] + (10^6 * 10^decimals) - uint256(stor361.field_0) >= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] + (10^6 * 10^decimals) - uint256(stor361.field_0)
                emit Transfer(((10^6 * 10^decimals) - uint256(stor361.field_0)), 0, this.address);
                require sub_6b1b2490 + ((25 * 10^12 * 3600 * 10^decimals) - (25 * 10^6 * 3600 * uint256(stor361.field_0)) + (10^16 * 10^decimals * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * uint256(stor361.field_0) * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2) / 10^18) >= sub_6b1b2490
                sub_6b1b2490 += (25 * 10^12 * 3600 * 10^decimals) - (25 * 10^6 * 3600 * uint256(stor361.field_0)) + (10^16 * 10^decimals * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * uint256(stor361.field_0) * totalSupply + (10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18 / 10^18) - (10^10 * ((10^6 * 10^decimals) + -uint256(stor361.field_0) + 10^18)^2 + (-1 * 10^6 * 10^decimals) + uint256(stor361.field_0) - 10^18 / 10^18 / 2) / 10^18
            require 10^6 * 10^decimals >= uint256(stor361.field_0)
            uint256(stor361.field_0) = 10^6 * 10^decimals
}



}
