contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor6;

function _fallback() payable {
    stor0 = code.data[9547 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor6 = 1
    return code.data[82 len 9465]
}



// =====================  Runtime code  =====================


address configAddress;
address owner;
uint256 stor1;
mapping of struct sub_1a8b3383;
uint8 isActive;
uint256 totalWeight;

function active() payable {
    return isActive
}

function sub_1a8b3383(?) payable {
    return sub_1a8b3383[address(arg1)].field_0
}

function isActive() payable {
    return isActive
}

function getStatus(address arg1) payable {
    return sub_1a8b3383[address(arg1)].field_160
}

function getConfigAddress() payable {
    return configAddress
}

function sub_6670c4bf(?) payable {
    return sub_1a8b3383[address(arg1)].field_2816, 
           sub_1a8b3383[address(arg1)].field_2816,
           sub_1a8b3383[address(arg1)].field_2816,
           sub_1a8b3383[address(arg1)].field_3072,
           sub_1a8b3383[address(arg1)].field_3328,
           sub_1a8b3383[address(arg1)].field_3584,
           sub_1a8b3383[address(arg1)].field_3840
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

function totalWeight() payable {
    return totalWeight
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
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

function isRegistered(address arg1) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 2, arg1
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

function sub_aae36ca8(?) payable {
    if sub_1a8b3383[address(arg1)].field_0 != tx.origin:
        return 0
    if sub_1a8b3383[address(arg1)].field_160 != 2:
        return 0
    sub_1a8b3383[address(arg1)].field_160 = 4
    emit 0x56e31dfd: arg1, 8, tx.origin
    return 1
}

function isVendorOf(address arg1, address arg2) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args sha3(address(arg2), 4), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function isCustodianOf(address arg1, address arg2) payable {
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args sha3(address(arg2), 5), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function isGoldRegistry(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return (ext_call.return_data[12 len 20] == arg1)
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

function getInfo(address arg1) payable {
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x6164da3f with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    return callcode.return_data[31 len 1], 
           callcode.return_data[32],
           callcode.return_data[64],
           callcode.return_data[96],
           callcode.return_data[128]
}

function sub_5d77a89b(?) payable {
    if sub_1a8b3383[address(arg1)].field_0 != tx.origin:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 2, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    if sub_1a8b3383[address(arg1)].field_160 != 2:
        return 0
    sub_1a8b3383[address(arg1)].field_0 = arg2 or Mask(96, 160, sub_1a8b3383[address(arg1)].field_0)
    emit 0x56e31dfd: arg1, 2, address(arg2)
    return 1
}

function sub_65afd0ed(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x493b26b3 with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: arg1, 11, tx.origin
    return 1
}

function sub_0627f5a9(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    return (block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0])
}

function submitAudit(address arg1, bytes32 arg2, bool arg3) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x49b90557 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0xf9993e41 with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x3414178 with:
         gas gas_remaining - 50 wei
        args 0, 3, address(arg1), arg2, arg3, address(msg.sender)
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: arg1, 6, tx.origin
    return 1
}

function sub_d8ba5d51(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x49b90557 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if arg2 != 1:
        isActive = 0
    else:
        if arg1 != totalWeight:
            isActive = 0
        else:
            isActive = 1
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args ('wallet/txfee' << 160)
            require ext_call.success
            call address(ext_call.return_data[0]).release() with:
                 gas gas_remaining - 25050 wei
    emit 0x56e31dfd: this.address, 7, tx.origin
    return 1
}

function sub_63d88608(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x5975bfa3 with:
         gas gas_remaining - 50 wei
        args 0, 3, address(arg1), arg2, tx.origin
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0xa9a6a2bb with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    totalWeight += callcode.return_data[0]
    emit 0x56e31dfd: arg1, 1, tx.origin
    return 1
}

function sub_38401c43(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if sub_1a8b3383[address(arg1)].field_160 != 4:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/redemptionfee' << 80)
    require ext_call.success
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x236873f3 with:
         gas gas_remaining - 50 wei
        args 3, address(arg1), ext_call.return_data[0]
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: arg1, 9, tx.origin
    return 1
}

function sub_59d76fe7(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    if sub_1a8b3383[address(arg1)].field_160 != 4:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x934a11b2 with:
         gas gas_remaining - 50 wei
        args sha3(address(msg.sender), 5), arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    totalWeight -= sub_1a8b3383[address(arg1)].field_768
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x7f3848bc with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: arg1, 10, tx.origin
    return 1
}

function sub_87352ed5(?) payable {
    call configAddress.0xa3f92bc6 with:
         gas gas_remaining - 25050 wei
        args ('settings/nonmintsku' << 104)
    require ext_call.success
    if sub_1a8b3383[address(msg.sender)].field_512 == ext_call.return_data[0]:
        return 0
    if sub_1a8b3383[address(msg.sender)].field_160 != 3:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f7265636173740000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x2c2d3bf1 with:
         gas gas_remaining - 25050 wei
        args msg.sender, tx.origin, sub_1a8b3383[address(msg.sender)].field_768
    if not ext_call.return_data[0]:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0xc5ad2603 with:
         gas gas_remaining - 50 wei
        args 3, msg.sender, tx.origin
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: msg.sender, 5, tx.origin
    return 1
}

function sub_c4336036(?) payable {
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x22c800c4 with:
         gas gas_remaining - 50 wei
        args 3, arg1
    require callcode.return_code
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).getVendorName(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(callcode.return_data[0])
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    call address(ext_call.return_data[0]).getCustodianName(address rg1) with:
         gas gas_remaining - 25050 wei
        args address(callcode.return_data[64])
    return address(callcode.return_data[0]), 
           callcode.return_data[32],
           ext_call.return_data[0],
           address(callcode.return_data[64]),
           callcode.return_data[96],
           ext_call.return_data[0]
}

function sub_97eb103e(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xee54d54f with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if not ext_call.return_data[0]:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0xccd7ef98 with:
         gas gas_remaining - 50 wei
        args 2, arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0xccd7ef98 with:
         gas gas_remaining - 50 wei
        args sha3(address(msg.sender), 4), arg1
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    call arg6.createOrder(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x80718ce7 with:
         gas gas_remaining - 50 wei
        args 0, 3, address(arg1), arg2, arg3, arg4, arg5, address(arg6), address(arg7), msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    emit 0x56e31dfd: arg1, 0, tx.origin
    return 1
}

function getFee(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/rate' << 152)
        require ext_call.success
        return ((0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560)
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    return ((sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560)
}

function sub_511cef7a(?) payable {
    call configAddress.0xa3f92bc6 with:
         gas gas_remaining - 25050 wei
        args ('settings/nonmintsku' << 104)
    require ext_call.success
    if sub_1a8b3383[address(msg.sender)].field_512 == ext_call.return_data[0]:
        return 0
    if sub_1a8b3383[address(msg.sender)].field_0 != tx.origin:
        return 0
    if sub_1a8b3383[address(msg.sender)].field_160 != 2:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 2, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(msg.sender)].field_0:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x64e1721c with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), tx.origin, sub_1a8b3383[address(msg.sender)].field_768, 0
        if not ext_call.return_data[0]:
            return 0
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        require ext_call.success
        codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
             gas gas_remaining - 50 wei
            args 3, address(ext_call.return_data[0]), msg.sender
        require callcode.return_code
        if not callcode.return_data[0]:
            return 0
    else:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/base' << 152)
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(msg.sender)].field_0:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            require ext_call.success
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
            call address(ext_call.return_data[0]).0x64e1721c with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), tx.origin, sub_1a8b3383[address(msg.sender)].field_768, (0 / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560
            if not ext_call.return_data[0]:
                return 0
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            require ext_call.success
            codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
                 gas gas_remaining - 50 wei
                args 3, address(ext_call.return_data[0]), msg.sender
            require callcode.return_code
            if not callcode.return_data[0]:
                return 0
            if (0 / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560 > 0:
                emit 0x56e31dfd: msg.sender, 11, tx.origin
        else:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
            require ext_call.success
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
            call address(ext_call.return_data[0]).0x64e1721c with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), tx.origin, sub_1a8b3383[address(msg.sender)].field_768, (sub_1a8b3383[address(msg.sender)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(msg.sender)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560
            if not ext_call.return_data[0]:
                return 0
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            require ext_call.success
            codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
                 gas gas_remaining - 50 wei
                args 3, address(ext_call.return_data[0]), msg.sender
            require callcode.return_code
            if not callcode.return_data[0]:
                return 0
            if (sub_1a8b3383[address(msg.sender)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(msg.sender)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560 > 0:
                emit 0x56e31dfd: msg.sender, 11, tx.origin
    emit 0x56e31dfd: msg.sender, 3, tx.origin
    return 1
}

function sub_468e5fc3(?) payable {
    if sub_1a8b3383[address(msg.sender)].field_160 != 2:
        return 0
    codecall 0x236e8216991843c32b6ef7036f1765366670369a.0x186110f2 with:
         gas gas_remaining - 50 wei
        args 2, msg.sender
    require callcode.return_code
    if not callcode.return_data[0]:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    if block.timestamp - sub_1a8b3383[address(msg.sender)].field_2304 / ext_call.return_data[0] < 180:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(msg.sender)].field_0:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
        require ext_call.success
        call address(ext_call.return_data[0]).0x64e1721c with:
             gas gas_remaining - 25050 wei
            args 0, uint32(msg.sender), sub_1a8b3383[address(msg.sender)].field_0, sub_1a8b3383[address(msg.sender)].field_768, 0
        if not ext_call.return_data[0]:
            return 0
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        require ext_call.success
        codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
             gas gas_remaining - 50 wei
            args 3, address(ext_call.return_data[0]), msg.sender
        require callcode.return_code
        if not callcode.return_data[0]:
            return 0
    else:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/base' << 152)
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(msg.sender)].field_0:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            require ext_call.success
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
            call address(ext_call.return_data[0]).0x64e1721c with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), sub_1a8b3383[address(msg.sender)].field_0, sub_1a8b3383[address(msg.sender)].field_768, (0 / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560
            if not ext_call.return_data[0]:
                return 0
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            require ext_call.success
            codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
                 gas gas_remaining - 50 wei
                args 3, address(ext_call.return_data[0]), msg.sender
            require callcode.return_code
            if not callcode.return_data[0]:
                return 0
            if (0 / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560 > 0:
                emit 0x56e31dfd: msg.sender, 11, sub_1a8b3383[address(msg.sender)].field_0
        else:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
            require ext_call.success
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
            call address(ext_call.return_data[0]).0x64e1721c with:
                 gas gas_remaining - 25050 wei
                args 0, uint32(msg.sender), sub_1a8b3383[address(msg.sender)].field_0, sub_1a8b3383[address(msg.sender)].field_768, (sub_1a8b3383[address(msg.sender)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(msg.sender)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560
            if not ext_call.return_data[0]:
                return 0
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            require ext_call.success
            codecall 0xd108d70c33cd6dea17b6d692c408cdc81172d2ff.0x37e2eaa0 with:
                 gas gas_remaining - 50 wei
                args 3, address(ext_call.return_data[0]), msg.sender
            require callcode.return_code
            if not callcode.return_data[0]:
                return 0
            if (sub_1a8b3383[address(msg.sender)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(msg.sender)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(msg.sender)].field_2560 > 0:
                emit 0x56e31dfd: msg.sender, 11, sub_1a8b3383[address(msg.sender)].field_0
    emit 0x56e31dfd: msg.sender, 4, tx.origin
    return 1
}

function sub_b0b89675(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        require ext_call.success
    else:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) != sub_1a8b3383[address(arg1)].field_0:
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            require ext_call.success
            if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
                require ext_call.success
                if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                    return sub_1a8b3383[address(arg1)].field_768, 
                           0,
                           sub_1a8b3383[address(arg1)].field_768,
                           block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/base' << 152)
                require ext_call.success
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
                if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                    call configAddress.0x855fe6ed with:
                         gas gas_remaining - 25050 wei
                        args ('settings/rate' << 152)
                    require ext_call.success
                    return sub_1a8b3383[address(arg1)].field_768, 
                           0,
                           sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                           block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/rate' << 152)
                return sub_1a8b3383[address(arg1)].field_768, 
                       0,
                       sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                       block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/base' << 152)
            require ext_call.success
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/rate' << 152)
                require ext_call.success
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
                if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                    return sub_1a8b3383[address(arg1)].field_768, 
                           (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                           sub_1a8b3383[address(arg1)].field_768,
                           block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/base' << 152)
                require ext_call.success
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
                if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                    call configAddress.0x855fe6ed with:
                         gas gas_remaining - 25050 wei
                        args ('settings/rate' << 152)
                    require ext_call.success
                    return sub_1a8b3383[address(arg1)].field_768, 
                           (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                           sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                           block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/rate' << 152)
                return sub_1a8b3383[address(arg1)].field_768, 
                       (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                       sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                       block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
            require ext_call.success
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                return sub_1a8b3383[address(arg1)].field_768, 
                       (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                       sub_1a8b3383[address(arg1)].field_768,
                       block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/base' << 152)
            require ext_call.success
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
            if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args ('settings/rate' << 152)
                require ext_call.success
                return sub_1a8b3383[address(arg1)].field_768, 
                       (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                       sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                       block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
            require ext_call.success
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            return sub_1a8b3383[address(arg1)].field_768, 
                   (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                   sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                   block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0]
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        require ext_call.success
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
            return sub_1a8b3383[address(arg1)].field_768, 0, sub_1a8b3383[address(arg1)].field_768, 0
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/base' << 152)
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            require ext_call.success
            return sub_1a8b3383[address(arg1)].field_768, 
                   0,
                   sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                   0
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
        require ext_call.success
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/rate' << 152)
        return sub_1a8b3383[address(arg1)].field_768, 
               0,
               sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
               0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/rate' << 152)
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
            return sub_1a8b3383[address(arg1)].field_768, 
                   (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                   sub_1a8b3383[address(arg1)].field_768,
                   0
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/base' << 152)
        require ext_call.success
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
        if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
            call configAddress.0x855fe6ed with:
                 gas gas_remaining - 25050 wei
                args ('settings/rate' << 152)
            require ext_call.success
            return sub_1a8b3383[address(arg1)].field_768, 
                   (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
                   sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
                   0
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
        require ext_call.success
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/rate' << 152)
        return sub_1a8b3383[address(arg1)].field_768, 
               (0 / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
               sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
               0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        return sub_1a8b3383[address(arg1)].field_768, 
               (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
               sub_1a8b3383[address(arg1)].field_768,
               0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    if address(ext_call.return_data[0]) == sub_1a8b3383[address(arg1)].field_0:
        call configAddress.0x855fe6ed with:
             gas gas_remaining - 25050 wei
            args ('settings/rate' << 152)
        require ext_call.success
        return sub_1a8b3383[address(arg1)].field_768, 
               (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
               sub_1a8b3383[address(arg1)].field_768 - (0 / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
               0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    return sub_1a8b3383[address(arg1)].field_768, 
           (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) + sub_1a8b3383[address(arg1)].field_2560,
           sub_1a8b3383[address(arg1)].field_768 - (sub_1a8b3383[address(arg1)].field_768 * ext_call.return_data[0] * block.timestamp - sub_1a8b3383[address(arg1)].field_2304 / ext_call.return_data[0] / ext_call.return_data[0]) - sub_1a8b3383[address(arg1)].field_2560,
           0
}



}
