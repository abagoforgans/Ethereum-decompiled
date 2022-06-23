contract main {




// =====================  Runtime code  =====================


#
#  - finalize()
#
address contractOwner;
mapping of uint8 sub_5ead3d4b;
uint8 stor2;
array of address sub_0ed7e499;
address marketAddress;
uint256 sub_bc3fde4e;
uint256 sub_87730309;
uint256 sub_d87a328a;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint256 stor9; offset 16
mapping of uint256 sub_7b8c8de1;
uint256 donorCount;
uint8 stor12;

function sub_0ed7e499(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0ed7e499.length
    return sub_0ed7e499[arg1]
}

function sub_306a7ce0(?) {
    return bool(uint8(stor9.field_8))
}

function sub_5ead3d4b(?) {
    require calldata.size - 4 >= 32
    return sub_5ead3d4b[arg1]
}

function sub_7b8c8de1(?) {
    require calldata.size - 4 >= 32
    return sub_7b8c8de1[arg1]
}

function sub_87730309(?) {
    return sub_87730309
}

function marketAddress() {
    return marketAddress
}

function sub_bc3fde4e(?) {
    return sub_bc3fde4e
}

function donorCount() {
    return donorCount
}

function contractOwner() {
    return contractOwner
}

function sub_d87a328a(?) {
    return sub_d87a328a
}

function sub_e8e3ae69(?) {
    return bool(uint8(stor9.field_0))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor9.field_16):
        return sub_7b8c8de1[address(arg1)]
    else:
        return 0
}

function sub_5f95eb4d(?) {
    require calldata.size - 4 >= 32
    require sub_5ead3d4b[address(arg1)] > 0
    require stor2
    return (eth.balance(this.address) * sub_5ead3d4b[address(arg1)] / stor2)
}

function _fallback() payable {
    require block.timestamp <= sub_bc3fde4e
    require msg.value > 0
    if not sub_7b8c8de1[address(msg.sender)]:
        if msg.value > 0:
            donorCount++
    sub_7b8c8de1[address(msg.sender)] += msg.value
    emit Received(msg.value, msg.sender);
}

function sub_07171d7f(?) {
    require block.timestamp > sub_d87a328a
    require msg.sender == contractOwner
    Mask(240, 0, stor9.field_16) = 1
    call contractOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1ac1e39f: eth.balance(this.address), contractOwner
}

function claim() {
    require not stor12
    stor12 = 1
    require block.timestamp > sub_bc3fde4e
    if not uint8(stor9.field_0):
        require block.timestamp > sub_87730309
    if uint8(stor9.field_8):
        require block.timestamp > sub_87730309
    require not uint8(stor9.field_16)
    require sub_7b8c8de1[address(msg.sender)] > 0
    sub_7b8c8de1[address(msg.sender)] = 0
    if not uint8(stor9.field_16):
        call msg.sender with:
           value sub_7b8c8de1[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(sub_7b8c8de1[address(msg.sender)], msg.sender);
    else:
        call msg.sender with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claimed(0, msg.sender);
    stor12 = 0
}



}
