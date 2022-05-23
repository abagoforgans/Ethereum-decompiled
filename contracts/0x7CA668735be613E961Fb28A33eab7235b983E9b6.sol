contract main {




// =====================  Runtime code  =====================


address creatorAddress;
address owner;

function creator() {
    return creatorAddress
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_820a6ca0(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + 128 len 12] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = mem[(32 * idx) + 140 len 20]
        s = mem[(32 * idx) + 128 len 12]
        idx = idx + 1
        continue 
}



}
