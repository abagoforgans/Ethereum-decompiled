contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 0x46d99c89ae7529ddbac80bea2e8ae017471fc630
    stor3 = 2
    require code.data[2562 len 32] < block.timestamp + (876000 * 24 * 3600)
    stor0 = code.data[2606 len 20]
    stor1 = code.data[2562 len 32]
    emit CapsuleCreated(code.data[2562 len 32], code.data[2606 len 20]);
    return code.data[346 len 2216]
}



// =====================  Runtime code  =====================


address recipientAddress;
uint256 excavation;
address companyAddress;
uint256 percent;

function excavation() {
    return excavation
}

function recipient() {
    return recipientAddress
}

function company() {
    return companyAddress
}

function percent() {
    return percent
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}

function withdraw(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == recipientAddress
    require block.timestamp > excavation
    if eth.balance(this.address) <= 0:
        s = 0
        t = 0
        u = 0
        u = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _66 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = this.address
            require ext_code.size(address(_66))
            call address(_66).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                s = s
                t = t
                u = ext_call.return_data[0]
                u = _66
                idx = idx + 1
                continue 
            require percent
            require 100 / percent
            require ext_code.size(address(_66))
            call address(_66).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args companyAddress, ext_call.return_data[0] / 100 / percent
            require ext_call.success
            require ext_code.size(address(_66))
            call address(_66).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            mem[(32 * arg1.length) + 132] = recipientAddress
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_66))
            call address(_66).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args recipientAddress, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 160] = ext_call.return_data[0]
            emit TokenWithdrawal(mem[(32 * arg1.length) + 128], ext_call.return_data[0]);
            s = ext_call.return_data[0]
            t = ext_call.return_data[0] / 100 / percent
            u = ext_call.return_data[0]
            u = _66
            idx = idx + 1
            continue 
    else:
        require percent
        require 100 / percent
        call companyAddress with:
           value eth.balance(this.address) / 100 / percent wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        mem[(32 * arg1.length) + 128] = eth.balance(this.address)
        emit EtherWithdrawal(eth.balance(this.address));
        s = 0
        t = 0
        u = 0
        u = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _70 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = this.address
            require ext_code.size(address(_70))
            call address(_70).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] <= 0:
                s = s
                t = t
                u = ext_call.return_data[0]
                u = _70
                idx = idx + 1
                continue 
            require percent
            require 100 / percent
            require ext_code.size(address(_70))
            call address(_70).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args companyAddress, ext_call.return_data[0] / 100 / percent
            require ext_call.success
            require ext_code.size(address(_70))
            call address(_70).0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            mem[(32 * arg1.length) + 132] = recipientAddress
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_70))
            call address(_70).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args recipientAddress, ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 160] = ext_call.return_data[0]
            emit TokenWithdrawal(mem[(32 * arg1.length) + 128], ext_call.return_data[0]);
            s = ext_call.return_data[0]
            t = ext_call.return_data[0] / 100 / percent
            u = ext_call.return_data[0]
            u = _70
            idx = idx + 1
            continue 
}



}
