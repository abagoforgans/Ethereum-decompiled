contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    return code.data[158 len 1525]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 exFees;
uint256 stor2;
uint256 stor3;

function exFees(uint256 arg1) {
    require arg1 < 3
    return exFees[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function updateFeeSchedule(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 >= 0
    require arg1 <= 10^18
    require arg2 >= 0
    require arg2 <= 10^18
    require arg3 >= 0
    exFees.length = arg1
    stor2 = arg2
    stor3 = arg3
}

function calcTradeFee(uint256 arg1, uint256 arg2) {
    require arg2 >= 0
    require arg2 <= 2
    require arg1 > 0
    require arg2 < 3
    require exFees[arg2] > 0
    require arg2 < 3
    if arg1:
        require arg1
        require arg1 * exFees[arg2] / arg1 == exFees[arg2]
    require arg1 * exFees[arg2] / 10^18 > 0
    return (arg1 * exFees[arg2] / 10^18)
}

function calcTradeFeeMulti(uint256[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    require arg1.length > 0
    require arg2.length > 0
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] >= 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= 2
        require mem[(32 * idx) + 128] > 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] < 3
        require exFees[mem[(32 * idx) + (32 * arg1.length) + 160]] > 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] < 3
        if mem[(32 * idx) + 128]:
            require mem[(32 * idx) + 128]
            require mem[(32 * idx) + 128] * exFees[mem[(32 * idx) + (32 * arg1.length) + 160]] / mem[(32 * idx) + 128] == exFees[mem[(32 * idx) + (32 * arg1.length) + 160]]
        require mem[(32 * idx) + 128] * exFees[mem[(32 * idx) + (32 * arg1.length) + 160]] / 10^18 > 0
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 256] = mem[(32 * idx) + 128] * exFees[mem[(32 * idx) + (32 * arg1.length) + 160]] / 10^18
        idx = idx + 1
        continue 
    require arg1.length > 0
    require arg1.length == arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 256
       len (161 * arg1.length) + 64
}



}
