contract main {




// =====================  Runtime code  =====================


address sub_23be605dAddress;
address sub_b04c6a0bAddress;
address sub_3b6e4ba0Address;
uint128 stor3; offset 160
address stor3;
uint256 stor3;
address stor4;
uint256 stor5;
uint8 stor6;

function sub_23be605d(?) {
    return sub_23be605dAddress
}

function sub_3b6e4ba0(?) {
    return sub_3b6e4ba0Address
}

function sub_b04c6a0b(?) {
    return sub_b04c6a0bAddress
}

function _fallback() payable {
  stop
}

function sub_3da8676f(?) {
    return address(stor3.field_0), stor4, stor5, bool(stor6)
}

function sub_24e89ba7(?) {
    if sub_23be605dAddress != msg.sender:
        if sub_b04c6a0bAddress != msg.sender:
            require msg.sender == sub_3b6e4ba0Address
    address(stor3.field_0) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
}

function sub_4e4dd230(?) {
    if sub_23be605dAddress != msg.sender:
        if sub_b04c6a0bAddress != msg.sender:
            require msg.sender == sub_3b6e4ba0Address
    require arg1 <= eth.balance(this.address)
    require not stor6
    uint256(stor3.field_0) = Mask(96, 0, stor3.field_160)
    stor4 = arg2
    stor5 = arg1
    stor6 = 1
}

function changeAdmin(address arg1) {
    if sub_23be605dAddress != msg.sender:
        if sub_b04c6a0bAddress != msg.sender:
            require msg.sender == sub_3b6e4ba0Address
    require not stor6
    if msg.sender == sub_23be605dAddress:
        sub_23be605dAddress = arg1
    else:
        if msg.sender == sub_b04c6a0bAddress:
            sub_b04c6a0bAddress = arg1
        else:
            if msg.sender == sub_3b6e4ba0Address:
                sub_3b6e4ba0Address = arg1
}

function sub_47d658d5(?) {
    if sub_23be605dAddress != msg.sender:
        if sub_b04c6a0bAddress != msg.sender:
            require msg.sender == sub_3b6e4ba0Address
    require arg1 <= eth.balance(this.address)
    require 1 == bool(stor6)
    require arg1 == stor5
    require stor4 == arg2
    require address(stor3.field_0) != msg.sender
    address(stor3.field_0) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
