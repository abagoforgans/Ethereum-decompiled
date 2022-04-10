contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xb2ddb8f765ce14d85c216d2c2f209069cc055683
    require not msg.value
    stor0 = msg.sender
    return code.data[180 len 2707]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of struct transactions;

function owner() {
    return owner
}

function transactions(uint256 arg1) {
    return transactions[arg1].field_0, transactions[arg1].field_256, transactions[arg1].field_512
}

function token() {
    return tokenAddress
}

function _fallback() {
    revert
}

function setup(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function sub_3912673b(?) {
    require msg.sender == owner
    transactions[arg3].field_0 = arg1
    transactions[arg3].field_256 = arg2
    transactions[arg3].field_512 = 1
}

function sub_d6a28277(?) {
    require msg.sender == owner
    require arg1
    require arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_88767b42(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        transactions[idx + arg3].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        transactions[idx + arg3].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = idx + arg3
        mem[32] = 2
        transactions[idx + arg3].field_512 = 1
        idx = idx + 1
        continue 
}

function send(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    idx = arg1
    while idx < arg2:
        mem[0] = idx
        mem[32] = 2
        if transactions[idx].field_512 > 0:
            mem[0] = idx
            mem[32] = 2
            if transactions[idx].field_512 != arg3:
                mem[0] = idx
                mem[32] = 2
                mem[100] = transactions[idx].field_0
                mem[132] = transactions[idx].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args transactions[idx].field_0, transactions[idx].field_256
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    mem[0] = idx
                    mem[32] = 2
                    transactions[idx].field_512 = arg3
        idx = idx + 1
        continue 
}



}
