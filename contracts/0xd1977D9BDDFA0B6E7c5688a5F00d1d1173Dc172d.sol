contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor102;
mapping of uint256 balance;

function owner() {
    return owner
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
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

function getBalanceInEth(address arg1) {
    require calldata.size - 4 >= 32
    return (balance[address(arg1)] * stor102)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendCoin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    emit OwnershipTransferred(0, owner);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    balance[stor51] = 10000
    stor102 = 2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
