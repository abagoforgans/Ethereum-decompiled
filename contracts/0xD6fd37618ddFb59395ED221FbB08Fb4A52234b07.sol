contract main {




// =====================  Runtime code  =====================


const unlockVersion = 2


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 grossNetworkProduct;
uint256 totalDiscountGranted;
mapping of struct locks;

function locks(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(locks[arg1].field_0), locks[arg1].field_256, locks[arg1].field_512
}

function owner() payable {
    return owner
}

function totalDiscountGranted() payable {
    return totalDiscountGranted
}

function grossNetworkProduct() payable {
    return grossNetworkProduct
}

function isOwner() payable {
    return (msg.sender == owner)
}

function _fallback() payable {
    revert with 0, 'NO_FALLBACK'
}

function computeAvailableDiscountFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recordConsumedDiscount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not locks[msg.sender].field_0:
        revert with 0, 'ONLY_LOCKS'
    totalDiscountGranted += arg1
}

function recordKeyPurchase(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not locks[msg.sender].field_0:
        revert with 0, 'ONLY_LOCKS'
    grossNetworkProduct += arg1
    locks[msg.sender].field_256 += arg1
}

function sub_b8199af2(?) payable {
    require calldata.size - 4 >= 128
    create contract with 0 wei
                    code: code.data[2056 len 14385], msg.sender, arg1, address(arg2), arg3, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    locks[address(create.new_address)].field_0 = 1
    locks[address(create.new_address)].field_256 = 0
    locks[address(create.new_address)].field_512 = 0
    emit 0x1017ed19: msg.sender, address(create.new_address)
    return address(create.new_address)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16441 len 46], mem[210 len 18]
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[16441 len 46], mem[210 len 18]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
