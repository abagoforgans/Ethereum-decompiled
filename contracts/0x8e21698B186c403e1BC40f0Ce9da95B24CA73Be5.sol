contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 3373]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;

function frozen() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFrozen(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    emit Frozen(bool(uint8(stor0.field_160)));
}

function giftEth(address arg1, uint256 arg2, string arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor0.field_160)
    mem[ceil32(arg3.length) + 128 len 1728] = code.data[1602 len 1728]
    create contract with callvalue wei
                    code: code.data[1602 len 1728], msg.sender, address(arg1), arg2, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    require create.new_address
    emit GiftGenerated(msg.value, arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1, address(create.new_address));
}



}
