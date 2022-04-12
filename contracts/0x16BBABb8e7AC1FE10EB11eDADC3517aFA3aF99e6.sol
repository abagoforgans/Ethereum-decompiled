contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint32 stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor3 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor4 = code.data[5762 len 32]
    emit 0x1d0ce96c: msg.sender, code.data[5762 len 32], Mask(64, 192, code.data[5794 len 32])
    return code.data[224 len 5538]
}



// =====================  Runtime code  =====================


const VERSION = 1


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of address stor1;
mapping of uint8 stor2;
uint32 sub_2511b4f9;
address brokerAddress; offset 32
uint256 expireDate;
uint32 sub_8f0be74a;

function sub_2511b4f9(?) {
    return sub_2511b4f9
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function sub_8f0be74a(?) {
    return sub_8f0be74a
}

function broker() {
    return brokerAddress
}

function expireDate() {
    return expireDate
}

function _fallback() {
    revert
}

function sub_839e703a(?) {
    return stor1[arg1], bool(stor2[stor1[arg1]])
}

function sub_76f77017(?) {
    require stor2[address(msg.sender)]
    emit 0xcf113b65: arg1
}

function sub_528fd71d(?) {
    require address(stor0.field_0) == msg.sender
    sub_8f0be74a = arg1
}

function sub_b2f450ca(?) {
    require stor2[address(msg.sender)]
    emit SetRate(arg1 << 224, arg2);
}

function sub_1cd61dae(?) {
    require stor2[address(msg.sender)]
    emit 0x7bb6fb50: arg1 << 224, arg2
}

function sub_619ec1b3(?) {
    require stor2[address(msg.sender)]
    emit 0xe3da4bba: arg1 << 224, arg2
}

function sub_c157f13d(?) {
    require stor2[address(msg.sender)]
    emit 0x48457ea0: arg1 << 224, arg2
}

function sub_e37d86d6(?) {
    require stor2[address(msg.sender)]
    emit 0xc4f0eba6: arg1 << 224, arg2, arg3
}

function sub_a41f3e3d(?) {
    require stor2[address(msg.sender)]
    emit 0xdbb72ec5: arg1 << 224, address(arg2), arg3
}

function sub_7d95d6b4(?) {
    require address(stor0.field_0) == msg.sender
    require uint8(stor0.field_160)
    expireDate = arg1
}

function setBroker(address arg1) {
    require address(stor0.field_0) == msg.sender
    brokerAddress = arg1
    emit 0x722e4657: arg1
}

function sub_4fdf8d80(?) {
    require address(stor0.field_0) == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not uint8(stor0.field_160))
}

function sub_3eac7818(?) {
    require not uint8(stor0.field_160)
    require ext_code.size(arg1)
    call arg1.expire() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2[address(arg1)] = 0
}

function emergencyWithdraw() {
    require uint8(stor0.field_160)
    require address(stor0.field_0) == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6a1da29f(?) {
    require not uint8(stor0.field_160)
    require block.timestamp < expireDate
    require ext_code.size(arg1)
    call arg1.cancel(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor2[address(arg1)] = 0
}

function sub_f401e49a(?) payable {
    require not uint8(stor0.field_160)
    require block.timestamp < expireDate
    create contract with callvalue wei
                    code: code.data[3722 len 1773], address(arg1), arg2 << 224, arg3 << 248, arg4, sub_2511b4f9 + 1 << 224
    require create.new_address
    require address(create.new_address)
    sub_2511b4f9 = uint32(sub_2511b4f9 + 1)
    stor1[stor3 + 1 << 224] = address(create.new_address)
    stor2[address(create.new_address)] = 1
    emit 0xc05014c3: sub_2511b4f9, address(arg1), address(create.new_address), arg4, arg3, arg2 << 224
}

function sub_1974884f(?) {
    require brokerAddress == msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + 320 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (32 * arg4.length) + 320] = arg4.length
    mem[(64 * arg3.length) + (32 * arg4.length) + 352 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit 0xef251895: address(arg1), arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + (32 * arg4.length) + floor32(arg3.length) + 320 len (32 * arg3.length) + (32 * arg4.length) + -floor32(arg3.length) + 32]), (32 * arg3.length) + 160
}



}
