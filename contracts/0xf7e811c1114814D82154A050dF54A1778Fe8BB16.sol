contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 5 * 10^6
    require not msg.value
    stor0 = code.data[1004 len 20]
    stor3 = msg.sender
    return code.data[112 len 880]
}



// =====================  Runtime code  =====================


address sharesTokenAddress;
uint256 numBuyers;
mapping of struct buyers;
address stor3;
uint256 stor4;

function sharesTokenAddress() {
    return sharesTokenAddress
}

function numBuyers() {
    return numBuyers
}

function buyers(uint256 arg1) {
    return buyers[arg1].field_0, buyers[arg1].field_256
}

function _fallback() payable {
    revert
}

function multiSend(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor3 == msg.sender
    s = stor4
    idx = 0
    while idx < arg1.length:
        if idx >= mem[(32 * arg1.length) + 128]:
            require idx < mem[96]
            _31 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_31)
            mem[mem[64] + 36] = s
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(_31), s
            require ext_call.success
            require idx < mem[96]
            _40 = mem[(32 * idx) + 128]
            numBuyers++
            _41 = mem[64]
            mem[64] = mem[64] + 64
            mem[_41] = mem[(32 * idx) + 140 len 20]
            mem[_41 + 32] = s
            mem[0] = numBuyers + 1
            mem[32] = 2
            buyers[stor1 + 1].field_0 = address(_40)
            buyers[stor1 + 1].field_256 = s
            s = s
            idx = idx + 1
            continue 
        require idx < mem[(32 * arg1.length) + 128]
        _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_37)
        mem[mem[64] + 36] = _34
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_37), _34
        require ext_call.success
        require idx < mem[96]
        _46 = mem[(32 * idx) + 128]
        numBuyers++
        _47 = mem[64]
        mem[64] = mem[64] + 64
        mem[_47] = mem[(32 * idx) + 140 len 20]
        mem[_47 + 32] = _34
        mem[0] = numBuyers + 1
        mem[32] = 2
        buyers[stor1 + 1].field_0 = address(_46)
        buyers[stor1 + 1].field_256 = _34
        s = _34
        idx = idx + 1
        continue 
}



}
