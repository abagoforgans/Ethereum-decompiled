contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[2268 len 32]
    return code.data[69 len 2199]
}



// =====================  Runtime code  =====================


address stor0;
address configAddress;

function getConfig() payable {
    return configAddress
}

function _fallback() payable {
  stop
}

function getUsersContract() payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getCoinWallet(bytes4 arg1) payable {
    call configAddress.0x15c0251c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function userCheck(bytes32 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x11dd576d with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getTotalBalance(bytes4 arg1) payable {
    call configAddress.0x15c0251c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).0xad7a672f with:
         gas gas_remaining - 25050 wei
    return ext_call.return_data[0]
}

function accountLockCheck(bytes32 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x78bcd39a with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function getUserAccount(bytes32 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x7d19ec9d with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[12 len 20]
}

function addUser(bytes32 arg1) payable {
    if msg.sender == stor0:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).0x8faf850d with:
             gas gas_remaining - 25050 wei
            args arg1
}

function lockTip(bytes32 arg1) payable {
    if msg.sender == stor0:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).0xee533a4d with:
             gas gas_remaining - 25050 wei
            args arg1
}

function tipLockCheck(bytes32 arg1) payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).tipLockCheck(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function lockAccount(bytes32 arg1) payable {
    if msg.sender == stor0:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).0x10619300 with:
             gas gas_remaining - 25050 wei
            args arg1
}

function getCoinBalance(bytes4 arg1, bytes32 arg2) payable {
    call configAddress.0x15c0251c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call address(ext_call.return_data[0]).0x8e739461 with:
         gas gas_remaining - 25050 wei
        args arg2
    return ext_call.return_data[0]
}

function withdrawCoin(bytes4 arg1, bytes32 arg2, uint256 arg3) payable {
    if msg.sender == stor0:
        call configAddress.0x15c0251c with:
             gas gas_remaining - 25050 wei
            args arg1
        require ext_call.success
        call address(ext_call.return_data[0]).0x3632b4d9 with:
             gas gas_remaining - 25050 wei
            args arg2, arg3
}

function unlockTip() payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2b956ff7 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    call address(ext_call.return_data[0]).0x3d9277f0 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
}

function unlockAccount() payable {
    call configAddress.0xd0f46c0b with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x2b956ff7 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    call address(ext_call.return_data[0]).0x129bc044 with:
         gas gas_remaining - 25050 wei
        args ext_call.return_data[0]
}

function setUserAccount(bytes32 arg1, address arg2) payable {
    if msg.sender == stor0:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).0x78bcd39a with:
             gas gas_remaining - 25050 wei
            args arg1
        if 0 == ext_call.return_data[0]:
            call configAddress.0xd0f46c0b with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(ext_call.return_data[0]).0x17d8405a with:
                 gas gas_remaining - 25050 wei
                args arg1, arg2
}

function sendCoin(bytes4 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) payable {
    if msg.sender == stor0:
        call configAddress.0xd0f46c0b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        call address(ext_call.return_data[0]).tipLockCheck(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args arg2
        if 0 == ext_call.return_data[0]:
            call configAddress.0x15c0251c with:
                 gas gas_remaining - 25050 wei
                args arg1
            require ext_call.success
            call address(ext_call.return_data[0]).0xd5b2c102 with:
                 gas gas_remaining - 25050 wei
                args arg2, arg3, arg4
}



}
