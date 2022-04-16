contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;

function _fallback() payable {
    stor1 = 418713 * 3600
    stor2 = 418905 * 3600
    stor3 = 420345 * 3600
    stor4 = 426537 * 3600
    stor5 = 419913 * 3600
    stor6 = 420033 * 3600
    stor7 = 418569 * 3600
    stor8 = 426537 * 3600
    stor9 = 100 * 10^6
    require not msg.value
    stor0 = msg.sender
    stor10 = code.data[3782 len 20]
    return code.data[184 len 3586]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_e7512dde;
uint256 agingTime;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address tokenRewardAddress;

function agingTime() {
    return agingTime
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function sub_e7512dde(?) {
    return sub_e7512dde
}

function kill() {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeTokenOwner(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_f82581e2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x23a36d2b00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _16
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg3
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23a36d2b with:
             gas gas_remaining - 710 wei
            args address(_14), _16, arg3
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_3cd9d53a(?) {
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args sub_e7512dde
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args agingTime
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor3
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor4
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor5
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor6
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x8d37f52c with:
         gas gas_remaining - 710 wei
        args stor8
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg4), stor3
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg5), stor4
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg1), stor5
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg2), stor6
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg3), stor7
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xea6ca182 with:
         gas gas_remaining - 710 wei
        args address(arg7), agingTime
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg5), 4 * 10^6 * stor9, 0
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg1), 20 * 10^6 * stor9, 0
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg2), 2 * 10^6 * stor9, 0
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg3), 10 * 10^6 * stor9, 0
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg4), 30 * 10^6 * stor9, 0
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg6), 3062308559570000, stor8
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23a36d2b with:
         gas gas_remaining - 710 wei
        args address(arg7), 40 * 10^6 * stor9, 0
    require ext_call.success
}



}
