contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address sub_4384b362;
address exchangeContractAddress;
address sub_fb294210Address;
uint256 sub_066f02ff;
address sub_7dc8d93cAddress;
uint256 issueFee;
uint256 sub_f8c8f5f8;
uint256 cancelFee;
uint256 sub_08ad8d36;
uint256 sub_0bf09003;
uint256 sub_b564fc46;
uint256 sub_68a3aad9;
uint256 MAX_FEE;

function sub_066f02ff(?) {
    return sub_066f02ff
}

function sub_08ad8d36(?) {
    return sub_08ad8d36
}

function sub_0bf09003(?) {
    return sub_0bf09003
}

function cancelFee() {
    return cancelFee
}

function issueFee() {
    return issueFee
}

function exchangeContract() {
    return exchangeContractAddress
}

function admins(address arg1) {
    return bool(stor1[arg1])
}

function sub_4384b362(?) {
    return sub_4384b362[arg1][address(arg2)][address(arg3)][arg4][arg5][arg6 << 248]
}

function sub_68a3aad9(?) {
    return sub_68a3aad9
}

function sub_7dc8d93c(?) {
    return sub_7dc8d93cAddress
}

function owner() {
    return owner
}

function sub_b564fc46(?) {
    return sub_b564fc46
}

function MAX_FEE() {
    return MAX_FEE
}

function sub_f8c8f5f8(?) {
    return sub_f8c8f5f8
}

function sub_fb294210(?) {
    return sub_fb294210Address
}

function _fallback() payable {
    revert
}

function sub_6e6cfaa6(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    sub_066f02ff = arg1
}

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
}

function sub_1b14dbe5(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    issueFee = arg1
}

function sub_1d2ecd32(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    sub_f8c8f5f8 = arg1
}

function sub_2ebb6aee(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    sub_b564fc46 = arg1
}

function sub_b39ba7d9(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    sub_08ad8d36 = arg1
}

function sub_eeb33fd1(?) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    sub_0bf09003 = arg1
}

function setCancelFee(uint256 arg1) {
    if owner != msg.sender:
        require stor1[msg.sender]
    require arg1 <= MAX_FEE
    cancelFee = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5d0b9dff(?) {
    require ext_code.size(exchangeContractAddress)
    call exchangeContractAddress.0xf7888aec with:
         gas gas_remaining wei
        args sub_7dc8d93cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fb294210Address)
    call sub_fb294210Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < sub_066f02ff:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require issueFee * arg2 / arg2 == issueFee
            if sub_68a3aad9:
                return (issueFee * arg2 / sub_68a3aad9)
    else:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require sub_08ad8d36 * arg2 / arg2 == sub_08ad8d36
            if sub_68a3aad9:
                return (sub_08ad8d36 * arg2 / sub_68a3aad9)
    ('iszero', ('stor', ('name', 'sub_68a3aad9', 13)))
    revert
}

function sub_ad6571d7(?) {
    require ext_code.size(exchangeContractAddress)
    call exchangeContractAddress.0xf7888aec with:
         gas gas_remaining wei
        args sub_7dc8d93cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fb294210Address)
    call sub_fb294210Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < sub_066f02ff:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require cancelFee * arg2 / arg2 == cancelFee
            if sub_68a3aad9:
                return (cancelFee * arg2 / sub_68a3aad9)
    else:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require sub_b564fc46 * arg2 / arg2 == sub_b564fc46
            if sub_68a3aad9:
                return (sub_b564fc46 * arg2 / sub_68a3aad9)
    ('iszero', ('stor', ('name', 'sub_68a3aad9', 13)))
    revert
}

function sub_26813acc(?) {
    require ext_code.size(exchangeContractAddress)
    call exchangeContractAddress.0xf7888aec with:
         gas gas_remaining wei
        args sub_7dc8d93cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fb294210Address)
    call sub_fb294210Address.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < sub_066f02ff:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require sub_f8c8f5f8 * arg2 / arg2 == sub_f8c8f5f8
            if sub_68a3aad9:
                return (sub_f8c8f5f8 * arg2 / sub_68a3aad9)
    else:
        if not arg2:
            if sub_68a3aad9:
                return (0 / sub_68a3aad9)
        else:
            require sub_0bf09003 * arg2 / arg2 == sub_0bf09003
            if sub_68a3aad9:
                return (sub_0bf09003 * arg2 / sub_68a3aad9)
    ('iszero', ('stor', ('name', 'sub_68a3aad9', 13)))
    revert
}

function sub_fd06ee8d(?) {
    mem[128 len arg8.length] = arg8[all]
    require not sub_4384b362[arg1][address(arg2)][address(arg3)][arg5][arg6][arg7 << 248]
    mem[ceil32(arg8.length) + 128 len 8580] = code.data[3317 len 8580]
    mem[ceil32(arg8.length) + 9028 len ceil32(arg8.length)] = arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]
    if not arg8.length % 32:
        create contract with 0 wei
                        code: code.data[3317 len 8580], address(this.address), address(arg2), address(arg3), arg4, arg1, arg5, arg6, Array(len=arg7 << 248, data=arg8.length, Mask(8 * arg8.length, -(8 * arg8.length) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * arg8.length) - 256)
    else:
        mem[floor32(arg8.length) + ceil32(arg8.length) + 9028] = mem[floor32(arg8.length) + ceil32(arg8.length) + -(arg8.length % 32) + 9060 len arg8.length % 32]
        create contract with 0 wei
                        code: code.data[3317 len 8580], address(this.address), address(arg2), address(arg3), arg4, arg1, arg5, arg6, Array(len=arg7 << 248, data=arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], mem[arg8.length + 128 len ceil32(arg8.length) - arg8.length]) << (8 * ceil32(arg8.length)) - 256, mem[(2 * ceil32(arg8.length)) + 9028 len floor32(arg8.length) + -ceil32(arg8.length) + 32])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4384b362[arg1][address(arg2)][address(arg3)][arg5][arg6][arg7 << 248] = address(create.new_address)
}



}
