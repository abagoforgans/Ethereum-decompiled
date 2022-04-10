contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor3;
address stor3; offset 16
address stor4;
address stor5;
address stor6;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    uint16(stor3.field_0) = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 16000 * 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[6626 len 20]
    require code.data[6658 len 20]
    require code.data[6690 len 20]
    require code.data[6722 len 20]
    address(stor3.field_16) = code.data[6626 len 20]
    stor4 = code.data[6658 len 20]
    stor5 = code.data[6690 len 20]
    stor6 = code.data[6722 len 20]
    stor11 = 0
    return code.data[327 len 6287]
}



// =====================  Runtime code  =====================


address owner;
array of address icoPhases;
mapping of uint8 stor2;
uint8 stor3;
uint8 stor3; offset 8
address beneficiaryWalletAddress; offset 16
uint256 stor3; offset 8
address sub_123b233dAddress;
address sub_a1288d77Address;
address tokenRewardAddress;
uint256 sub_6a0215fd;
uint256 sub_14dccbb1;
uint256 totalEthRaised;
uint256 totalTokenSold;
uint256 sub_96177698;
uint256 sub_6a73c9e9;

function sub_123b233d(?) {
    return sub_123b233dAddress
}

function sub_14dccbb1(?) {
    return sub_14dccbb1
}

function crowdsalePaused() {
    return bool(uint8(stor3.field_8))
}

function sub_6a0215fd(?) {
    return sub_6a0215fd
}

function sub_6a73c9e9(?) {
    return sub_6a73c9e9
}

