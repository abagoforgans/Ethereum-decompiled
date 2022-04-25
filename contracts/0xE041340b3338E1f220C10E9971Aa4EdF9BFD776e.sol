contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
mapping of uint8 stor1;
address stor3;
address stor5;

function _fallback() payable {
    stor5 = 0
    stor3 = msg.sender
    stor1[address(msg.sender)] = 1
    stor0[address(msg.sender)] = 1
    return code.data[324 len 9151]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
address heirAddress;
address adminAddress;
address stor4;
address coinAddress;
address sub_9baf9977Address;
mapping of uint8 stor7;

function isAdministrator(address arg1) {
    return bool(stor1[arg1])
}

function heir() {
    return heirAddress
}

function sub_9baf9977(?) {
    return sub_9baf9977Address
}

function sub_dccd5401(?) {
    return bool(stor7[arg1])
}

function isManager(address arg1) {
    return bool(stor0[arg1])
}

function admin() {
    return adminAddress
}

function coinAddress() {
    return coinAddress
}

function _fallback() payable {
    revert
}

function sub_41527209(?) {
    require stor1[address(msg.sender)]
    stor0[address(arg1)] = 1
    emit 0x6cb57146: arg1
}

function sub_f0f5cb02(?) {
    require stor1[address(msg.sender)]
    stor0[address(arg1)] = 0
    emit 0xc4d860e1: arg1
}

function sub_9975344b(?) {
    require stor1[address(msg.sender)]
    require stor0[address(arg1)]
    heirAddress = arg1
}

function sub_0ceb914d(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1) > 0
    sub_9baf9977Address = arg1
}

function setCoinAddress(address arg1) {
    require stor1[address(msg.sender)]
    require coinAddress != arg1
    require ext_code.size(arg1) > 0
    stor4 = arg1
    coinAddress = arg1
}

function sub_f4671001(?) {
    require msg.sender == heirAddress
    stor1[stor3] = 0
    stor1[stor2] = 1
    emit 0x54c6b6d9: adminAddress, heirAddress
    adminAddress = heirAddress
    heirAddress = 0
}

function sub_7f163267(?) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1) > 0
    require ext_code.size(arg1)
    call arg1.0xacf495f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function sub_07f98c05(?) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.0x7f98c05 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_64e3b369(?) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.0xe724529c with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_3e5ec713(?) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require arg1 > 0
    require ext_code.size(stor4)
    call stor4.0x3e5ec713 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function burn(uint256 arg1, string arg2) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.0x7641e6f3 with:
         gas gas_remaining - 710 wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
}

function mintToken(uint256 arg1, string arg2) {
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require arg1 > 0
    require ext_code.size(stor4)
    call stor4.0x752312a9 with:
         gas gas_remaining - 710 wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    require ext_call.success
}

function succeed() {
    require sub_9baf9977Address == msg.sender
    require ext_code.size(stor4)
    call stor4.0x3cca3960 with:
         gas gas_remaining - 710 wei
        args sub_9baf9977Address
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0xc34ab974 with:
         gas gas_remaining - 710 wei
        args sub_9baf9977Address
    require ext_call.success
    sub_9baf9977Address = 0
    return 1
}

function sub_e0fc3848(?) {
    mem[128 len arg3.length] = arg3[all]
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    require not stor7[address(arg1)]
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg3.length) + 128] = 0xc414fdaa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + 324] = 3
    mem[arg3.length + ceil32(arg3.length) + 356] = 'tap'
    require ext_code.size(stor4)
    call stor4.0xc414fdaa with:
         gas gas_remaining - 710 wei
        args address(this.address), address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 324 len arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 192
    require ext_call.success
    stor7[address(arg1)] = 1
    if ext_call.return_data[0] < ext_call.return_data[0] / 5:
        emit 0x49b38d70: ext_call.return_data[0], ext_call.return_data[0]
}

function sub_c414fdaa(?) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    if not stor0[address(msg.sender)]:
        require stor1[address(msg.sender)]
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 0xc414fdaa00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 356 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg5.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        require ext_code.size(stor4)
        call stor4.0xc414fdaa with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 356 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 192
    else:
        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 388] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 420 len arg5.length % 32]
        require ext_code.size(stor4)
        call stor4.0xc414fdaa with:
             gas gas_remaining - 710 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 356 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 192
    require ext_call.success
}



}
