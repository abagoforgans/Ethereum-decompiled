contract main {




// =====================  Runtime code  =====================


#
#  - amountFilled(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7)
#  - testTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11, address arg12)
#  - sub_7ff301d2(?)
#  - sub_8292d211(?)
#  - sub_a09de625(?)
#  - availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#
address adminAddress;
address feeAccount;
address accountLevelsAddr;
uint256 feeMake;
uint256 feeTake;
uint256 feeRebate;
mapping of uint256 tokens;
mapping of uint8 stor7;
mapping of uint256 orderFills;

function orderFills(address arg1, bytes32 arg2) {
    return orderFills[arg1][arg2]
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function feeMake() {
    return feeMake
}

function feeAccount() {
    return feeAccount
}

function feeRebate() {
    return feeRebate
}

function orders(address arg1, bytes32 arg2) {
    return bool(stor7[arg1][arg2])
}

function feeTake() {
    return feeTake
}

function accountLevelsAddr() {
    return accountLevelsAddr
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
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

function changeAccountLevelsAddr(address arg1) {
    require msg.sender == adminAddress
    accountLevelsAddr = arg1
}

function changeFeeMake(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 < feeMake
    feeMake = arg1
}

function changeFeeTake(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 < feeTake
    require arg1 > feeRebate
    feeTake = arg1
}

function changeFeeRebate(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1 > feeRebate
    require arg1 < feeTake
    feeRebate = arg1
}

function deposit() payable {
    require tokens[0][address(msg.sender)] + msg.value >= tokens[0][address(msg.sender)]
    require tokens[0][address(msg.sender)] + msg.value >= msg.value
    tokens[0][address(msg.sender)] += msg.value
    emit Deposit(0, msg.sender, msg.value, tokens[0][address(msg.sender)]);
}

function withdraw(uint256 arg1) {
    require tokens[0][address(msg.sender)] >= arg1
    require arg1 <= tokens[0][address(msg.sender)]
    tokens[0][address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
    emit Withdraw(0, msg.sender, arg1, tokens[0][address(msg.sender)]);
}

function withdrawToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}



}
