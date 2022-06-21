contract main {




// =====================  Runtime code  =====================


#
#  - sub_4b160291(?)
#
mapping of uint8 stor0;
mapping of uint8 stor1;
address ratesAddress;
uint256 sub_3fbf5be3;
uint256 sub_fab509e3;
uint256 sub_4c61ec06;
mapping of uint256 sub_57b35ac8;
mapping of uint8 stor9;
uint256 sub_c114032d;
uint256 sub_4510d11d;
mapping of uint256 sub_ba65e29f;
mapping of uint8 stor13;
uint256 sub_aa5e2936;
uint256 lockUntil;

function sub_1ef721c7(?) {
    require arg1
    return bool(stor1[address(arg1)])
}

function isAdmin(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function lockUntil() {
    return lockUntil
}

function sub_3fbf5be3(?) {
    return sub_3fbf5be3
}

function rates() {
    return ratesAddress
}

function sub_4510d11d(?) {
    return sub_4510d11d
}

function sub_4c61ec06(?) {
    return sub_4c61ec06
}

function sub_57b35ac8(?) {
    return sub_57b35ac8[arg1]
}

function sub_aa5e2936(?) {
    return sub_aa5e2936
}

function sub_b8fe2eb7(?) {
    return bool(stor9[arg1])
}

function sub_ba65e29f(?) {
    return sub_ba65e29f[arg1]
}

function sub_c114032d(?) {
    return sub_c114032d
}

function sub_ca78d7c0(?) {
    return bool(stor13[arg1])
}

function sub_fab509e3(?) {
    return sub_fab509e3
}

function _fallback() payable {
    revert
}

function isLocked() {
    return (block.timestamp < lockUntil)
}

function sub_14386de1(?) {
    sub_57b35ac8[arg1] = 0
    stor9[arg1] = 0
    emit 0x209ea845: arg1, msg.sender
}

function sub_3a3ccd53(?) {
    sub_ba65e29f[arg1] = 0
    stor13[arg1] = 0
    emit 0x3fa55dcf: arg1, msg.sender
}

function sub_7d445da4(?) {
    sub_57b35ac8[arg1] = arg2
    stor9[arg1] = 1
    emit 0x206455a3: arg1, arg2, msg.sender
}

function sub_305c67cc(?) {
    sub_ba65e29f[arg1] = arg2
    stor13[arg1] = 1
    emit 0x8176b348: arg1, arg2, msg.sender
}

function sub_5e9ff058(?) {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit 0x51d15a62: msg.sender
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function sub_11837f66(?) {
    sub_aa5e2936 = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_155d7f4f(?) {
    sub_4c61ec06 = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_df7e4836(?) {
    sub_4510d11d = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_e168188d(?) {
    sub_c114032d = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_0d370dd2(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0x51d15a62: arg1
}

function sub_b75321fb(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xe1bc9c29: arg1
}

function sub_d67f349c(?) {
    require arg1
    ratesAddress = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_2fc4d3e5(?) {
    require arg1 > 0
    sub_fab509e3 = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function sub_56610666(?) {
    require arg1 > 1
    sub_3fbf5be3 = arg1
    emit 0x90fcb9b9: ratesAddress, sub_3fbf5be3, sub_fab509e3, sub_4c61ec06, sub_c114032d, sub_4510d11d, sub_aa5e2936, msg.sender
}

function addAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require stor0[address(arg1)]
    stor0[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function sub_77bb94f6(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender
    require stor0[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender
        require stor0[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        require not stor1[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = 1
        emit 0xe1bc9c29: mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}



}
