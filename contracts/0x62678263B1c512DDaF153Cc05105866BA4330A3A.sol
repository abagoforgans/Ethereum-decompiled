contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_1b063908Address;
mapping of struct sub_06690388;
uint256 sub_23a9cf9a;
address stor4;

function sub_06690388(?) {
    return sub_06690388[arg1].field_0, sub_06690388[arg1].field_256, sub_06690388[arg1].field_512, sub_06690388[arg1].field_768
}

function sub_1b063908(?) {
    return sub_1b063908Address
}

function sub_23a9cf9a(?) {
    return sub_23a9cf9a
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function _fallback() payable {
    require msg.sender == owner
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelSale(uint256 arg1) {
    require not stor0
    if sub_06690388[arg1].field_256 != msg.sender:
        require msg.sender == owner
    sub_06690388[arg1].field_0 = 0
    sub_06690388[arg1].field_256 = 0
    sub_06690388[arg1].field_512 = 0
    sub_06690388[arg1].field_768 = 0
    emit 0x8ed74830: sub_06690388[arg1].field_0, arg1, sub_06690388[arg1].field_256
}

function changePrice(uint256 arg1, uint256 arg2) {
    require not stor0
    require sub_06690388[arg1].field_256 == msg.sender
    require ext_code.size(sub_1b063908Address)
    call sub_1b063908Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == sub_06690388[arg1].field_256
    require arg2 > 0
    sub_06690388[arg1].field_512 = arg2
    emit 0xc5f15c24: sub_06690388[arg1].field_0, arg2, arg1
}

function createSale(uint256 arg1, uint256 arg2) {
    require not stor0
    require ext_code.size(sub_1b063908Address)
    call sub_1b063908Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2 > 0
    require ext_code.size(sub_1b063908Address)
    call sub_1b063908Address.isApprovedForAll(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_06690388[arg1].field_0 = sha3(block.timestamp, msg.sender, arg1)
    sub_06690388[arg1].field_256 = msg.sender
    sub_06690388[arg1].field_512 = arg2
    sub_06690388[arg1].field_768 = block.timestamp
    emit 0x3b0f3d6b: sha3(block.timestamp, msg.sender, arg1), arg2, block.timestamp, arg1, msg.sender
}

function sub_9b1225c4(?) payable {
    require not stor0
    require sub_06690388[arg1].field_512 > 0
    if not sub_06690388[arg1].field_256:
        revert with 0, '1'
    if msg.sender == sub_06690388[arg1].field_256:
        revert with 0, '2'
    require ext_code.size(sub_1b063908Address)
    call sub_1b063908Address.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != sub_06690388[arg1].field_256:
        revert with 0, '3'
    if sub_06690388[arg1].field_512 != msg.value:
        revert with 0, '4'
    require ext_code.size(sub_1b063908Address)
    call sub_1b063908Address.isApprovedForAll(address arg1, address arg2) with:
         gas gas_remaining wei
        args sub_06690388[arg1].field_256, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '5'
    if not sub_06690388[arg1].field_512:
        sub_06690388[arg1].field_0 = 0
        sub_06690388[arg1].field_256 = 0
        sub_06690388[arg1].field_512 = 0
        sub_06690388[arg1].field_768 = 0
        require ext_code.size(sub_1b063908Address)
        call sub_1b063908Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_06690388[arg1].field_256, msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 <= sub_06690388[arg1].field_512
        call sub_06690388[arg1].field_256 with:
           value sub_06690388[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor4 with:
             gas 2300 wei
    else:
        require sub_23a9cf9a * sub_06690388[arg1].field_512 / sub_06690388[arg1].field_512 == sub_23a9cf9a
        sub_06690388[arg1].field_0 = 0
        sub_06690388[arg1].field_256 = 0
        sub_06690388[arg1].field_512 = 0
        sub_06690388[arg1].field_768 = 0
        require ext_code.size(sub_1b063908Address)
        call sub_1b063908Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_06690388[arg1].field_256, msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require sub_23a9cf9a * sub_06690388[arg1].field_512 / 100 <= sub_06690388[arg1].field_512
        call sub_06690388[arg1].field_256 with:
           value sub_06690388[arg1].field_512 - (sub_23a9cf9a * sub_06690388[arg1].field_512 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor4 with:
           value sub_23a9cf9a * sub_06690388[arg1].field_512 / 100 wei
             gas 2300 * is_zero(value) wei
    emit 0x997eafcf: sub_06690388[arg1].field_0, sub_06690388[arg1].field_512, arg1, sub_06690388[arg1].field_256, msg.sender
}



}
