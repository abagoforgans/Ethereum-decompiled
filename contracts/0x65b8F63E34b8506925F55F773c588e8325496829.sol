contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2466]




// =====================  Runtime code  =====================


mapping of struct accountInfo;

function accountInfo(address arg1) {
    return accountInfo[address(arg1)].field_0, accountInfo[address(arg1)].field_256, accountInfo[address(arg1)].field_512
}

function sub_1452d022(?) {
    accountInfo[address(msg.sender)].field_512 = arg1
}

function _fallback() payable {
    accountInfo[address(msg.sender)].field_0 += msg.value
    emit Deposit(msg.sender, msg.value);
}

function setExpiryTime(uint256 arg1) {
    require arg1 >= accountInfo[address(msg.sender)].field_256
    require arg1 <= block.timestamp + (43800 * 24 * 3600)
    accountInfo[address(msg.sender)].field_256 = arg1
}

function withdraw() {
    require accountInfo[address(msg.sender)].field_256 <= block.timestamp
    accountInfo[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value accountInfo[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    accountInfo[address(msg.sender)].field_256 = 0
    emit Withdraw(msg.sender, accountInfo[address(msg.sender)].field_0);
}

function sub_2fd3161e(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 != msg.sender
    require accountInfo[address(arg1)].field_256
    require block.timestamp >= accountInfo[address(arg1)].field_256 + (4380 * 3600)
    require accountInfo[address(arg1)].field_512
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    require sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) == accountInfo[address(arg1)].field_512
    accountInfo[address(msg.sender)].field_0 += accountInfo[address(arg1)].field_0
    accountInfo[address(arg1)].field_0 = 0
    emit 0xf6891c84: address(arg1), msg.sender, accountInfo[address(arg1)].field_0
}



}
