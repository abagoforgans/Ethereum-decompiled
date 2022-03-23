contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 647]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;

function withdraw() payable {
    stor0[address(msg.sender)] = 0
    call msg.sender with:
       value stor0[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
}

function _fallback() payable {
    stor0[address(msg.sender)] = 0
    call msg.sender with:
       value stor0[address(msg.sender)] wei
         gas 0 wei
    require ext_call.success
}

function send(address[] arg1, uint256[] arg2, uint256 arg3) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    require arg3 == stor1[address(msg.sender)]
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < arg2.length
        require s >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * idx) + 160] wei
             gas 0 wei
        require idx < arg2.length
        if not ext_call.success:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            stor0[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
        continue 
    call msg.sender with:
       value s wei
         gas 0 wei
    if not ext_call.success:
        stor0[address(msg.sender)] += s
    stor1[address(msg.sender)]++
}



}
