contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;
uint256 stor7;

function _fallback() payable {
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor3 = code.data[5417 len 32]
    stor7 = 0
    return code.data[74 len 5343]
}



// =====================  Runtime code  =====================


mapping of uint256 stor1;
address configAddress;
address owner;
uint256 stor4;
mapping of struct sub_2e5d5385;
mapping of struct sub_699f84dd;
uint256 totalOrders;

function sub_2e5d5385(?) payable {
    return sub_2e5d5385[arg1].field_1280
}

function getTotalOrders() payable {
    return totalOrders
}

function getProduct(bytes32 arg1) payable {
    return sub_699f84dd[arg1].field_0, sub_699f84dd[arg1].field_256, sub_699f84dd[arg1].field_512
}

function getConfigAddress() payable {
    return configAddress
}

function getOrder(bytes32 arg1) payable {
    return sub_2e5d5385[arg1].field_0, sub_2e5d5385[arg1].field_512
}

function sub_699f84dd(?) payable {
    return sub_699f84dd[arg1].field_0
}

function config() payable {
    return configAddress
}

function sub_7eb44476(?) payable {
    return sub_2e5d5385[arg1].field_0
}

function sub_8726541b(?) payable {
    return sub_699f84dd[arg1].field_256
}

function getOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
}

function sub_9fcdee9d(?) payable {
    return sub_2e5d5385[arg1].field_512
}

function sub_aa5594ca(?) payable {
    return sub_699f84dd[arg1].field_512
}

function sub_febfb047(?) payable {
    return sub_2e5d5385[arg1].field_1024
}

function _fallback() payable {
  stop
}

function sub_640547d9(?) payable {
    return (sub_2e5d5385[arg1].field_256 == 1)
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

function deleteProduct(bytes32 arg1) payable {
    if msg.sender == address(owner):
        sub_699f84dd[arg1].field_0 = 0
        sub_699f84dd[arg1].field_256 = 0
        sub_699f84dd[arg1].field_512 = 0
        emit 0x5d8f2826: arg1
}

function isEmployee(address arg1) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
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
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
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
        codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        if callcode.return_data[0]:
            stor1[address(arg1)] = arg2
}

function registerEmployee(address arg1) payable {
    if msg.sender == address(owner):
        codecall 0x236e8216991843c32b6ef7036f1765366670369a.0xccd7ef98 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        require callcode.return_data[0]
        emit 0x2bbbd450: arg1, tx.origin
}

function sub_e80244ff(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).active() with:
         gas gas_remaining - 25050 wei
    return ext_call.return_data[0]
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
        codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x934a11b2 with:
             gas gas_remaining - 50 wei
            args 0, arg1
        require callcode.return_code
        require callcode.return_data[0]
        stor1[address(arg1)] = 0
        emit RemoveEmployee(arg1, tx.origin);
}

function sub_423864c6(?) payable {
    if msg.sender == address(owner):
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/base' << 152)
        require ext_call.success
        sub_699f84dd[arg1].field_0 = arg2 * ext_call.return_data[0]
        sub_699f84dd[arg1].field_256 = arg3
        sub_699f84dd[arg1].field_512 = arg4
        emit 0x9d75dddd: arg1, arg2
}

function sub_198876d8(?) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, tx.origin
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    if sub_2e5d5385[arg1].field_256 != 1:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x97eb103e with:
         gas gas_remaining - 25050 wei
        args 0, uint32(msg.sender), arg2, arg3, sub_699f84dd[stor5[arg1].field_0].field_0, sub_2e5d5385[arg1].field_0, sub_2e5d5385[arg1].field_1024, arg4
    if not ext_call.return_data[0]:
        return 0
    if sub_2e5d5385[arg1].field_256 != 1:
        return 0
    sub_2e5d5385[arg1].field_256 = 2
    sub_2e5d5385[arg1].field_768 = msg.sender or Mask(96, 160, sub_2e5d5385[arg1].field_768)
    emit 0x97db364e: arg1, tx.origin
    return 1
}

function sub_7ec1b1db(?) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 0, msg.sender
    require callcode.return_code
    if callcode.return_data[0]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).active() with:
             gas gas_remaining - 25050 wei
        require ext_call.return_data[0]
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x35c80c8c with:
             gas gas_remaining - 25050 wei
            args arg4
        require ext_call.return_data[0]
        if not sub_2e5d5385[arg1].field_256:
            sub_2e5d5385[arg1].field_0 = arg2
            sub_2e5d5385[arg1].field_512 = arg3 or Mask(96, 160, sub_2e5d5385[arg1].field_512)
            sub_2e5d5385[arg1].field_256 = 1
            sub_2e5d5385[arg1].field_768 = 0
            sub_2e5d5385[arg1].field_1024 = arg4 or Mask(96, 160, sub_2e5d5385[arg1].field_1024)
            sub_2e5d5385[arg1].field_1280 = arg5
            totalOrders++
            emit 0x89a0a161: arg1, arg2, address(arg3)
}



}
