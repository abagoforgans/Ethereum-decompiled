contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor11; offset 20
uint256 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor1 = 10^14
    bool(stor2.length) = 0
    stor2.length.field_1 = 26
    stor2.length.field_8 = 'MineableBonusEthereumToken' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'MBET' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 10^15
    stor6 = 157553
    stor7 = 100 * 10^6
    require not msg.value
    stor0 = msg.sender
    uint256(stor11.field_0)--
    uint256(stor11.field_0) = Mask(236, 0, stor11.field_20)
    stor12[address(msg.sender)] = stor1
    stor9 = block.number + stor6
    return code.data[626 len 4217]
}



// =====================  Runtime code  =====================


address owner;
uint256 supply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 price;
uint256 durationInBlocks;
uint256 miningReward;
uint256 amountRaised;
uint256 deadline;
uint256 tokensSold;
uint256 stor11;
mapping of uint256 balanceOf;
mapping of uint256 successesOf;
mapping of uint256 failsOf;

function supply() {
    return supply
}

function name() {
    return name[0 len name.length]
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
}

function miningReward() {
    return miningReward
}

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    return uint256(balanceOf[arg1])
}

function failsOf(address arg1) {
    return failsOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function successesOf(address arg1) {
    return successesOf[arg1]
}

function durationInBlocks() {
    return durationInBlocks
}

function isOwner() {
    return (msg.sender == owner)
}

function isCrowdsale() {
    return (block.number < deadline)
}

function addressIsOwner(address arg1) {
    return (arg1 == owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require uint256(balanceOf[address(msg.sender)]) >= arg2
    require uint256(balanceOf[address(arg1)]) + arg2 >= uint256(balanceOf[address(arg1)])
    uint256(balanceOf[address(msg.sender)]) -= arg2
    uint256(balanceOf[address(arg1)]) += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if msg.sender == owner:
        call owner with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundTransfer(owner, amountRaised, 0);
        amountRaised = 0
    else:
        if block.number < deadline:
            require msg.value
            require price
            require 100 * 10^6 * msg.value / price >= 100 * 10^6
            uint256(balanceOf[address(msg.sender)]) += 100 * 10^6 * msg.value / price
            supply += 100 * 10^6 * msg.value / price
            tokensSold += 100 * 10^6 * msg.value / price
            emit Transfer((100 * 10^6 * msg.value / price), 0, this.address);
            emit Transfer((100 * 10^6 * msg.value / price), this.address, msg.sender);
            amountRaised += msg.value
        else:
            require not msg.value
            hash = sha256hash(block.hash(block.number - 1) + msg.sender) 
            require sha256hash.result
            require stor11
            require supply
            if hash / stor11 >= (Mask(236, 20, 933233 * Mask(236, 0, balanceOf[address(msg.sender)]) / supply) >> 20) + 10485:
                failsOf[address(msg.sender)]++
            else:
                uint256(balanceOf[address(msg.sender)]) = uint256(balanceOf[address(msg.sender)]) + miningReward + (10000 * hash / stor11)
                supply = supply + miningReward + (10000 * hash / stor11)
                emit Transfer((miningReward + (10000 * hash / stor11)), 0, this.address);
                emit Transfer((miningReward + (10000 * hash / stor11)), this.address, msg.sender);
                successesOf[address(msg.sender)]++
}



}
