contract main {


// =======================  Init code  ======================


address sub_b1d131bfAddress;
array of uint256 sub_19e30bc7;

function sub_19e30bc7(?) {
    return sub_19e30bc7[0 len sub_19e30bc7.length]
}

function sub_b1d131bf(?) {
    return sub_b1d131bfAddress
}

function AddToDB(address arg1) payable {
    call sub_b1d131bfAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    sub_19e30bc7.length = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        sub_19e30bc7[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while sub_19e30bc7.length + 31 / 32 > idx:
        sub_19e30bc7[idx] = 0
        idx = idx + 1
        continue 
}

function sub_5bd74afe(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require sub_b1d131bfAddress == msg.sender
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value arg3 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
}



// =====================  Runtime code  =====================




}
