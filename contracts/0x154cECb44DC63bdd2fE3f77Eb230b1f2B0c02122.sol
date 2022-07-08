contract main {




// =====================  Runtime code  =====================


address sub_ca80b22dAddress;
address sub_25726414Address;
array of address returnUserControl;
uint8 stor3; offset 64
uint8 stor3; offset 72
uint32 sub_ae1419fe;
uint32 stor3; offset 32
uint256 stor3; offset 72
uint256 stor3; offset 64
uint256 sub_ef027ba1; offset 32
mapping of uint8 stor4;

function sub_25726414(?) payable {
    return sub_25726414Address
}

function sub_59b02078(?) payable {
    return bool(uint8(stor3.field_72))
}

function user_control_accounts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < returnUserControl.length
    return returnUserControl[arg1]
}

function sub_ae1419fe(?) payable {
    return Mask(32, 224, sub_ae1419fe)
}

function sub_b004556f(?) payable {
    return bool(uint8(stor3.field_64))
}

function sub_ca80b22d(?) payable {
    return sub_ca80b22dAddress
}

function returnIsValidSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function returnUserControlAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < returnUserControl.length
    return returnUserControl[arg1]
}

function sub_ef027ba1(?) payable {
    return (sub_ef027ba1 << 224)
}

function _fallback() payable {
    revert
}

function sub_14445432(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    sub_ae1419fe = arg1
}

function sub_728b3d58(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ca80b22dAddress
    sub_25726414Address = arg1
}

function sub_235957a7(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    uint32(stor3.field_32) = arg1
}

function addSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    stor4[address(arg1)] = 1
}

function removeSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    stor4[address(arg1)] = 0
}

function sub_130720da(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    Mask(184, 0, stor3.field_72) = Mask(184, 0, arg1)
}

function sub_91d436c4(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_25726414Address
    Mask(192, 0, stor3.field_64) = Mask(192, 0, arg1)
}

function changeUserControlAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_ca80b22dAddress
    require arg1 < returnUserControl.length
    returnUserControl[arg1] = arg2
}



}
