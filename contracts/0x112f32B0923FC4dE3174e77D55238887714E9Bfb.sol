contract main {




// =====================  Runtime code  =====================


address ownerAddr;
array of address stor1;
array of uint256 stor2;

function ownerAddr() {
    return ownerAddr
}

function kill() {
    if ownerAddr != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_6d0771c3(?) {
    require msg.sender == ownerAddr
    if stor1.length > 0:
        idx = 0
        while idx < stor1.length:
            require idx < stor2.length
            mem[0] = 2
            if stor2[idx] <= eth.balance(this.address):
                require idx < stor1.length
                require idx < stor2.length
                mem[0] = 2
                call stor1[idx] with:
                   value stor2[idx] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}

function sub_777518dc(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == ownerAddr
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor1[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2.length = arg2.length
    if not arg2.length:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
}



}
