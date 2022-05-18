contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 publicSell;
uint8 stor10;
mapping of uint8 stor11;
mapping of struct stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allowTransfers() {
    return bool(stor10)
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function publicSell() {
    return publicSell
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setAllowTransfers(bool arg1) {
    require msg.sender == owner
    stor10 = uint8(arg1)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function balanceOf(address arg1) {
    require stor1[address(arg1)] + stor12[address(arg1)].field_256 >= stor1[address(arg1)]
    return (stor1[address(arg1)] + stor12[address(arg1)].field_256)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroyToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Transfer(arg2, this.address, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferMined(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor12[address(arg1)].field_0 + arg2 >= stor12[address(arg1)].field_0
    stor12[address(arg1)].field_0 += arg2
    require stor12[address(arg1)].field_256 + arg2 >= stor12[address(arg1)].field_256
    stor12[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require stor10
        require not stor11[address(arg1)]
        require not stor11[address(arg2)]
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    require arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require stor10
        require not stor11[address(msg.sender)]
        require not stor11[address(arg1)]
    if block.timestamp >= publicSell:
        if block.timestamp - publicSell / 720 * 24 * 3600 >= 7:
            if stor12[address(msg.sender)].field_256 > 0:
                require 0 <= stor12[address(msg.sender)].field_256
                stor12[address(msg.sender)].field_256 = 0
                require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 >= stor1[address(msg.sender)]
                stor1[address(msg.sender)] += stor12[address(msg.sender)].field_256
                emit MinedBalancesUnlocked(stor12[address(msg.sender)].field_256, msg.sender);
        else:
            if block.timestamp - publicSell / 720 * 24 * 3600 >= 6:
                if stor12[address(msg.sender)].field_256 > 10 * stor12[address(msg.sender)].field_0 / 100:
                    require 10 * stor12[address(msg.sender)].field_0 / 100 <= stor12[address(msg.sender)].field_256
                    stor12[address(msg.sender)].field_256 = 10 * stor12[address(msg.sender)].field_0 / 100
                    require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (10 * stor12[address(msg.sender)].field_0 / 100) >= stor1[address(msg.sender)]
                    stor1[address(msg.sender)] = stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (10 * stor12[address(msg.sender)].field_0 / 100)
                    emit MinedBalancesUnlocked((stor12[address(msg.sender)].field_256 - (10 * stor12[address(msg.sender)].field_0 / 100)), msg.sender);
            else:
                if block.timestamp - publicSell / 720 * 24 * 3600 >= 3:
                    if stor12[address(msg.sender)].field_256 > 20 * stor12[address(msg.sender)].field_0 / 100:
                        require 20 * stor12[address(msg.sender)].field_0 / 100 <= stor12[address(msg.sender)].field_256
                        stor12[address(msg.sender)].field_256 = 20 * stor12[address(msg.sender)].field_0 / 100
                        require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (20 * stor12[address(msg.sender)].field_0 / 100) >= stor1[address(msg.sender)]
                        stor1[address(msg.sender)] = stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (20 * stor12[address(msg.sender)].field_0 / 100)
                        emit MinedBalancesUnlocked((stor12[address(msg.sender)].field_256 - (20 * stor12[address(msg.sender)].field_0 / 100)), msg.sender);
                else:
                    if block.timestamp - publicSell / 720 * 24 * 3600 >= 2:
                        if stor12[address(msg.sender)].field_256 > 40 * stor12[address(msg.sender)].field_0 / 100:
                            require 40 * stor12[address(msg.sender)].field_0 / 100 <= stor12[address(msg.sender)].field_256
                            stor12[address(msg.sender)].field_256 = 40 * stor12[address(msg.sender)].field_0 / 100
                            require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (40 * stor12[address(msg.sender)].field_0 / 100) >= stor1[address(msg.sender)]
                            stor1[address(msg.sender)] = stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (40 * stor12[address(msg.sender)].field_0 / 100)
                            emit MinedBalancesUnlocked((stor12[address(msg.sender)].field_256 - (40 * stor12[address(msg.sender)].field_0 / 100)), msg.sender);
                    else:
                        if block.timestamp - publicSell / 720 * 24 * 3600 >= 1:
                            if stor12[address(msg.sender)].field_256 > 60 * stor12[address(msg.sender)].field_0 / 100:
                                require 60 * stor12[address(msg.sender)].field_0 / 100 <= stor12[address(msg.sender)].field_256
                                stor12[address(msg.sender)].field_256 = 60 * stor12[address(msg.sender)].field_0 / 100
                                require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (60 * stor12[address(msg.sender)].field_0 / 100) >= stor1[address(msg.sender)]
                                stor1[address(msg.sender)] = stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (60 * stor12[address(msg.sender)].field_0 / 100)
                                emit MinedBalancesUnlocked((stor12[address(msg.sender)].field_256 - (60 * stor12[address(msg.sender)].field_0 / 100)), msg.sender);
                        else:
                            if block.timestamp - publicSell / 720 * 24 * 3600 >= 0:
                                if stor12[address(msg.sender)].field_256 > 80 * stor12[address(msg.sender)].field_0 / 100:
                                    require 80 * stor12[address(msg.sender)].field_0 / 100 <= stor12[address(msg.sender)].field_256
                                    stor12[address(msg.sender)].field_256 = 80 * stor12[address(msg.sender)].field_0 / 100
                                    require stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (80 * stor12[address(msg.sender)].field_0 / 100) >= stor1[address(msg.sender)]
                                    stor1[address(msg.sender)] = stor1[address(msg.sender)] + stor12[address(msg.sender)].field_256 - (80 * stor12[address(msg.sender)].field_0 / 100)
                                    emit MinedBalancesUnlocked((stor12[address(msg.sender)].field_256 - (80 * stor12[address(msg.sender)].field_0 / 100)), msg.sender);
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
