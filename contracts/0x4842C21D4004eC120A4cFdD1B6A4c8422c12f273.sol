contract main {


// =======================  Init code  ======================


mapping of uint8 stor3;
address stor4;

function _fallback() {
    stor4 = code.data[6369 len 20]
    stor3[code.data[6401 len 20]] = 1
    return code.data[115 len 6242]
}



// =====================  Runtime code  =====================


mapping of uint256 sub_0a361ff9;
mapping of uint8 stor1;
mapping of address sub_69d26933;
mapping of uint8 stor3;
address adminAddress;
address sub_9f948ebfAddress;

function sub_0a361ff9(?) {
    return sub_0a361ff9[arg1]
}

function sub_69d26933(?) {
    return sub_69d26933[arg1]
}

function sub_7475ba0d(?) {
    return bool(stor3[arg1])
}

function sub_9f948ebf(?) {
    return sub_9f948ebfAddress
}

function sub_efe6c6b4(?) {
    return bool(stor1[arg1])
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_36fb46fe(?) {
    require adminAddress == msg.sender
    sub_9f948ebfAddress = arg1
    emit 0xd8663405: arg1
    emit 0x7: arg1
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit 0xd8663405: arg1
    emit 0x1: arg1
}

function addOperator(address arg1) {
    require adminAddress == msg.sender
    if stor3[address(arg1)]:
        return 0
    stor3[address(arg1)] = 1
    emit AddOperator(arg1);
    return 1
}

function removeOperator(address arg1) {
    require adminAddress == msg.sender
    if not stor3[address(arg1)]:
        return 0
    stor3[address(arg1)] = 0
    emit RemoveOperator(arg1);
    return 1
}

function sub_28016f9a(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x28016f9a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_67fc9138(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x67fc9138 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_76faf2cf(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x76faf2cf with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_95308dfb(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x95308dfb with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function freezeTransfer() {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x875606a1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function unfreezeTransfer() {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0xd445cc78 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_bdb42b74(?) {
    require stor3[address(msg.sender)]
    if not sub_0a361ff9[address(arg1)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit 0xdf0f5c99: 1, arg1
    return 1
}

function sub_a1876f8e(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0xa1876f8e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_a6900845(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0xa6900845 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_3800ccb8(?) {
    require stor3[address(msg.sender)]
    if not sub_0a361ff9[address(arg1)]:
        return 0
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    emit 0xdf0f5c99: 0, arg1
    return 1
}

function removeAffiliate(address arg1) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x3b9ff843 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_37673b2b(?) {
    require stor3[address(msg.sender)]
    if sub_69d26933[arg2]:
        return 0
    if sub_0a361ff9[address(arg1)]:
        return 0
    sub_69d26933[arg2] = arg1
    sub_0a361ff9[address(arg1)] = arg2
    emit 0x87831755: arg2, arg1
    return 1
}

function sub_2ebb046d(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x2ebb046d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x4: arg1
}

function sub_30a20dba(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x30a20dba with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x2: arg1
}

function sub_611f2597(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x611f2597 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x3: arg1
}

function sub_7635dcaa(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x7635dcaa with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x9: arg1
}

function sub_7c8b43f4(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x7c8b43f4 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x6: arg1
}

function addCaller(address arg1) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x747293fb with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function changeUpgrader(address arg1) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x5eb25a94 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x8: arg1
}

function changeRedeemer(address arg1) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0x6e317da7 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0xd8663405: arg1
    emit 0x5: arg1
}

function changeServiceAddress(address arg1) {
    require sub_0a361ff9[address(msg.sender)] > 0
    require not stor1[address(msg.sender)]
    if sub_0a361ff9[address(arg1)]:
        return 0
    sub_0a361ff9[arg1] = sub_0a361ff9[address(msg.sender)]
    sub_69d26933[stor0[address(msg.sender)]] = arg1
    sub_0a361ff9[address(msg.sender)] = 0
    emit 0xfbfe17ad: arg1, msg.sender
    return 1
}

function sub_cdff35d4(?) {
    require adminAddress == msg.sender
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.init(address rg1, address rg2, address rg3, address rg4, address rg5, address rg6, address rg7, address rg8, address rg9, address rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), address(arg2), arg3, address(arg4), address(arg5), address(arg6), address(arg7), address(arg8), arg9
    require ext_call.success
}

function sub_c6e4cdfa(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require sub_0a361ff9[address(msg.sender)] > 0
    require not stor1[address(msg.sender)]
    mem[(32 * arg1.length) + 128] = 0xa2e6715800000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 164] = sub_0a361ff9[address(msg.sender)]
    mem[(32 * arg1.length) + 132] = 64
    mem[(32 * arg1.length) + 196] = arg1.length
    if Mask(251, 0, arg1.length):
        mem[(32 * arg1.length) + 228] = mem[128]
        mem[(32 * arg1.length) + 260 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
    require ext_code.size(sub_9f948ebfAddress)
    call sub_9f948ebfAddress.0xa2e67158 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[(32 * arg1.length) + 228 len 32 * arg1.length]), sub_0a361ff9[address(msg.sender)]
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
