contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 5 * 10^12
    return code.data[69 len 1515]
}



// =====================  Runtime code  =====================


const SHNZ = 0x8b0c9f462c239c963d8760105cbc935c63d85680


address owner;
uint256 rate;

function rate() {
    return rate
}

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function issueTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    if arg2:
        require arg2
        require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
    require ext_code.size(0x8b0c9f462c239c963d8760105cbc935c63d85680)
    call 0x8b0c9f462c239c963d8760105cbc935c63d85680.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), 100 * 10^6 * arg2
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(0x8b0c9f462c239c963d8760105cbc935c63d85680)
    call 0x8b0c9f462c239c963d8760105cbc935c63d85680.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(0x8b0c9f462c239c963d8760105cbc935c63d85680)
    call 0x8b0c9f462c239c963d8760105cbc935c63d85680.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return 1
}

function airDrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg1.length
            if arg2:
                require arg2
                require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = 100 * 10^6 * arg2
            require ext_code.size(0x8b0c9f462c239c963d8760105cbc935c63d85680)
            call 0x8b0c9f462c239c963d8760105cbc935c63d85680.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 132], 100 * 10^6 * arg2
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}



}
