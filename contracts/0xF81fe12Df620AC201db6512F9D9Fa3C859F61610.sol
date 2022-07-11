contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;

function sub_a6391d34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 20
    return stor[arg1]
}

function _fallback() payable {
    revert
}

function sub_95fc3120(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        s = 0
        while s < 20:
            if gas_remaining < 21000:
                idx = idx + 1
                continue 
            mem[mem[64] + 32] = idx
            mem[mem[64] + 64] = s
            mem[mem[64] + 96] = stor0
            idx = mem[64] + 96
            t = 0
            while mem[64] + 736 > idx + 32:
                mem[idx + 32] = stor1[t]
                idx = idx + 32
                t = t + 1
                continue 
            _7 = mem[64]
            mem[mem[64]] = 704
            mem[64] = mem[64] + 736
            require s < 20
            stor[s] = sha3(mem[_7 + 32 len mem[_7]])
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}



}
