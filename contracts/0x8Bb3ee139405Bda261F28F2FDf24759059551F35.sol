contract main {


// =======================  Init code  ======================


address stor0;
address stor6;
address stor7;
uint8 stor8;
address stor8; offset 8
uint8 stor9;
address stor9; offset 8

function _fallback() {
    stor0 = msg.sender
    stor6 = code.data[12393 len 20]
    stor7 = code.data[12425 len 20]
    uint8(stor8.field_0) = 247
    Mask(152, 0, stor8.field_8) = 0
    uint8(stor9.field_0) = 248
    Mask(152, 0, stor9.field_8) = 0
    return code.data[395 len 11986]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 tokens;
mapping of struct accounts;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 orderFills;
address feeAccount;
address dvipAddress;
address feeMakeExporterAddress;
address feeTakeExporterAddress;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function feeMakeExporter() {
    return feeMakeExporterAddress
}

function feeTakeExporter() {
    return feeTakeExporterAddress
}

function admins(address arg1) {
    return bool(stor4[arg1])
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function accounts(address arg1) {
    return bool(accounts[arg1].field_0), accounts[arg1].field_256, accounts[arg1].field_512, accounts[arg1].field_768
}

function feeAccount() {
    return feeAccount
}

function getOwner() {
    return owner
}

function whitelistAdmins(address arg1) {
    return bool(stor3[arg1])
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

function setAdmin(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
}

function setWhitelister(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
}

function setWhitelisted(address arg1, bool arg2) {
    require stor3[address(msg.sender)]
    accounts[address(arg1)].field_0 = uint8(arg2)
}

function cancelOrder(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, address arg10) {
    signer = erecover(sha3(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg10), arg7 << 248, arg8, arg9) 
    require erecover.result
    require address(signer) == msg.sender
    orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg10] = arg2
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
             gas gas_remaining - 50 wei
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
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12) {
    stor13 = sha3(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7)
    if tokens[address(arg1)][address(arg12)] < arg11:
        return 1
    if not accounts[address(arg12)].field_0:
        return 2
    if not accounts[address(arg7)].field_0:
        return 3
    signer = erecover(stor13, arg8 << 248, arg9, arg10) 
    require erecover.result
    if address(signer) != arg7:
        return 4
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    stor14 = arg4 * arg11 / arg2
    if tokens[address(arg3)][address(arg7)] < stor14:
        return 5
    if block.number > arg5:
        return 6
    require orderFills[stor13] + arg11 >= orderFills[stor13]
    require orderFills[stor13] + arg11 >= arg11
    if orderFills[stor13] + arg11 <= arg2:
        return 0
    return 7
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require accounts[address(msg.sender)].field_0
    signer = erecover(sha3(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7), arg8 << 248, arg9, arg10) 
    require erecover.result
    require address(signer) == arg7
    require block.number <= arg5
    require orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] + arg11 >= orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7]
    require orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] + arg11 >= arg11
    require orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] + arg11 <= arg2
    require tokens[address(arg1)][address(msg.sender)] >= arg11
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    require tokens[address(arg3)][address(arg7)] >= arg4 * arg11 / arg2
    require ext_code.size(dvipAddress)
    call dvipAddress.feeFor(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args feeMakeExporterAddress, msg.sender, 10^18
    require ext_call.success
    stor11 = ext_call.return_data[0]
    require ext_code.size(dvipAddress)
    call dvipAddress.feeFor(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args feeTakeExporterAddress, address(arg7), 10^18
    require ext_call.success
    stor10 = ext_call.return_data[0]
    require arg11 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg11
    if arg11:
        require arg11
        require (10^18 * arg11) - (stor11 * arg11) / arg11 == -stor11 + 10^18
    stor12 = (10^18 * arg11) - (stor11 * arg11) / 10^18
    require tokens[address(arg1)][address(arg7)] + stor12 >= tokens[address(arg1)][address(arg7)]
    require tokens[address(arg1)][address(arg7)] + stor12 >= stor12
    tokens[address(arg1)][address(arg7)] += stor12
    if arg11:
        require arg11
        require arg11 * stor11 / arg11 == stor11
    stor12 = arg11 * stor11 / 10^18
    require tokens[address(arg1)][stor6] + stor12 >= tokens[address(arg1)][stor6]
    require tokens[address(arg1)][stor6] + stor12 >= stor12
    tokens[address(arg1)][stor6] += stor12
    if arg4:
        require arg4
        require arg4 * arg11 / arg4 == arg11
    require arg2
    stor12 = arg4 * arg11 / arg2
    require stor12 <= tokens[address(arg3)][address(arg7)]
    tokens[address(arg3)][address(arg7)] -= stor12
    if -stor10 + 10^18:
        require -stor10 + 10^18
        require (10^18 * arg4) - (stor10 * arg4) / -stor10 + 10^18 == arg4
    if (10^18 * arg4) - (stor10 * arg4):
        require (10^18 * arg4) - (stor10 * arg4)
        require (10^18 * arg4 * arg11) - (stor10 * arg4 * arg11) / (10^18 * arg4) - (stor10 * arg4) == arg11
    require arg2
    stor12 = (10^18 * arg4 * arg11) - (stor10 * arg4 * arg11) / arg2 / 10^18
    require tokens[address(arg3)][address(msg.sender)] + stor12 >= tokens[address(arg3)][address(msg.sender)]
    require tokens[address(arg3)][address(msg.sender)] + stor12 >= stor12
    tokens[address(arg3)][address(msg.sender)] += stor12
    if stor10:
        require stor10
        require stor10 * arg4 / stor10 == arg4
    if stor10 * arg4:
        require stor10 * arg4
        require stor10 * arg4 * arg11 / stor10 * arg4 == arg11
    require arg2
    stor12 = stor10 * arg4 * arg11 / arg2 / 10^18
    require tokens[address(arg3)][stor6] + stor12 >= tokens[address(arg3)][stor6]
    require tokens[address(arg3)][stor6] + stor12 >= stor12
    tokens[address(arg3)][stor6] += stor12
    require orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] + arg11 >= orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7]
    require orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] + arg11 >= arg11
    orderFills[address(arg1)][address(arg2)][arg3][arg4][arg5][arg6][arg7] += arg11
    require arg2
    emit Trade(arg1, 0, address(arg3), arg4 * arg11 / arg2, address(arg7), msg.sender, sha3(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7));
}



}
