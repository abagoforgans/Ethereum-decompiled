contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1401 len 32]
    return code.data[69 len 1332]
}



// =====================  Runtime code  =====================


address owner;
address configAddress;
mapping of struct tipLockCheck;
mapping of uint256 userId;

function tipLockCheck(bytes32 arg1) payable {
    return tipLockCheck[arg1].field_432
}

function userCheck(bytes32 arg1) payable {
    return tipLockCheck[arg1].field_416
}

function getUserId(address arg1) payable {
    return userId[address(arg1)]
}

function accountLockCheck(bytes32 arg1) payable {
    return tipLockCheck[arg1].field_424
}

function getUserAccount(bytes32 arg1) payable {
    return tipLockCheck[arg1].field_256
}

function getOwner() payable {
    return owner
}

function getConfig() payable {
    return configAddress
}

function _fallback() payable {
  stop
}

function userAddressCheck(bytes32 arg1) payable {
    return tipLockCheck[arg1].field_256 != 0
}

function getBotContract() payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function unlockTip(bytes32 arg1) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        tipLockCheck[arg1].field_432 = 0
}

function unlockAccount(bytes32 arg1) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        tipLockCheck[arg1].field_424 = 0
}

function lockTip(bytes32 arg1) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if 1 == tipLockCheck[arg1].field_256 != 0:
            tipLockCheck[arg1].field_432 = 1
}

function lockAccount(bytes32 arg1) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if 1 == tipLockCheck[arg1].field_256 != 0:
            tipLockCheck[arg1].field_424 = 1
}

function addUser(bytes32 arg1) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        tipLockCheck[arg1].field_0 = arg1
        tipLockCheck[arg1].field_416 = 1
        tipLockCheck[arg1].field_424 = 0
        tipLockCheck[arg1].field_440 = 0
        tipLockCheck[arg1].field_512 = 0
        emit EventLog(0, arg1);
}

function setUserAccount(bytes32 arg1, address arg2) payable {
    call configAddress.getBotContract() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        if 0 == tipLockCheck[arg1].field_424:
            tipLockCheck[arg1].field_256 = arg2 or Mask(96, 160, tipLockCheck[arg1].field_256)
            userId[address(arg2)] = arg1
            emit EventLog(1, arg1);
}



}
