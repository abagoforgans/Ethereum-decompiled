contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0x420c42ce1370c0ec3ca87d9be64a7002e78e6709
    stor1 = msg.sender
    stor2 = 0
    return code.data[193 len 2038]
}



// =====================  Runtime code  =====================


address _STCnContractAddress;
address _multiSendOwner;
uint256 tokensApproved;

function tokensApproved() {
    return tokensApproved
}

function _STCnContract() {
    return _STCnContractAddress
}

function _multiSendOwner() {
    return _multiSendOwner
}

function _fallback() payable {
    revert
}

function updateTokensApproved() {
    require ext_code.size(_STCnContractAddress)
    call _STCnContractAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args _multiSendOwner, this.address
    require ext_call.success
    tokensApproved = ext_call.return_data[0]
}

function dropCoinsSingle(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == _multiSendOwner
    require tokensApproved >= arg1.length * arg2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = _multiSendOwner
        mem[(32 * arg1.length) + 164] = address(_21)
        mem[(32 * arg1.length) + 196] = arg2
        require ext_code.size(_STCnContractAddress)
        call _STCnContractAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args _multiSendOwner, address(_21), arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    require ext_code.size(_STCnContractAddress)
    call _STCnContractAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args _multiSendOwner, this.address
    require ext_call.success
    tokensApproved = ext_call.return_data[0]
}

function dropCoinsMulti(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == _multiSendOwner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _25 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = _multiSendOwner
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_23)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _25
        require ext_code.size(_STCnContractAddress)
        call _STCnContractAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args _multiSendOwner, address(_23), _25
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    require ext_code.size(_STCnContractAddress)
    call _STCnContractAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args _multiSendOwner, this.address
    require ext_call.success
    tokensApproved = ext_call.return_data[0]
}



}
