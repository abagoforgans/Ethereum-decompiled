contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor10;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 0
    require not msg.value
    return code.data[296 len 7217]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address corporationContractAddress;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 transferCount;
array of struct transfer;

function getTransferCount() {
    return transferCount
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function identityApproved(address arg1) {
    return bool(stor6[arg1])
}

function decimals() {
    return decimals
}

function voteLock(address arg1) {
    return bool(stor7[arg1])
}

function standard() {
    return standard[0 len standard.length]
}

function isApproved(address arg1) {
    return bool(stor6[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function corporationContract() {
    return corporationContractAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getTransfer(uint256 arg1) {
    require arg1 < transfer.length
    return transfer[arg1].field_0, 
           transfer[arg1].field_256,
           transfer[arg1].field_512,
           transfer[arg1].field_768,
           transfer[arg1].field_1024,
           transfer[arg1].field_1280
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferCount() {
    return transferCount
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() {
    revert
}

function approveMember(address arg1) {
    stor6[address(arg1)] = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function init(uint256 arg1, string arg2, uint8 arg3, string arg4, address arg5) {
    corporationContractAddress = msg.sender
    balanceOf[address(arg5)] = arg1
    stor6[address(arg5)] = 1
    totalSupply = arg1
    allowance[address(arg5)][stor5] = totalSupply - 1
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg4.length, data=arg4[all])
    decimals = arg3
}

function Transfer(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    transferCount++
    transfer.length++
    if not transfer.length <= transfer.length + 1:
        idx = (6 * transfer.length) + 6
        while 6 * transfer.length > idx:
            transfer[idx].field_0 = 0
            transfer[idx].field_256 = 0
            transfer[idx].field_512 = 0
            transfer[idx].field_768 = 0
            transfer[idx].field_1024 = 0
            transfer[idx].field_1280 = 0
            idx = idx + 6
            continue 
    transfer[transfer.length].field_0 = arg1
    transfer[transfer.length].field_256 = arg2
    transfer[transfer.length].field_512 = arg3
    transfer[transfer.length].field_768 = arg4
    transfer[transfer.length].field_1024 = arg5
    transfer[transfer.length].field_1280 = arg6
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2 + 1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require stor6[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    transferCount++
    transfer.length++
    if not transfer.length <= transfer.length + 1:
        idx = (6 * transfer.length) + 6
        while 6 * transfer.length > idx:
            transfer[idx].field_0 = 0
            transfer[idx].field_256 = 0
            transfer[idx].field_512 = 0
            transfer[idx].field_768 = 0
            transfer[idx].field_1024 = 0
            transfer[idx].field_1280 = 0
            idx = idx + 6
            continue 
    transfer[transfer.length].field_0 = msg.sender
    transfer[transfer.length].field_256 = arg1
    transfer[transfer.length].field_512 = balanceOf[address(msg.sender)]
    transfer[transfer.length].field_768 = balanceOf[address(arg1)]
    transfer[transfer.length].field_1024 = arg2
    transfer[transfer.length].field_1280 = block.timestamp
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3 + 1
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor6[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    transferCount++
    transfer.length++
    if not transfer.length <= transfer.length + 1:
        idx = (6 * transfer.length) + 6
        while 6 * transfer.length > idx:
            transfer[idx].field_0 = 0
            transfer[idx].field_256 = 0
            transfer[idx].field_512 = 0
            transfer[idx].field_768 = 0
            transfer[idx].field_1024 = 0
            transfer[idx].field_1280 = 0
            idx = idx + 6
            continue 
    transfer[transfer.length].field_0 = arg1
    transfer[transfer.length].field_256 = arg2
    transfer[transfer.length].field_512 = balanceOf[address(arg1)]
    transfer[transfer.length].field_768 = balanceOf[address(arg2)]
    transfer[transfer.length].field_1024 = arg3
    transfer[transfer.length].field_1280 = block.timestamp
    return 1
}



}