function sub_6e03e3dd(?) {
    return bool(stor2[arg1])
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function sub_96177698(?) {
    return sub_96177698
}

function sub_a1288d77(?) {
    return sub_a1288d77Address
}

function totalTokenSold() {
    return totalTokenSold
}

function beneficiaryWallet() {
    return beneficiaryWalletAddress
}

function totalEthRaised() {
    return totalEthRaised
}

function crowdsaleClosed() {
    return bool(uint8(stor3.field_0))
}

function icoPhases(uint256 arg1) {
    require arg1 < icoPhases.length
    return address(icoPhases[arg1])
}

function _fallback() {
    revert
}

function sub_ac8c5b88(?) {
    require owner == msg.sender
    if arg1:
        beneficiaryWalletAddress = arg1
    if arg2:
        sub_123b233dAddress = arg2
    if arg3:
        sub_a1288d77Address = arg3
}

function sub_aa0bf494(?) {
    require owner == msg.sender
    if not arg1:
        require arg2 > 0
        sub_96177698 = arg2
    else:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        sub_96177698 = ext_call.return_data[0]
}

function sub_fa347103(?) {
    require owner == msg.sender
    if arg1:
        if arg3 != bool(uint8(stor3.field_8)):
            Mask(248, 0, stor3.field_8) = Mask(248, 0, arg3)
    require arg2 < icoPhases.length
    if not address(icoPhases[arg2]):
    require arg2 < icoPhases.length
    require ext_code.size(address(icoPhases[arg2]))
    call address(icoPhases[arg2]).0x1af93333 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
}

function sub_f7959767(?) {
    require owner == msg.sender
    require sub_123b233dAddress
    require arg2 <= sub_14dccbb1
    if arg1:
        if sub_14dccbb1 > 0:
            call sub_123b233dAddress with:
               value sub_14dccbb1 wei
                 gas gas_remaining - 34710 wei
            if ext_call.success:
                sub_14dccbb1 = 0
    else:
        if sub_14dccbb1 > 0:
            if arg2 > 0:
                call sub_123b233dAddress with:
                   value arg2 wei
                     gas gas_remaining - 34710 wei
                if ext_call.success:
                    sub_14dccbb1 -= arg2
}

function sub_34299323(?) {
    require owner == msg.sender
    require beneficiaryWalletAddress
    require arg2 <= sub_6a0215fd
    if arg1:
        if sub_6a0215fd > 0:
            call beneficiaryWalletAddress with:
               value sub_6a0215fd wei
                 gas gas_remaining - 34710 wei
            if ext_call.success:
                sub_6a0215fd = 0
    else:
        if sub_6a0215fd > 0:
            if arg2 > 0:
                call beneficiaryWalletAddress with:
                   value arg2 wei
                     gas gas_remaining - 34710 wei
                if ext_call.success:
                    sub_6a0215fd -= arg2
}

function sub_2c6de316(?) payable {
    if uint8(stor3.field_8):
        return 0
    if uint8(stor3.field_0):
        return 0
    if not stor2[address(msg.sender)]:
        return 0
    if msg.value <= 0:
        return 0
    if sub_96177698 < arg2:
        return 0
    require msg.value
    if arg2 / msg.value > 16500:
        return 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit FundTransfer(address(arg1), msg.value, 1);
    totalEthRaised += msg.value
    totalTokenSold += arg2
    sub_96177698 -= arg2
    sub_14dccbb1 += 15 * msg.value / 100
    sub_6a0215fd = msg.value - (15 * msg.value / 100) + sub_6a0215fd
    if sub_96177698 < sub_6a73c9e9:
        uint8(stor3.field_0) = 1
    return 1
}

function sub_a430453e(?) {
    require owner == msg.sender
    require sub_a1288d77Address
    require arg2 <= sub_96177698
    if arg1:
        if sub_96177698 > 0:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args sub_a1288d77Address, sub_96177698
            require ext_call.success
            if ext_call.return_data[0]:
                sub_96177698 = 0
                if 0 < sub_6a73c9e9:
                    uint8(stor3.field_0) = 1
    else:
        if sub_96177698 > 0:
            if arg2 > 0:
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args sub_a1288d77Address, arg2
                require ext_call.success
                if ext_call.return_data[0]:
                    sub_96177698 -= arg2
                    if sub_96177698 - arg2 < sub_6a73c9e9:
                        uint8(stor3.field_0) = 1
}

function sub_c98ff371(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    require arg5
    require not uint8(stor3.field_0)
    require not uint8(stor3.field_8)
    require arg3 <= arg4
    require arg6 >= arg7
    require sub_96177698 >= arg5
    require arg6 <= 16000
    mem[ceil32(arg1.length) + 128 len 2182] = code.data[4062 len 2182]
    mem[ceil32(arg1.length) + 2342] = arg2
    mem[ceil32(arg1.length) + 2374] = arg3
    mem[ceil32(arg1.length) + 2406] = arg4
    mem[ceil32(arg1.length) + 2438] = arg5
    mem[ceil32(arg1.length) + 2470] = arg6
    mem[ceil32(arg1.length) + 2502] = arg7
    mem[ceil32(arg1.length) + 2310] = 224
    mem[ceil32(arg1.length) + 2534] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[4062 len 2182], Array(len=arg7, data=arg1.length, mem[ceil32(arg1.length) + 2566 len arg1.length]), arg2, arg3, arg4, arg5, arg6
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 2566] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 2598 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[4062 len 2182], Array(len=arg7, data=arg1.length, mem[ceil32(arg1.length) + 2566 len floor32(arg1.length) + 32]), arg2, arg3, arg4, arg5, arg6
    else:
        mem[ceil32(arg1.length) + 2566] = mem[128]
        mem[ceil32(arg1.length) + 2598 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[4062 len 2182], Array(len=arg7, data=arg1.length, mem[ceil32(arg1.length) + 2566 len arg1.length]), arg2, arg3, arg4, arg5, arg6
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 2566] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 2598 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[4062 len 2182], Array(len=arg7, data=arg1.length, mem[128], mem[ceil32(arg1.length) + 2598 len floor32(arg1.length)]), arg2, arg3, arg4, arg5, arg6
    require create.new_address
    stor2[address(create.new_address)] = 1
    icoPhases.length++
    if not icoPhases.length <= icoPhases.length + 1:
        idx = icoPhases.length + 1
        while icoPhases.length > idx:
            uint256(icoPhases[idx]) = 0
            idx = idx + 1
            continue 
    address(icoPhases[icoPhases.length]) = address(create.new_address)
}



}
