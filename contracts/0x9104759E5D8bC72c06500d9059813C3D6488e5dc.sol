contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor3 = code.data[4944 len 32]
    stor6 = 0
    return code.data[74 len 4870]
}



// =====================  Runtime code  =====================


mapping of uint256 stor1;
address configAddress;
address owner;
uint256 stor4;
mapping of struct stor5;
uint256 totalOrders;

function totalOrders() payable {
    return totalOrders
}

function getConfigAddress() payable {
    return configAddress
}

function config() payable {
    return configAddress
}

function getOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function sub_d41828e3(?) payable {
    return (1 == stor5[address(arg1)].field_512)
}

function getOrder(address arg1) payable {
    return address(arg1), stor5[address(arg1)].field_256
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function isAdmin(address arg1) payable {
    call configAddress.0x24d7806c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function txFee() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/txfee' << 144)
    require ext_call.success
    return ext_call.return_data[0]
}

function getBase() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_65448a76(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c1a27089(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/recastfee' << 112)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d0f0e22f(?) payable {
    call configAddress.0xa3f92bc6 with:
         gas gas_remaining - 25050 wei
        args ('settings/nonmintsku' << 104)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4a619fa6(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function redemptionFee() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/redemptionfee' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_82e717f7(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/confirmations' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4e03ab49(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function isEmployee(address arg1) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function billingPeriod() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d3dd22da(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f74786665656d6178000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function goldRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_46396e18(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_694d98e5(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f7265636173740000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function vendorRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function minterContract() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function auditorRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function custodianRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_a0b9009b(?) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    return stor1[address(arg1)]
}

function isGoldRegistry(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return (ext_call.return_data[12 len 20] == arg1)
}

function sub_95655740(?) payable {
    if msg.sender == address(owner):
        codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        if callcode.return_data[0]:
            stor1[address(arg1)] = arg2
}

function registerEmployee(address arg1) payable {
    if msg.sender == address(owner):
        codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0xccd7ef98 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        require callcode.return_data[0]
        emit 0x2bbbd450: arg1, tx.origin
}

function sub_281dbd11(?) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
    call arg1.0xfe188102 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function isVendor(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xee54d54f with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isAuditor(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x49b90557 with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isCustodian(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function unregisterEmployee(address arg1) payable {
    if msg.sender == address(owner):
        codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x934a11b2 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        require callcode.return_data[0]
        stor1[address(arg1)] = 0
        emit RemoveEmployee(arg1, tx.origin);
}

function createOrder(address arg1, bytes32 arg2) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    if stor5[address(arg1)].field_512:
        return 0
    stor5[address(arg1)].field_256 = arg2
    stor5[address(arg1)].field_0 = arg1 or Mask(96, 160, stor5[address(arg1)].field_0)
    stor5[address(arg1)].field_512 = 1
    totalOrders++
    emit 0x4fed49ea: arg1, arg2
    return 1
}

function sub_38401c43(?) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x38401c43 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.return_data[0]
    call arg1.0xe6a29666 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_59d76fe7(?) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x59d76fe7 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.return_data[0]
    call arg1.0x695ae07d with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_8956936c(?) payable {
    codecall 0x3700a8e6acdc6bc88cb655a0947d48ed722961d8.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    if callcode.return_data[0]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x63d88608 with:
             gas gas_remaining - 25050 wei
            args address(arg1), arg2
        require ext_call.return_data[0]
        stor5[address(arg1)].field_512 = 2
        emit 0xeababc25: arg1, stor5[address(arg1)].field_256
}



}
