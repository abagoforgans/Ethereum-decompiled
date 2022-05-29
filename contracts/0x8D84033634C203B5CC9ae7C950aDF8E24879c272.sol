contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function getBalance() {
    require msg.sender == stor0
    return eth.balance(this.address)
}

function sub_31cf716d(?) {
    mem[608 len 256] = code.data[1290 len 256]
    mem[864 len 256] = code.data[1290 len 256]
    idx = 0
    while idx < 8:
        mem[(32 * idx) + 608] = -stor1[idx] + 6
        mem[(32 * idx) + 864] = 0
        if var28003 >= stor1[idx]:
            idx = idx + 1
            continue 
        require idx < 8
        require var32004 < stor1[idx]
        mem[0] = idx + 1
        if stor[sha3(idx + 1) + var32004] != msg.sender:
            if idx < 8:
                if var32004 + 1 >= stor1[idx]:
                    idx = idx + 1
                    continue 
                if idx < 8:
                    var32004 = var32004 + 1
                    continue 
        else:
            if idx < 8:
                mem[(32 * idx) + 864] = 1
                if var32004 + 1 >= stor1[idx]:
                    idx = idx + 1
                    continue 
                if idx < 8:
                    var32004 = var32004 + 1
                    continue 
        revert
    return mem[608 len 256], mem[864 len 256]
}

function buy(uint256 arg1) payable {
    require msg.value == 64 * 10^18
    require arg1 >= 0
    require arg1 < 8
    require stor1[arg1] < 6
    require arg1 < 8
    stor1[arg1]++
    stor[sha3(arg1 + 1) + stor1[arg1]] = msg.sender
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1120 len 256] = code.data[1290 len 256]
    mem[1376 len 256] = code.data[1290 len 256]
    idx = 0
    while idx < 8:
        mem[(32 * idx) + 1120] = -stor1[idx] + 6
        mem[(32 * idx) + 1376] = 0
        if var40003 >= stor1[idx]:
            idx = idx + 1
            continue 
        require idx < 8
        require var44004 < stor1[idx]
        mem[0] = idx + 1
        if stor[sha3(idx + 1) + var44004] != msg.sender:
            if idx < 8:
                if var44004 + 1 >= stor1[idx]:
                    idx = idx + 1
                    continue 
                if idx < 8:
                    var44004 = var44004 + 1
                    continue 
        else:
            if idx < 8:
                mem[(32 * idx) + 1376] = 1
                if var44004 + 1 >= stor1[idx]:
                    idx = idx + 1
                    continue 
                if idx < 8:
                    var44004 = var44004 + 1
                    continue 
        revert
    return mem[1120 len 256], mem[1376 len 256]
}



}
