contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
uint8 stor5;
address stor5; offset 8
uint8 stor6;
address stor6; offset 8

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[11496 len 20]
    stor4 = code.data[11528 len 20]
    uint8(stor5.field_0) = 247
    Mask(152, 0, stor5.field_8) = 0
    uint8(stor6.field_0) = 248
    Mask(152, 0, stor6.field_8) = 0
    return code.data[398 len 11086]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 tokens;
mapping of uint256 orderFills;
address feeAccount;
address dvipAddress;
address feeMakeExporterAddress;
address feeTakeExporterAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function feeMakeExporter() {
    return feeMakeExporterAddress
}

function feeTakeExporter() {
    return feeTakeExporterAddress
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeAccount() {
    return feeAccount
}

function getOwner() {
    return owner
}

function dvipAddress() {
    return dvipAddress
}

function orderFills(bytes32 arg1) {
    return orderFills[arg1]
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function assert(bool arg1) {
    require arg1
}

function setDVIP(address arg1) {
    require msg.sender == owner
    dvipAddress = arg1
}

function setFeeAccount(address arg1) {
    require msg.sender == owner
    feeAccount = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    owner = arg1
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, address arg10) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg10)), arg7 << 248, arg8, arg9) 
    require erecover.result
    require address(signer) == msg.sender
    orderFills[address(this.address)][uint64(arg1)][arg2][arg3][arg4][arg5][arg6][arg10] = arg2
    emit Cancel(arg1, 0, address(arg3), arg4, arg5, arg6, msg.sender, arg7 << 248, arg8, arg9);
}

function withdraw(address arg1, uint256 arg2) {
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    if not arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function deposit(address arg1, uint256 arg2) payable {
    if not arg1:
        require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
        require tokens[0][address(msg.sender)] + msg.value >= msg.value
        tokens[0][address(msg.sender)] += msg.value
    else:
        require not msg.value
        require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
        require tokens[address(arg1)][address(msg.sender)] + arg2 >= arg2
        tokens[address(arg1)][address(msg.sender)] += arg2
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    stor11 = sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)
    if tokens[address(arg1)][address(arg12)] < arg11:
        return 1
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, stor11), arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        return 4
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    stor12 = arg4 * arg11 / arg2
    if tokens[address(arg3)][address(arg7)] < stor12:
        return 5
    if block.number > arg5:
        return 6
    require orderFills[stor11] + arg11 >= orderFills[stor11]
    require orderFills[stor11] + arg11 >= arg11
    if orderFills[stor11] + arg11 <= arg2:
        return 0
    return 7
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    stor10 = sha3(address(this.address), uint64(arg1), arg2, arg3, arg4, arg5, arg6, arg7)
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, stor10), arg8 << 248, arg9, arg10) 
    require erecover.result
    require address(signer) == arg7
    require block.number <= arg5
    require orderFills[stor10] + arg11 >= orderFills[stor10]
    require orderFills[stor10] + arg11 >= arg11
    require orderFills[stor10] + arg11 <= arg2
    require tokens[address(arg1)][address(msg.sender)] >= arg11
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    require tokens[address(arg3)][address(arg7)] >= arg4 * arg11 / arg2
    require ext_code.size(dvipAddress)
    call dvipAddress.feeFor(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args feeMakeExporterAddress, msg.sender, 10^18
    require ext_call.success
    stor8 = ext_call.return_data[0]
    require ext_code.size(dvipAddress)
    call dvipAddress.feeFor(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args feeTakeExporterAddress, address(arg7), 10^18
    require ext_call.success
    stor7 = ext_call.return_data[0]
    require arg11 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg11
    if arg11:
        require arg11
        require (10^18 * arg11) - (stor8 * arg11) / arg11 == -stor8 + 10^18
    stor9 = (10^18 * arg11) - (stor8 * arg11) / 10^18
    require tokens[address(arg1)][address(arg7)] + stor9 >= tokens[address(arg1)][address(arg7)]
    require tokens[address(arg1)][address(arg7)] + stor9 >= stor9
    tokens[address(arg1)][address(arg7)] += stor9
    if arg11:
        require arg11
        require arg11 * stor8 / arg11 == stor8
    stor9 = arg11 * stor8 / 10^18
    require tokens[address(arg1)][stor3] + stor9 >= tokens[address(arg1)][stor3]
    require tokens[address(arg1)][stor3] + stor9 >= stor9
    tokens[address(arg1)][stor3] += stor9
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    stor9 = arg4 * arg11 / arg2
    require stor9 <= tokens[address(arg3)][address(arg7)]
    tokens[address(arg3)][address(arg7)] -= stor9
    if -stor7 + 10^18:
        require -stor7 + 10^18
        require (10^18 * arg4) - (stor7 * arg4) / -stor7 + 10^18 == arg4
    if (10^18 * arg4) - (stor7 * arg4):
        require (10^18 * arg4) - (stor7 * arg4)
        require (10^18 * arg4 * arg11) - (stor7 * arg4 * arg11) / (10^18 * arg4) - (stor7 * arg4) == arg11
    require arg2
    stor9 = (10^18 * arg4 * arg11) - (stor7 * arg4 * arg11) / arg2 / 10^18
    require tokens[address(arg3)][address(msg.sender)] + stor9 >= tokens[address(arg3)][address(msg.sender)]
    require tokens[address(arg3)][address(msg.sender)] + stor9 >= stor9
    tokens[address(arg3)][address(msg.sender)] += stor9
    if stor7:
        require stor7
        require stor7 * arg4 / stor7 == arg4
    if stor7 * arg4:
        require stor7 * arg4
        require stor7 * arg4 * arg11 / stor7 * arg4 == arg11
    require arg2
    stor9 = stor7 * arg4 * arg11 / arg2 / 10^18
    require tokens[address(arg3)][stor3] + stor9 >= tokens[address(arg3)][stor3]
    require tokens[address(arg3)][stor3] + stor9 >= stor9
    tokens[address(arg3)][stor3] += stor9
    require orderFills[stor10] + arg11 >= orderFills[stor10]
    require orderFills[stor10] + arg11 >= arg11
    orderFills[stor10] += arg11
    require arg2
    emit Trade(arg1, 0, address(arg3), arg4 * arg11 / arg2, address(arg7), msg.sender, stor10);
}



}
