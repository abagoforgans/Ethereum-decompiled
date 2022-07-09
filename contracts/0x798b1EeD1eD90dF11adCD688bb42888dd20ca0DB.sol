contract main {




// =====================  Runtime code  =====================


#
#  - trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11)
#  - order(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12)
#
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
    require calldata.size - 4 >= 64
    return orderFills[arg1][arg2]
}

function sub_1b9bc1b3(?) {
    require calldata.size - 4 >= 32
    return sub_1b9bc1b3[arg1]
}

function amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    require calldata.size - 4 >= 224
    mem[476] = Mask(192, 0, arg6), Mask(32, 128, this.address) >> 128 or Mask(32, 224, mem[476])
    hash = sha256hash(this.address, arg1, arg2, arg3, arg4, arg5, uint32(arg6) >> 1024, mem[476 len 28]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return orderFills[address(arg7)][hash]
}

function tokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokens[arg1][arg2]
}

function sub_5acf6903(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function feeAccount() {
    return feeAccount
}

function feeWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    return feeWithdraw[arg1]
}

function orders(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[arg1][arg2])
}

function sub_d5a3d9c2(?) {
    require calldata.size - 4 >= 32
    return sub_d5a3d9c2[arg1]
}

function sub_e190a5c0(?) {
    require calldata.size - 4 >= 32
    return sub_e190a5c0[arg1]
}

function sub_ec57b730(?) {
    require calldata.size - 4 >= 32
    return sub_ec57b730[arg1]
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function sub_fa6416bb(?) {
    require calldata.size - 4 >= 32
    return sub_fa6416bb[arg1]
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    adminAddress = arg1
}

function changeFeeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    feeAccount = arg1
}

function isTokenActive(address arg1) {
    require calldata.size - 4 >= 32
    if arg1:
        return bool(stor9[address(arg1)])
    return 1
}

function setTokenFeeTake(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    sub_1b9bc1b3[address(arg1)] = arg2
}

function setTokenFeeMake(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    sub_fa6416bb[address(arg1)] = arg2
}

function setTokenFeeWithdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    feeWithdraw[address(arg1)] = arg2
}

function setTokenFeeDeposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    sub_ec57b730[address(arg1)] = arg2
}

function setTokenMinAmountBuy(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    sub_d5a3d9c2[address(arg1)] = arg2
}

function setTokenMinAmountSell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    sub_e190a5c0[address(arg1)] = arg2
}

function deposit() payable {
    if not msg.value:
        require 0 <= msg.value
        require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
        tokens[0][address(msg.sender)] += msg.value
        require tokens[0][stor1] >= tokens[0][stor1]
    else:
        require msg.value
        require msg.value * sub_ec57b730[0] / msg.value == sub_ec57b730[0]
        require msg.value * sub_ec57b730[0] / 10^18 <= msg.value
        require tokens[0][address(msg.sender)] + msg.value - (msg.value * sub_ec57b730[0] / 10^18) >= tokens[0][address(msg.sender)]
        tokens[0][address(msg.sender)] = tokens[0][address(msg.sender)] + msg.value - (msg.value * sub_ec57b730[0] / 10^18)
        require tokens[0][stor1] + (msg.value * sub_ec57b730[0] / 10^18) >= tokens[0][stor1]
        tokens[0][stor1] += msg.value * sub_ec57b730[0] / 10^18
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    mem[476] = Mask(192, 0, arg6), Mask(32, 128, this.address) >> 128 or Mask(32, 224, mem[476])
    hash = sha256hash(this.address, arg1, arg2, arg3, arg4, arg5, uint32(arg6) >> 1024, mem[476 len 28]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor7[address(msg.sender)][hash]:
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, hash), arg7 << 248, arg8, arg9) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer) == msg.sender
    orderFills[address(msg.sender)][hash] = arg2
    emit Cancel(address(arg1), arg2, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require tokens[0][address(msg.sender)] >= arg1
    if not arg1:
        require 0 <= arg1
        require arg1 <= tokens[0][address(msg.sender)]
        tokens[0][address(msg.sender)] -= arg1
        require tokens[0][stor1] >= tokens[0][stor1]
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        require arg1
        require arg1 * feeWithdraw[0] / arg1 == feeWithdraw[0]
        require arg1 * feeWithdraw[0] / 10^18 <= arg1
        require arg1 <= tokens[0][address(msg.sender)]
        tokens[0][address(msg.sender)] -= arg1
        require tokens[0][stor1] + (arg1 * feeWithdraw[0] / 10^18) >= tokens[0][stor1]
        tokens[0][stor1] += arg1 * feeWithdraw[0] / 10^18
        call msg.sender with:
           value arg1 - (arg1 * feeWithdraw[0] / 10^18) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    if not arg2:
        require 0 <= arg2
        require arg2 <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] -= arg2
        require tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        require arg2
        require arg2 * feeWithdraw[address(arg1)] / arg2 == feeWithdraw[address(arg1)]
        require arg2 * feeWithdraw[address(arg1)] / 10^18 <= arg2
        require arg2 <= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] -= arg2
        require tokens[address(arg1)][stor1] + (arg2 * feeWithdraw[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
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

function depositToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    if not arg2:
        require 0 <= arg2
        require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] += arg2
        require tokens[address(arg1)][stor1] >= tokens[address(arg1)][stor1]
    else:
        require arg2
        require arg2 * sub_ec57b730[address(arg1)] / arg2 == sub_ec57b730[address(arg1)]
        require arg2 * sub_ec57b730[address(arg1)] / 10^18 <= arg2
        require tokens[address(arg1)][address(msg.sender)] + arg2 - (arg2 * sub_ec57b730[address(arg1)] / 10^18) >= tokens[address(arg1)][address(msg.sender)]
        tokens[address(arg1)][address(msg.sender)] = tokens[address(arg1)][address(msg.sender)] + arg2 - (arg2 * sub_ec57b730[address(arg1)] / 10^18)
        require tokens[address(arg1)][stor1] + (arg2 * sub_ec57b730[address(arg1)] / 10^18) >= tokens[address(arg1)][stor1]
        tokens[address(arg1)][stor1] += arg2 * sub_ec57b730[address(arg1)] / 10^18
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require calldata.size - 4 >= 320
    mem[476] = Mask(192, 0, arg6), Mask(32, 128, this.address) >> 128 or Mask(32, 224, mem[476])
    hash = sha256hash(this.address, arg1, arg2, arg3, arg4, arg5, uint32(arg6) >> 1024, mem[476 len 28]) 
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
    if not tokens[address(arg3)][address(arg7)]:
        require arg4 > 0
        require arg4
        if arg2 - orderFills[address(arg7)][hash] >= 0 / arg4:
            return (0 / arg4)
    else:
        require tokens[address(arg3)][address(arg7)]
        require tokens[address(arg3)][address(arg7)] * arg2 / tokens[address(arg3)][address(arg7)] == arg2
        require arg4 > 0
        require arg4
        if arg2 - orderFills[address(arg7)][hash] >= tokens[address(arg3)][address(arg7)] * arg2 / arg4:
            return (tokens[address(arg3)][address(arg7)] * arg2 / arg4)
    return (arg2 - orderFills[address(arg7)][hash])
}

function activateToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    stor9[address(arg1)] = 1
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
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
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    stor9[address(arg1)] = 0
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.0x95d89b41 with:
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



}
