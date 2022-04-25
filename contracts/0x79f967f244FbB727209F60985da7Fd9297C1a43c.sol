contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor1 = stor0
    require not msg.value
    return code.data[212 len 1210]
}



// =====================  Runtime code  =====================


const getKitties = mem[mem[64] len s - mem[64]]


address stor1;
array of uint256 kitty;

function sub_a25905a9(?) {
    return kitty.length
}

function getKitty(uint256 arg1) {
    require arg1 < kitty.length
    return kitty[arg1]
}

function _fallback() payable {
    revert
}

function sub_6f549dbf(?) {
    require ext_code.size(stor1)
    call stor1.isPregnant(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_8a1df27c(?) {
    kitty.length++
    if not kitty.length <= kitty.length + 1:
        idx = kitty.length + 1
        while kitty.length > idx:
            kitty[idx] = 0
            idx = idx + 1
            continue 
    kitty[kitty.length] = arg1
    return (kitty.length + 1)
}

function sub_38707b12(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    s = 128
    idx = 0
    while idx < arg1.length:
        _13 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13 len 64] = call.data[(64 * idx) + arg1 + 36 len 64]
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    idx = 1
    while idx <= mem[96]:
        require idx < mem[96]
        if mem[mem[(32 * idx) + 128] + 32] >= block.number:
            require idx < mem[96]
            _30 = mem[mem[(32 * idx) + 128]]
            kitty.length++
            if not kitty.length <= kitty.length + 1:
                s = sha3(2) + kitty.length + 1
                while sha3(2) + kitty.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 2
            kitty[kitty.length] = _30
        idx = idx + 1
        continue 
}



}
