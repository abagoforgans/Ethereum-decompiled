contract main {




// =====================  Runtime code  =====================


address adminAddress;
address feeAccount;
mapping of uint256 sub_fa6416bb;
mapping of uint256 sub_1b9bc1b3;
mapping of uint256 sub_ec57b730;
mapping of uint256 feeWithdraw;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 orderFills;
mapping of uint8 stor9;
mapping of uint256 sub_d5a3d9c2;
mapping of uint256 sub_e190a5c0;

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function sub_1b9bc1b3(?) {
    return sub_1b9bc1b3[arg1]
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return orderFills[address(arg7)][hash]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function sub_5acf6903(?) {
    return bool(stor9[arg1])
}

function feeAccount() {
    return feeAccount
}

function feeWithdraw(address arg1) {
    return feeWithdraw[arg1]
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor7[arg1][arg2])
}

function sub_d5a3d9c2(?) {
    return sub_d5a3d9c2[arg1]
}

function sub_e190a5c0(?) {
    return sub_e190a5c0[arg1]
}

function sub_ec57b730(?) {
    return sub_ec57b730[arg1]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function sub_fa6416bb(?) {
    return sub_fa6416bb[arg1]
}

function _fallback() {
    revert
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require msg.sender == adminAddress
    feeAccount = arg1
}

function isTokenActive(address arg1) {
    if arg1:
        return bool(stor9[address(arg1)])
    return 1
}

function setTokenFeeTake(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sub_1b9bc1b3[address(arg1)] = arg2
}

function setTokenFeeMake(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sub_fa6416bb[address(arg1)] = arg2
}

function setTokenFeeWithdraw(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    feeWithdraw[address(arg1)] = arg2
}

function setTokenFeeDeposit(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sub_ec57b730[address(arg1)] = arg2
}

function setTokenMinAmountBuy(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sub_d5a3d9c2[address(arg1)] = arg2
}

function setTokenMinAmountSell(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    sub_e190a5c0[address(arg1)] = arg2
}

function order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    if arg1:
        require stor9[address(arg1)]
    if arg3:
        require stor9[address(arg3)]
    require arg2 >= sub_d5a3d9c2[address(arg1)]
    require arg4 >= sub_e190a5c0[address(arg3)]
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7[address(msg.sender)][hash] = 1
    emit Order(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender);
}

function withdraw(uint256 arg1) {
    require tokens[0][address(msg.sender)] >= arg1
    if arg1:
        require arg1
        require arg1 * feeWithdraw[0] / arg1 == feeWithdraw[0]
    require arg1 * feeWithdraw[0] / 10^18 <= arg1
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    require tokens[0][stor1] + (arg1 * feeWithdraw[0] / 10^18) >= tokens[0][stor1]
    require tokens[0][stor1] + (arg1 * feeWithdraw[0] / 10^18) >= arg1 * feeWithdraw[0] / 10^18
    tokens[0][stor1] += arg1 * feeWithdraw[0] / 10^18
    call msg.sender with:
       value arg1 - (arg1 * feeWithdraw[0] / 10^18) wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
}

function deposit() payable {
    if msg.value:
        require msg.value
        require msg.value * sub_ec57b730[0] / msg.value == sub_ec57b730[0]
    require msg.value * sub_ec57b730[0] / 10^18 <= msg.value
    require tokens[0][address(msg.sender)] + msg.value - (msg.value * sub_ec57b730[0] / 10^18) >= tokens[0][address(msg.sender)]
    require tokens[0][address(msg.sender)] >= 0
    tokens[0][address(msg.sender)] = tokens[0][address(msg.sender)] + msg.value - (msg.value * sub_ec57b730[0] / 10^18)
    require tokens[0][stor1] + (msg.value * sub_ec57b730[0] / 10^18) >= tokens[0][stor1]
    require tokens[0][stor1] + (msg.value * sub_ec57b730[0] / 10^18) >= msg.value * sub_ec57b730[0] / 10^18
    tokens[0][stor1] += msg.value * sub_ec57b730[0] / 10^18
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor7[address(msg.sender)][hash]:
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(msg.sender), arg7 << 248, arg8, arg9);
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg7 << 248, arg8, arg9) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == msg.sender
        orderFills[address(msg.sender)][hash] = arg2
        emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    if arg2:
        require arg2
        require arg2 * feeWithdraw[address(arg1)] / arg2 == feeWithdraw[address(arg1)]
    require arg2 * feeWithdraw[address(arg1)] / 10^18 <= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require tokens[address(arg1)][stor1] + (arg2 * feeWithdraw[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
    require tokens[address(arg1)][stor1] + (arg2 * feeWithdraw[address(arg1)] / 10^18) >= arg2 * feeWithdraw[address(arg1)] / 10^18
    tokens[address(arg1)][stor1] += arg2 * feeWithdraw[address(arg1)] / 10^18
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2 - (arg2 * feeWithdraw[address(arg1)] / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor7[address(arg7)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != arg7:
            return 0
    if block.number > arg5:
        return 0
    require orderFills[address(arg7)][hash] <= arg2
    if tokens[address(arg3)][address(arg7)]:
        require tokens[address(arg3)][address(arg7)]
        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
    require arg4
    if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
        return (tokens[address(arg3)][address(arg7)] * arg2 / arg4)
    return (arg2 - orderFills[address(arg7)][hash])
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require stor9[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2:
        require arg2
        require arg2 * sub_ec57b730[address(arg1)] / arg2 == sub_ec57b730[address(arg1)]
    require arg2 * sub_ec57b730[address(arg1)] / 10^18 <= arg2
    require tokens[address(arg1)][address(msg.sender)] + arg2 - (arg2 * sub_ec57b730[address(arg1)] / 10^18) >= tokens[address(arg1)][address(msg.sender)]
    require tokens[address(arg1)][address(msg.sender)] >= 0
    tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] + arg2 - (arg2 * sub_ec57b730[address(arg1)] / 10^18)
    require tokens[address(arg1)][stor1] + (arg2 * sub_ec57b730[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
    require tokens[address(arg1)][stor1] + (arg2 * sub_ec57b730[address(arg1)] / 10^18) >= arg2 * sub_ec57b730[address(arg1)] / 10^18
    tokens[address(arg1)][stor1] += arg2 * sub_ec57b730[address(arg1)] / 10^18
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function activateToken(address arg1) {
    require msg.sender == adminAddress
    stor9[address(arg1)] = 1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = arg1
    mem[ceil32(return_data.size) + 128] = 64
    mem[ceil32(return_data.size) + 160] = mem[_5 + 96]
    _9 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 192 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _9 % 32:
        emit ActivateToken(address arg1, string arg2):
                           address(arg1),
                           64,
                           mem[ceil32(return_data.size) + 160 len _9 + 32],
    else:
        mem[floor32(_9) + ceil32(return_data.size) + 192] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 224 len _9 % 32]
        emit ActivateToken(address arg1, string arg2):
                           address(arg1),
                           64,
                           mem[ceil32(return_data.size) + 160 len floor32(_9) + 64],
}

function deactivateToken(address arg1) {
    require msg.sender == adminAddress
    stor9[address(arg1)] = 0
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    call arg1.0x95d89b41 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + mem[mem[96] + 96] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = arg1
    mem[ceil32(return_data.size) + 128] = 64
    mem[ceil32(return_data.size) + 160] = mem[_5 + 96]
    _9 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 192 len ceil32(mem[_5 + 96])] = mem[_5 + 128 len ceil32(mem[_5 + 96])]
    if not _9 % 32:
        emit DeactivateToken(address arg1, string arg2):
                             address(arg1),
                             64,
                             mem[ceil32(return_data.size) + 160 len _9 + 32],
    else:
        mem[floor32(_9) + ceil32(return_data.size) + 192] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 224 len _9 % 32]
        emit DeactivateToken(address arg1, string arg2):
                             address(arg1),
                             64,
                             mem[ceil32(return_data.size) + 160 len floor32(_9) + 64],
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    if arg1:
        require stor9[address(arg1)]
    if arg3:
        require stor9[address(arg3)]
    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor7[address(arg7)][hash]:
        require block.number <= arg5
        require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
        require orderFills[address(arg7)][hash] + arg11 >= arg11
        require orderFills[address(arg7)][hash] + arg11 <= arg2
        if arg11:
            require arg11
            require arg11 * sub_fa6416bb[address(arg1)] / arg11 == sub_fa6416bb[address(arg1)]
        if arg11:
            require arg11
            require arg11 * sub_1b9bc1b3[address(arg1)] / arg11 == sub_1b9bc1b3[address(arg1)]
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_1b9bc1b3[address(arg1)] / 10^18
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - arg11 - (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18)
        require arg11 * sub_fa6416bb[address(arg1)] / 10^18 <= arg11
        require tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * sub_fa6416bb[address(arg1)] / 10^18) >= tokens[address(arg1)][address(arg7)]
        require tokens[address(arg1)][address(arg7)] >= 0
        tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * sub_fa6416bb[address(arg1)] / 10^18)
        require (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_fa6416bb[address(arg1)] / 10^18
        require (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_1b9bc1b3[address(arg1)] / 10^18
        require tokens[address(arg1)][stor1] + (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
        require tokens[address(arg1)][stor1] >= 0
        tokens[address(arg1)][stor1] = tokens[address(arg1)][stor1] + (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18)
        if arg4:
            require arg4
            require arg4 * arg11 / arg4 == arg11
        require arg2
        require arg4 * arg11 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg4 * arg11 / arg2
        if arg4:
            require arg4
            require arg4 * arg11 / arg4 == arg11
        require arg2
        require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= tokens[address(arg3)][address(msg.sender)]
        require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= arg4 * arg11 / arg2
        tokens[address(arg3)][address(msg.sender)] += arg4 * arg11 / arg2
        require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
        require orderFills[address(arg7)][hash] + arg11 >= arg11
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(address(arg1), arg11, address(arg3), arg4 * arg11 / arg2, arg7, address(msg.sender));
    else:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == arg7
        require block.number <= arg5
        require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
        require orderFills[address(arg7)][hash] + arg11 >= arg11
        require orderFills[address(arg7)][hash] + arg11 <= arg2
        if arg11:
            require arg11
            require arg11 * sub_fa6416bb[address(arg1)] / arg11 == sub_fa6416bb[address(arg1)]
        if arg11:
            require arg11
            require arg11 * sub_1b9bc1b3[address(arg1)] / arg11 == sub_1b9bc1b3[address(arg1)]
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_1b9bc1b3[address(arg1)] / 10^18
        require arg11 + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] - arg11 - (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18)
        require arg11 * sub_fa6416bb[address(arg1)] / 10^18 <= arg11
        require tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * sub_fa6416bb[address(arg1)] / 10^18) >= tokens[address(arg1)][address(arg7)]
        require tokens[address(arg1)][address(arg7)] >= 0
        tokens[address(arg1)][address(arg7)] = tokens[address(arg1)][address(arg7)] + arg11 - (arg11 * sub_fa6416bb[address(arg1)] / 10^18)
        require (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_fa6416bb[address(arg1)] / 10^18
        require (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= arg11 * sub_1b9bc1b3[address(arg1)] / 10^18
        require tokens[address(arg1)][stor1] + (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
        require tokens[address(arg1)][stor1] >= 0
        tokens[address(arg1)][stor1] = tokens[address(arg1)][stor1] + (arg11 * sub_fa6416bb[address(arg1)] / 10^18) + (arg11 * sub_1b9bc1b3[address(arg1)] / 10^18)
        if arg4:
            require arg4
            require arg4 * arg11 / arg4 == arg11
        require arg2
        require arg4 * arg11 / arg2 <= tokens[address(arg3)][address(arg7)]
        tokens[address(arg3)][address(arg7)] -= arg4 * arg11 / arg2
        if arg4:
            require arg4
            require arg4 * arg11 / arg4 == arg11
        require arg2
        require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= tokens[address(arg3)][address(msg.sender)]
        require tokens[address(arg3)][address(msg.sender)] + (arg4 * arg11 / arg2) >= arg4 * arg11 / arg2
        tokens[address(arg3)][address(msg.sender)] += arg4 * arg11 / arg2
        require orderFills[address(arg7)][hash] + arg11 >= orderFills[address(arg7)][hash]
        require orderFills[address(arg7)][hash] + arg11 >= arg11
        orderFills[address(arg7)][hash] += arg11
        require arg2
        emit Trade(address(arg1), arg11, address(arg3), arg4 * arg11 / arg2, address(arg7), msg.sender);
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    if not arg1:
        if not arg3:
            if tokens[address(arg1)][address(arg12)] >= arg11:
                hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
                if not sha256hash.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor7[address(arg7)][hash]:
                    if block.number > arg5:
                        if 0 >= arg11:
                            return 1
                    else:
                        require orderFills[address(arg7)][hash] <= arg2
                        if tokens[address(arg3)][address(arg7)]:
                            require tokens[address(arg3)][address(arg7)]
                            require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                        require arg4
                        if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                            if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                return 1
                        else:
                            if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                return 1
                else:
                    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != arg7:
                        if 0 >= arg11:
                            return 1
                    else:
                        if block.number > arg5:
                            if 0 >= arg11:
                                return 1
                        else:
                            require orderFills[address(arg7)][hash] <= arg2
                            if tokens[address(arg3)][address(arg7)]:
                                require tokens[address(arg3)][address(arg7)]
                                require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                            require arg4
                            if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                    return 1
                            else:
                                if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                    return 1
        else:
            if stor9[address(arg3)]:
                if tokens[address(arg1)][address(arg12)] >= arg11:
                    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor7[address(arg7)][hash]:
                        if block.number > arg5:
                            if 0 >= arg11:
                                return 1
                        else:
                            require orderFills[address(arg7)][hash] <= arg2
                            if tokens[address(arg3)][address(arg7)]:
                                require tokens[address(arg3)][address(arg7)]
                                require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                            require arg4
                            if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                    return 1
                            else:
                                if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                    return 1
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) != arg7:
                            if 0 >= arg11:
                                return 1
                        else:
                            if block.number > arg5:
                                if 0 >= arg11:
                                    return 1
                            else:
                                require orderFills[address(arg7)][hash] <= arg2
                                if tokens[address(arg3)][address(arg7)]:
                                    require tokens[address(arg3)][address(arg7)]
                                    require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                                require arg4
                                if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                    if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                        return 1
                                else:
                                    if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                        return 1
    else:
        if stor9[address(arg1)]:
            if not arg3:
                if tokens[address(arg1)][address(arg12)] >= arg11:
                    hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
                    if not sha256hash.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor7[address(arg7)][hash]:
                        if block.number > arg5:
                            if 0 >= arg11:
                                return 1
                        else:
                            require orderFills[address(arg7)][hash] <= arg2
                            if tokens[address(arg3)][address(arg7)]:
                                require tokens[address(arg3)][address(arg7)]
                                require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                            require arg4
                            if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                    return 1
                            else:
                                if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                    return 1
                    else:
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        if address(signer) != arg7:
                            if 0 >= arg11:
                                return 1
                        else:
                            if block.number > arg5:
                                if 0 >= arg11:
                                    return 1
                            else:
                                require orderFills[address(arg7)][hash] <= arg2
                                if tokens[address(arg3)][address(arg7)]:
                                    require tokens[address(arg3)][address(arg7)]
                                    require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                                require arg4
                                if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                    if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                        return 1
                                else:
                                    if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                        return 1
            else:
                if stor9[address(arg3)]:
                    if tokens[address(arg1)][address(arg12)] >= arg11:
                        hash = sha256hash(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6) 
                        if not sha256hash.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor7[address(arg7)][hash]:
                            if block.number > arg5:
                                if 0 >= arg11:
                                    return 1
                            else:
                                require orderFills[address(arg7)][hash] <= arg2
                                if tokens[address(arg3)][address(arg7)]:
                                    require tokens[address(arg3)][address(arg7)]
                                    require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                                require arg4
                                if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                    if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                        return 1
                                else:
                                    if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                        return 1
                        else:
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg8 << 248, arg9, arg10) 
                            if not erecover.result:
                                revert with ext_call.return_data[0 len return_data.size]
                            if address(signer) != arg7:
                                if 0 >= arg11:
                                    return 1
                            else:
                                if block.number > arg5:
                                    if 0 >= arg11:
                                        return 1
                                else:
                                    require orderFills[address(arg7)][hash] <= arg2
                                    if tokens[address(arg3)][address(arg7)]:
                                        require tokens[address(arg3)][address(arg7)]
                                        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
                                    require arg4
                                    if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
                                        if tokens[address(arg3)][address(arg7)] * arg2 / arg4 >= arg11:
                                            return 1
                                    else:
                                        if arg2 - orderFills[address(arg7)][hash] >= arg11:
                                            return 1
    return 0
}



}
