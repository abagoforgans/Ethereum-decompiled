contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'H0.2' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = 0x332ea79a8d38865f0cb2a633edcb64cb0a70eda8
    bool(stor1.length) = 0
    stor1.length.field_1 = 17
    stor1.length.field_8 = 'Ethereum Tokenlab' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    bool(stor3.length) = 0
    stor3.length.field_1 = 7
    stor3.length.field_8 = 'ETH-LAB' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[559 len 6792]
}



// =====================  Runtime code  =====================


address balancesAddress;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balances() {
    return balancesAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() {
    revert
}

function totalSupply() {
    require ext_code.size(balancesAddress)
    call balancesAddress.0xc4e41b22 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(balancesAddress)
    call balancesAddress.getAllowance(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(balancesAddress)
    call balancesAddress.0x91ef14b4 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        return 0
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] + arg2 <= ext_call.return_data[0]:
        return 0
    if arg2 <= 0:
        return 0
    require ext_code.size(balancesAddress)
    call balancesAddress.0xaba00859 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        return 0
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] + arg3 <= ext_call.return_data[0]:
        return 0
    if arg3 <= 0:
        return 0
    require ext_code.size(balancesAddress)
    call balancesAddress.0x66e7ea0f with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xaba00859 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg3
    require ext_call.success
    require ext_code.size(balancesAddress)
    call balancesAddress.0xfcfdf7c5 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.sender, arg3
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require ext_code.size(balancesAddress)
    call balancesAddress.0x91ef14b4 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}
